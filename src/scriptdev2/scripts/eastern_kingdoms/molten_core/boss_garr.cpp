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
SDName: Boss_Garr
SD%Complete: 100
SDComment:
SDCategory: 熔火之心
EndScriptData */

#include "precompiled.h"
#include "molten_core.h"

enum
{
    // 加尔
    SPELL_ANTIMAGICPULSE        = 19492,                    // 反魔法脉冲
    SPELL_MAGMASHACKLES         = 19496,                    // 熔岩镣铐
    SPELL_ENRAGE                = 19516,                    // 狂怒

    // 火誓者
    NPC_FIREWORN                = 12099,                    // 火誓者
    SPELL_IMMOLATE              = 12742,                    // 献祭
    SPELL_ERUPTION              = 19497,                    // 爆发
    SPELL_MASSIVE_ERUPTION      = 20483,                    // 剧烈爆发
    SPELL_SEPARATION_ANXIETY    = 23492                     // 分隔热望
};

struct boss_garrAI : public ScriptedAI
{
    boss_garrAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiAntiMagicPulseTimer;
    uint32 m_uiMagmaShacklesTimer;
    uint32 m_uiSummonTimer;
    uint32 m_uiEruptionTimer;

    bool   m_bEnraged;

    void Reset() override
    {
        m_uiAntiMagicPulseTimer     = 25000;
        m_uiMagmaShacklesTimer      = 15000;
        m_uiSummonTimer             = 3000;
        m_uiEruptionTimer           = 5000;

        m_bEnraged                  = false;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_GARR, IN_PROGRESS);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_GARR, DONE);
    }

    void JustReachedHome() override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_GARR, FAIL);
    }

    void JustSummoned(Creature* pSummoned) override
    {
        if (pSummoned->GetEntry() == NPC_FIREWORN)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                { pSummoned->AI()->AttackStart(pTarget); }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        // 反魔法脉冲
        if (m_uiAntiMagicPulseTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_ANTIMAGICPULSE) == CAST_OK)
                m_uiAntiMagicPulseTimer = urand(10000, 15000);
        }
        else
            m_uiAntiMagicPulseTimer -= uiDiff;

        // 熔岩镣铐
        if (m_uiMagmaShacklesTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_MAGMASHACKLES) == CAST_OK)
                m_uiMagmaShacklesTimer = urand(8000, 12000);
        }
        else
            m_uiMagmaShacklesTimer -= uiDiff;

        // 狂暴
        if (m_bEnraged)
        {
            if (m_uiSummonTimer < uiDiff)
            {
                m_creature->SummonCreature(NPC_FIREWORN, m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), 0.0f, TEMPSUMMON_TIMED_OOC_OR_DEAD_DESPAWN, 10000);
                m_uiSummonTimer = 5000;
            }
            else
                { m_uiSummonTimer -= uiDiff; }

            if (m_uiEruptionTimer < uiDiff)
            {
                Creature* pTarget = NULL;
                std::list<Creature*> pList = DoFindFriendlyMissingBuff(40.0f, SPELL_ENRAGE);
                if (!pList.empty())
                {
                    std::list<Creature*>::iterator i = pList.begin();
                    advance(i, (rand() % pList.size()));
                    pTarget = (*i);
                }
                if (pTarget && pTarget->isAlive())
                    { pTarget->CastSpell(pTarget, SPELL_ERUPTION, true); }
                m_uiEruptionTimer = 5000;
            }
            else
                { m_uiEruptionTimer -= uiDiff; }
        }
        else
        {
            if (Aura* aura = m_creature->GetAura(SPELL_ENRAGE, SpellEffectIndex(0)))
            {
                if (aura->GetStackAmount() > 7)
                    { m_bEnraged = true; }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct mob_fireswornAI : public ScriptedAI
{
    mob_fireswornAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiImmolateTimer;
    uint32 m_uiSeparationCheckTimer;

    void Reset() override
    {
        m_uiImmolateTimer           = urand(4000, 8000);
        m_uiSeparationCheckTimer    = 5000;
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (m_pInstance)
        {
            // 狂怒
            if (Creature* pGarr = m_pInstance->GetSingleCreatureFromStorage(NPC_GARR))
                pGarr->CastSpell(pGarr, SPELL_ENRAGE, true, NULL, NULL, m_creature->GetObjectGuid());
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
        {
            // 主人进入战斗自己也进入战斗
            if (Creature* pGarr = m_pInstance->GetSingleCreatureFromStorage(NPC_GARR))
            {
                if (pGarr->isInCombat())
                {
                    if (Unit* pTarget = pGarr->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                    {
                        if (pTarget->GetTypeId() == TYPEID_PLAYER)
                            { m_creature->AttackedBy(pTarget); }
                    }
                }
            }
            return;
        }

        // 献祭
        if (m_uiImmolateTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_IMMOLATE) == CAST_OK)
                    m_uiImmolateTimer = urand(5000, 10000);
            }
        }
        else
            { m_uiImmolateTimer -= uiDiff; }

        // 分隔热望
        if (m_uiSeparationCheckTimer < uiDiff)
        {
            if (!m_pInstance)
                return;

            Creature* pGarr = m_pInstance->GetSingleCreatureFromStorage(NPC_GARR);
            if (pGarr && pGarr->isAlive() && !m_creature->IsWithinDist2d(pGarr->GetPositionX(), pGarr->GetPositionY(), 50.0f))
                DoCastSpellIfCan(m_creature, SPELL_SEPARATION_ANXIETY, CAST_TRIGGERED);

            m_uiSeparationCheckTimer = 5000;
        }
        else
            m_uiSeparationCheckTimer -= uiDiff;

        // 剧烈爆发
        if (m_creature->GetHealthPercent() <= 10.0f)
            { DoCastSpellIfCan(m_creature->getVictim(), SPELL_MASSIVE_ERUPTION); }

        // 自己进入战斗主人也进入战斗
        if (Creature* pGarr = m_pInstance->GetSingleCreatureFromStorage(NPC_GARR))
        {
            if (pGarr->isAlive() && !pGarr->isInCombat())
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                {
                    if (pTarget->GetTypeId() == TYPEID_PLAYER)
                        { pGarr->AttackedBy(pTarget); }
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_garr(Creature* pCreature)
{
    return new boss_garrAI(pCreature);
}

CreatureAI* GetAI_mob_firesworn(Creature* pCreature)
{
    return new mob_fireswornAI(pCreature);
}

void AddSC_boss_garr()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "boss_garr";
    pNewScript->GetAI = &GetAI_boss_garr;
    pNewScript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "mob_firesworn";
    pNewScript->GetAI = &GetAI_mob_firesworn;
    pNewScript->RegisterSelf();
}
