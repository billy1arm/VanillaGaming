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
SDName: Npc_Flamewaker_Elite
SD%Complete: 100
SDComment:
SDCategory: 熔火之心
EndScriptData */

#include "precompiled.h"
#include "molten_core.h"

enum
{
    SPELL_BLAST_WAVE            = 20229,                    // 冲击波
    SPELL_FIRE_BALL             = 20420,                    // 火球术
    SPELL_FIRE_BLAST            = 20623                     // 火焰冲击
};

struct npc_flamewaker_eliteAI : public ScriptedAI
{
    npc_flamewaker_eliteAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiBlastWaveTimer;
    uint32 m_uiFireBlastTimer;
    uint32 m_uiFireBallTimer;
    uint32 m_uiMoveCheckTimer;

    void Reset() override
    {
        m_uiBlastWaveTimer          = urand(11000, 14000);
        m_uiFireBlastTimer          = urand(9000, 11000);
        m_uiFireBallTimer           = 1000;
        m_uiMoveCheckTimer          = 2000;

        SetCombatMovement(false);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        // 冲击波
        if (m_uiBlastWaveTimer < uiDiff)
        {
            if (Unit* pUnit = m_creature->SelectAttackingTarget(ATTACKING_TARGET_TOPAGGRO, 0, uint32(0), SELECT_FLAG_IN_MELEE_RANGE))
            {
                if (DoCastSpellIfCan(pUnit, SPELL_BLAST_WAVE) == CAST_OK)
                    { m_uiBlastWaveTimer = urand(11000, 14000); }
            }
        }
        else
            { m_uiBlastWaveTimer -= uiDiff; }

        // 火焰冲击
        if (m_uiFireBlastTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (m_creature->IsWithinDistInMap(pTarget, 20.0f))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_FIRE_BLAST) == CAST_OK)
                        { m_uiFireBlastTimer = urand(9000, 12000); }
                }
            }
        }
        else
            { m_uiFireBlastTimer -= uiDiff; }

        // 火球术
        if (m_uiFireBallTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (m_creature->IsWithinDistInMap(pTarget, 35.0f) && m_creature->GetPower(POWER_MANA) * 100 / m_creature->GetMaxPower(POWER_MANA) > 1.0f)
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_FIRE_BALL) == CAST_OK)
                        { m_uiFireBallTimer = urand(3000, 4000); }
                }
            }
        }
        else
            { m_uiFireBallTimer -= uiDiff; }\

        // 移动检测
        if (m_uiMoveCheckTimer < uiDiff)
        {
            Unit* pVictim = m_creature->getVictim();
            if (m_creature->GetPower(POWER_MANA) * 100 / m_creature->GetMaxPower(POWER_MANA) < 7.0f || !(m_creature->IsWithinDistInMap(pVictim, 20.0f)))
            {
                m_creature->GetMotionMaster()->MoveChase(pVictim);
                m_uiMoveCheckTimer = 2000;
            }
            if (m_creature->GetPower(POWER_MANA) * 100 / m_creature->GetMaxPower(POWER_MANA) > 15.0f && (m_creature->IsWithinDistInMap(pVictim, 20.0f)))
            {
                SetCombatMovement(false);
                m_creature->GetMotionMaster()->MoveIdle();
                m_uiMoveCheckTimer = 2000;
            }
        }
        else
            { m_uiMoveCheckTimer -= uiDiff; }

        // 主人同时进入战斗
        if (Creature* pMajordomo = m_pInstance->GetSingleCreatureFromStorage(NPC_MAJORDOMO))
        {
            if (!pMajordomo->isInCombat())
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                    { pMajordomo->AttackedBy(pTarget); }
            }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_flamewaker_elite(Creature* pCreature)
{
    return new npc_flamewaker_eliteAI(pCreature);
}

void AddSC_npc_flamewaker_elite()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "npc_flamewaker_elite";
    pNewScript->GetAI = &GetAI_npc_flamewaker_elite;
    pNewScript->RegisterSelf();
}
