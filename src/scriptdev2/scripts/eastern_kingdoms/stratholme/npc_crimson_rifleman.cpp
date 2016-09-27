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
SDName: Npc_Crimson_Rifleman
SD%Complete: 100
SDComment:
SDCategory: 斯坦索姆
EndScriptData */

#include "precompiled.h"

enum
{
    SPELL_SHOOT                 = 17353,                    // 射击
};

struct npc_crimson_riflemanAI : public ScriptedAI
{
    npc_crimson_riflemanAI(Creature* pCreature) : ScriptedAI(pCreature) { Reset(); }

    uint32 m_uiShootTimer;
    uint32 m_uiMoveCheckTimer;

    void Reset() override
    {
        m_uiShootTimer              = 1000;
        m_uiMoveCheckTimer          = 2000;

        SetCombatMovement(false);
    }

    void EnterEvadeMode() override
    {
        m_creature->RemoveFromWorld();
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        // 射击
        if (m_uiShootTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_SHOOT, CAST_TRIGGERED) == CAST_OK)
                    { m_uiShootTimer = urand(3000, 4000); }
            }
        }
        else
            { m_uiShootTimer -= uiDiff; }

        // 移动检测
        if (m_uiMoveCheckTimer < uiDiff)
        {
            Unit* pVictim = m_creature->getVictim();
            if (m_creature->GetPower(POWER_MANA) * 100 / m_creature->GetMaxPower(POWER_MANA) < 7.0f || !(m_creature->IsWithinDistInMap(pVictim, 100.0f)))
            {
                m_creature->GetMotionMaster()->MoveChase(pVictim);
                m_uiMoveCheckTimer = 2000;
            }
            if (m_creature->GetPower(POWER_MANA) * 100 / m_creature->GetMaxPower(POWER_MANA) > 15.0f && (m_creature->IsWithinDistInMap(pVictim, 100.0f)))
            {
                SetCombatMovement(false);
                m_creature->GetMotionMaster()->MoveIdle();
                m_uiMoveCheckTimer = 2000;
            }
        }
        else
            { m_uiMoveCheckTimer -= uiDiff; }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_crimson_rifleman(Creature* pCreature)
{
    return new npc_crimson_riflemanAI(pCreature);
}

void AddSC_npc_crimson_rifleman()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "npc_crimson_rifleman";
    pNewScript->GetAI = &GetAI_npc_crimson_rifleman;
    pNewScript->RegisterSelf();
}
