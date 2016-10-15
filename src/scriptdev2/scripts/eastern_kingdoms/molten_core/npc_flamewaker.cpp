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
SDName: Npc_Flamewaker
SD%Complete: 100
SDComment:
SDCategory: 熔火之心
EndScriptData */

#include "precompiled.h"
#include "molten_core.h"

enum
{
    SPELL_SUNDER_ARMOR          = 15502,                    // 破甲攻击
    SPELL_STRIKE                = 19730,                    // 打击
    SPELL_FIST_OF_RAGNAROS      = 20277                     // 拉格纳罗斯之拳
};

struct npc_flamewakerAI : public ScriptedAI
{
    npc_flamewakerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiSunderArmorTimer;
    uint32 m_uiStrikeTimer;
    uint32 m_uiFistOfRagnarosTimer;

    void Reset() override
    {
        m_uiSunderArmorTimer        = urand(5000, 9000);
        m_uiStrikeTimer             = urand(5000, 8000);
        m_uiFistOfRagnarosTimer     = urand(9000, 12000);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
        {
            // 主人进入战斗自己也进入战斗
            if (Creature* pGehennas = m_pInstance->GetSingleCreatureFromStorage(NPC_GEHENNAS))
            {
                if (pGehennas->isInCombat())
                {
                    if (Unit* pTarget = pGehennas->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                    {
                        if (pTarget->GetTypeId() == TYPEID_PLAYER)
                            { m_creature->AttackedBy(pTarget); }
                    }
                }
            }
            return;
        }

        // 破甲攻击
        if (m_uiSunderArmorTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_SUNDER_ARMOR) == CAST_OK)
                { m_uiSunderArmorTimer = urand(5000, 9000); }
        }
        else
            { m_uiSunderArmorTimer -= uiDiff; }

        // 打击
        if (m_uiStrikeTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_STRIKE) == CAST_OK)
                { m_uiStrikeTimer = urand(7000, 9000); }
        }
        else
            { m_uiStrikeTimer -= uiDiff; }

        // 拉格纳罗斯之拳
        if (m_uiFistOfRagnarosTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_FIST_OF_RAGNAROS) == CAST_OK)
                { m_uiFistOfRagnarosTimer = urand(9000, 12000); }
        }
        else
            { m_uiFistOfRagnarosTimer -= uiDiff; }

        // 自己进入战斗主人也进入战斗
        if (Creature* pGehennas = m_pInstance->GetSingleCreatureFromStorage(NPC_GEHENNAS))
        {
            if (pGehennas->isAlive() && !pGehennas->isInCombat())
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                {
                    if (pTarget->GetTypeId() == TYPEID_PLAYER)
                        { pGehennas->AttackedBy(pTarget); }
                }
            }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_npc_flamewaker(Creature* pCreature)
{
    return new npc_flamewakerAI(pCreature);
}

void AddSC_npc_flamewaker()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "npc_flamewaker";
    pNewScript->GetAI = &GetAI_npc_flamewaker;
    pNewScript->RegisterSelf();
}
