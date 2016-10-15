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
SDName: Npc_Flamewaker_Protector
SD%Complete: 100
SDComment:
SDCategory: 熔火之心
EndScriptData */

#include "precompiled.h"
#include "molten_core.h"

enum
{
    SPELL_DOMINATE_MIND         = 20604,                    // 统御意志
    SPELL_CLEAVE                = 20605,                    // 顺劈斩
};

struct npc_flamewaker_protectorAI : public ScriptedAI
{
    npc_flamewaker_protectorAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiDominateMindTimer;
    uint32 m_uiCleaveTimer;

    void Reset() override
    {
        m_uiDominateMindTimer       = urand(9000, 12000);
        m_uiCleaveTimer             = urand(6000, 9000);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
        {
            // 主人进入战斗自己也进入战斗
            if (Creature* pLucifron = m_pInstance->GetSingleCreatureFromStorage(NPC_LUCIFRON))
            {
                if (pLucifron->isInCombat())
                {
                    if (Unit* pTarget = pLucifron->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                    {
                        if (pTarget->GetTypeId() == TYPEID_PLAYER)
                            { m_creature->AttackedBy(pTarget); }
                    }
                }
            }
            return;
        }

        // 统御意志
        if (m_uiDominateMindTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 1))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_DOMINATE_MIND) == CAST_OK)
                    { m_uiDominateMindTimer = urand(5000, 9000); }
            }
        }
        else
            { m_uiDominateMindTimer -= uiDiff; }

        // 顺劈斩
        if (m_uiCleaveTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_CLEAVE) == CAST_OK)
                { m_uiCleaveTimer = urand(6000, 9000); }
        }
        else
            { m_uiCleaveTimer -= uiDiff; }

        // 自己进入战斗主人也进入战斗
        if (Creature* pLucifron = m_pInstance->GetSingleCreatureFromStorage(NPC_LUCIFRON))
        {
            if (pLucifron->isAlive() && !pLucifron->isInCombat())
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                {
                    if (pTarget->GetTypeId() == TYPEID_PLAYER)
                        { pLucifron->AttackedBy(pTarget); }
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_flamewaker_protector(Creature* pCreature)
{
    return new npc_flamewaker_protectorAI(pCreature);
}

void AddSC_npc_flamewaker_protector()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "npc_flamewaker_protector";
    pNewScript->GetAI = &GetAI_npc_flamewaker_protector;
    pNewScript->RegisterSelf();
}
