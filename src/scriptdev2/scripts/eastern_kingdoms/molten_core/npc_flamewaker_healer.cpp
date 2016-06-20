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
SDName: Npc_Flamewaker_Healer
SD%Complete: 100
SDComment:
SDCategory: 熔火之心
EndScriptData */

#include "precompiled.h"
#include "molten_core.h"

enum
{
    SPELL_SHADOW_SHOCK          = 20603,                    // 暗影震击
    SPELL_SHADOW_BOLT           = 21077                     // 暗影箭
};

struct npc_flamewaker_healerAI : public ScriptedAI
{
    npc_flamewaker_healerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiShadowShockTimer;
    uint32 m_uiShadowBoltTimer;
    uint32 m_uiMoveCheckTimer;

    void Reset() override
    {
        m_uiShadowShockTimer        = urand(9000, 14000);
        m_uiShadowBoltTimer         = 1000;
        m_uiMoveCheckTimer          = 2000;

        SetCombatMovement(false);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        // 暗影震击
        if (m_uiShadowShockTimer < uiDiff)
        {
            if (Unit* pVictim = m_creature->getVictim())
            {
                if (m_creature->IsWithinDistInMap(pVictim, 20.0f))
                {
                    if (DoCastSpellIfCan(pVictim, SPELL_SHADOW_SHOCK) == CAST_OK)
                        { m_uiShadowShockTimer = urand(8000, 12000); }
                }
            }
        }
        else
            { m_uiShadowShockTimer -= uiDiff; }

        // 暗影箭
        if (m_uiShadowBoltTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (m_creature->IsWithinDistInMap(pTarget, 40.0f) && m_creature->GetPower(POWER_MANA) * 100 / m_creature->GetMaxPower(POWER_MANA) > 1.0f)
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_SHADOW_BOLT) == CAST_OK)
                        { m_uiShadowBoltTimer = 4000; }
                }
            }
        }
        else
            { m_uiShadowBoltTimer -= uiDiff; }

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

CreatureAI* GetAI_npc_flamewaker_healer(Creature* pCreature)
{
    return new npc_flamewaker_healerAI(pCreature);
}

void AddSC_npc_flamewaker_healer()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "npc_flamewaker_healer";
    pNewScript->GetAI = &GetAI_npc_flamewaker_healer;
    pNewScript->RegisterSelf();
}
