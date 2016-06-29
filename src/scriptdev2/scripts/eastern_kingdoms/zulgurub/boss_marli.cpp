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
SDName: Boss_Marli
SD%Complete: 100
SDComment:
SDCategory: 祖尔格拉布
EndScriptData */

#include "precompiled.h"
#include "zulgurub.h"

enum
{
    SAY_AGGRO                   = -1309005,
    SAY_TRANSFORM               = -1309006,
    SAY_TRANSFORM_BACK          = -1309025,
    SAY_SPIDER_SPAWN            = -1309007,
    SAY_DEATH                   = -1309008,

    // 蜘蛛形态 技能
    SPELL_CHARGE                = 22911,                    // 冲锋
    SPELL_ENVELOPING_WEBS       = 24110,                    // 包围之网
    SPELL_CORROSIVE_POISON      = 24111,                    // 腐蚀毒药
    SPELL_POISON_SHOCK          = 24112,                    // 毒性震荡

    // 巨魔形态 技能
    SPELL_SPIDER_EGG            = 24082,                    // 孵化蜘蛛卵
    SPELL_POISON_VOLLEY         = 24099,                    // 毒液箭雨
    SPELL_ENLARGE               = 24109,                    // 放大
    SPELL_DRAIN_LIFE            = 24300,                    // 吸取生命

    // 普通 技能
    SPELL_TRASH                 = 8876,                     // 痛击
    SPELL_SPIDER_FORM           = 24084,                    // 玛尔里的变形术
    SPELL_TRANSFORM_BACK        = 24085                     // 玛尔里的变形术-取消
};

struct boss_marliAI : public ScriptedAI
{
    boss_marliAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiChargeTimer;
    uint32 m_uiWebsTimer;
    uint32 m_uiCorrosivePoisonTimer;
    uint32 m_uiPoisonShockTimer;
    uint32 m_uiSpawnSpiderTimer;
    uint32 m_uiPoisonVolleyTimer;
    uint32 m_uiDrainLifeTimer;
    uint32 m_uiTransformTimer;

    bool m_bIsInPhaseTwo;

    void Reset() override
    {
        m_uiWebsTimer               = 10000;
        m_uiCorrosivePoisonTimer    = 5000;
        m_uiPoisonShockTimer        = 8000;
        m_uiSpawnSpiderTimer        = 15000;
        m_uiPoisonVolleyTimer       = 10000;
        m_uiDrainLifeTimer          = 20000;
        m_uiTransformTimer          = 60000;

        m_bIsInPhaseTwo             = false;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        DoScriptText(SAY_AGGRO, m_creature);

        DoCastSpellIfCan(m_creature, SPELL_SPIDER_EGG);
        DoCastSpellIfCan(m_creature, SPELL_TRASH, CAST_TRIGGERED | CAST_AURA_NOT_PRESENT);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DoScriptText(SAY_DEATH, m_creature);

        if (m_pInstance)
            { m_pInstance->SetData(TYPE_MARLI, DONE); }
    }

    void JustReachedHome() override
    {
        if (m_pInstance)
            { m_pInstance->SetData(TYPE_MARLI, FAIL); }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        // 巨魔形态
        if (!m_bIsInPhaseTwo)
        {
            // 孵化蜘蛛卵
            if (m_uiSpawnSpiderTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_SPIDER_EGG) == CAST_OK)
                {
                    DoScriptText(SAY_SPIDER_SPAWN, m_creature);
                    m_uiSpawnSpiderTimer = 30000;
                }

            }
            else
                { m_uiSpawnSpiderTimer -= uiDiff; }

            // 毒液箭雨
            if (m_uiPoisonVolleyTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_POISON_VOLLEY) == CAST_OK)
                    { m_uiPoisonVolleyTimer = urand(10000, 20000); }
            }
            else
                { m_uiPoisonVolleyTimer -= uiDiff; }

            // 吸取生命
            if (m_uiDrainLifeTimer < uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_DRAIN_LIFE) == CAST_OK)
                        { m_uiDrainLifeTimer = urand(20000, 30000); }
                }
            }
            else
                { m_uiDrainLifeTimer -= uiDiff; }
        }
        // 蜘蛛形态
        else
        {
            // 冲锋
            if (m_uiChargeTimer)
            {
                if (m_uiChargeTimer < uiDiff)
                {
                    if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_CHARGE, SELECT_FLAG_NOT_IN_MELEE_RANGE))
                    {
                        if (DoCastSpellIfCan(pTarget, SPELL_CHARGE) == CAST_OK)
                            { m_uiChargeTimer = 0; }
                    }
                }
                else
                    { m_uiChargeTimer -= uiDiff; }
            }

            // 包围之网
            if (m_uiWebsTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_ENVELOPING_WEBS) == CAST_OK)
                {
                    DoResetThreat();
                    m_uiWebsTimer = urand(15000, 20000);
                    m_uiChargeTimer = 1000;
                }
            }
            else
                m_uiWebsTimer -= uiDiff;

            // 腐蚀毒药
            if (m_uiCorrosivePoisonTimer < uiDiff)
            {
                if (Unit* pTarget = m_creature->getVictim())
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_CORROSIVE_POISON) == CAST_OK)
                        { m_uiCorrosivePoisonTimer = urand(25000, 30000); }
                }
            }
            else
                { m_uiCorrosivePoisonTimer -= uiDiff; }

            // 毒性震荡
            if (m_uiPoisonShockTimer < uiDiff)
            {
                if (Unit* pTarget = m_creature->getVictim())
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_POISON_SHOCK) == CAST_OK)
                        { m_uiPoisonShockTimer = 8000; }
                }
            }
            else
                { m_uiPoisonShockTimer -= uiDiff; }
        }

        // 转换形态
        if (m_uiTransformTimer < uiDiff)
        {
            if (!m_bIsInPhaseTwo)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_SPIDER_FORM) == CAST_OK)
                {
                    DoScriptText(SAY_TRANSFORM, m_creature);
                    DoResetThreat();
                    m_uiTransformTimer = 60000;
                    m_uiWebsTimer = 5000;
                    m_bIsInPhaseTwo = true;
                }
            }
            else
            {
                if (DoCastSpellIfCan(m_creature, SPELL_TRANSFORM_BACK) == CAST_OK)
                {
                    DoScriptText(SAY_TRANSFORM_BACK, m_creature);
                    m_creature->RemoveAurasDueToSpell(SPELL_SPIDER_FORM);
                    m_bIsInPhaseTwo = false;
                    m_uiTransformTimer = 60000;
                }
            }
        }
        else
            m_uiTransformTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_marli(Creature* pCreature)
{
    return new boss_marliAI(pCreature);
}

void AddSC_boss_marli()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "boss_marli";
    pNewScript->GetAI = &GetAI_boss_marli;
    pNewScript->RegisterSelf();
}
