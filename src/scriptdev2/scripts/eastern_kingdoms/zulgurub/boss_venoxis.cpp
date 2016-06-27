/* This file is part of the ScriptDev2 Project. See AUTHORS file for Copyright information
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/* ScriptData
SDName: Boss_Venoxis
SD%Complete: 100
SDComment:
SDCategory: 祖尔格拉布
EndScriptData */

#include "precompiled.h"
#include "zulgurub.h"

enum
{
    SAY_TRANSFORM               = -1309000,
    SAY_DEATH                   = -1309001,

    // 巨魔形态 技能
    SPELL_HOLY_NOVA             = 23858,                    // 神圣新星
    SPELL_DISPELL               = 23859,                    // 驱散魔法
    SPELL_HOLY_FIRE             = 23860,                    // 神圣之火
    SPELL_RENEW                 = 23895,                    // 恢复
    SPELL_HOLY_WRATH            = 23979,                    // 神圣怒火

    // 毒蛇形态 技能
    SPELL_POISON_CLOUD          = 23861,                    // 毒云
    SPELL_VENOMSPIT             = 23862,                    // 毒液喷吐
    SPELL_PARASITIC_SERPENT     = 23867,                    // 寄生蛇

    // 普通 技能
    SPELL_FRENZY                = 8269,                     // 暴怒
    SPELL_TRASH                 = 8876,                     // 痛击
    SPELL_SNAKE_FORM            = 23849                     // 温诺希斯变形
};

struct boss_venoxisAI : public ScriptedAI
{
    boss_venoxisAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiHolySpellTimer;
    uint32 m_uiDispellTimer;
    uint32 m_uiRenewTimer;
    uint32 m_uiHolyWrathTimer;
    uint32 m_uiPoisonCloudTimer;
    uint32 m_uiVenomSpitTimer;

    bool m_bPhaseTwo;
    bool m_bInBerserk;

    void Reset() override
    {
        m_uiHolySpellTimer          = 5000;
        m_uiDispellTimer            = 10000;
        m_uiRenewTimer              = 15000;
        m_uiHolyWrathTimer          = 20000;
        m_uiPoisonCloudTimer        = 2000;
        m_uiVenomSpitTimer          = 5500;

        m_bPhaseTwo                 = false;
        m_bInBerserk                = false;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        DoCastSpellIfCan(m_creature, SPELL_TRASH, CAST_TRIGGERED | CAST_AURA_NOT_PRESENT);
    }

    void JustReachedHome() override
    {
        if (m_pInstance)
            { m_pInstance->SetData(TYPE_VENOXIS, FAIL); }
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        // 死亡触发毒云
        m_creature->CastSpell(m_creature, SPELL_POISON_CLOUD, true);
        DoScriptText(SAY_DEATH, m_creature);

        if (m_pInstance)
            { m_pInstance->SetData(TYPE_VENOXIS, DONE); }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        // 巨魔形态
        if (!m_bPhaseTwo)
        {
            // 50%进入毒蛇形态
            if (m_creature->GetHealthPercent() < 50.0f)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_SNAKE_FORM, CAST_INTERRUPT_PREVIOUS) == CAST_OK)
                {
                    DoCastSpellIfCan(m_creature, SPELL_PARASITIC_SERPENT, CAST_TRIGGERED);
                    DoScriptText(SAY_TRANSFORM, m_creature);
                    DoResetThreat();
                    m_bPhaseTwo = true;
                }
            }

            // 神圣
            if (m_uiHolySpellTimer < uiDiff)
            {
                uint8 uiTargetsInRange = 0;

                // 判断近战范围玩家数量
                ThreatList const& tList = m_creature->getThreatManager().getThreatList();
                for (ThreatList::const_iterator iter = tList.begin(); iter != tList.end(); ++iter)
                {
                    if (Unit* pTempTarget = m_creature->GetMap()->GetUnit((*iter)->getUnitGuid()))
                    {
                        if (pTempTarget->GetTypeId() == TYPEID_PLAYER && m_creature->CanReachWithMeleeAttack(pTempTarget))
                            { ++uiTargetsInRange; }
                    }
                }

                // 神圣新星
                if (uiTargetsInRange > 3)
                    { DoCastSpellIfCan(m_creature, SPELL_HOLY_NOVA); }
                // 神圣之火
                else
                {
                    if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                        { DoCastSpellIfCan(pTarget, SPELL_HOLY_FIRE); }
                }

                m_uiHolySpellTimer = urand(4000, 8000);
            }
            else
                { m_uiHolySpellTimer -= uiDiff; }

            // 驱散魔法
            if (m_uiDispellTimer < uiDiff)
            {
                Creature* pTarget = NULL;
                std::list<Creature*> pList = DoFindFriendlyMissingBuff(45.0f, SPELL_DISPELL);
                if (!pList.empty())
                {
                    std::list<Creature*>::iterator i = pList.begin();
                    advance(i, (rand() % pList.size()));
                    pTarget = (*i);
                }

                if (!pTarget)
                    { pTarget = m_creature; }

                if (DoCastSpellIfCan(pTarget, SPELL_DISPELL) == CAST_OK)
                    { m_uiDispellTimer = urand(15000, 30000); }
            }
            else
                { m_uiDispellTimer -= uiDiff; }

            // 恢复
            if (m_uiRenewTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_RENEW) == CAST_OK)
                    { m_uiRenewTimer = urand(20000, 30000); }
            }
            else
                { m_uiRenewTimer -= uiDiff; }

            // 神圣怒火
            if (m_uiHolyWrathTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_HOLY_WRATH) == CAST_OK)
                    { m_uiHolyWrathTimer = urand(15000, 25000); }
            }
            else
                { m_uiHolyWrathTimer -= uiDiff; }
        }
        // 毒蛇形态
        else
        {
            // 毒云
            if (m_uiPoisonCloudTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_POISON_CLOUD) == CAST_OK)
                    { m_uiPoisonCloudTimer = 15000; }
            }
            else
                { m_uiPoisonCloudTimer -= uiDiff; }

            // 毒液喷吐
            if (m_uiVenomSpitTimer < uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_VENOMSPIT) == CAST_OK)
                        { m_uiVenomSpitTimer = urand(15000, 20000); }
                }
            }
            else
                { m_uiVenomSpitTimer -= uiDiff; }
        }

        // 暴怒
        if (!m_bInBerserk && m_creature->GetHealthPercent() < 11.0f)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_FRENZY) == CAST_OK)
                { m_bInBerserk = true; }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_venoxis(Creature* pCreature)
{
    return new boss_venoxisAI(pCreature);
}

void AddSC_boss_venoxis()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "boss_venoxis";
    pNewScript->GetAI = &GetAI_boss_venoxis;
    pNewScript->RegisterSelf();
}
