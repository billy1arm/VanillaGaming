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
SDName: Boss_Baroness_Anastari
SD%Complete: 100
SDComment:
SDCategory: 斯坦索姆
EndScriptData */

#include "precompiled.h"

enum
{
    SPELL_BANSHEE_WAIL          = 16565,                    // 女妖哀嚎
    SPELL_BANSHEE_CURSE         = 16867,                    // 女妖诅咒
    SPELL_SILENCE               = 18327,                    // 沉默
    SPELL_POSSESS               = 17244,                    // 占据
    SPELL_POSSESSED             = 17246,                    // 被占据
    SPELL_POSSESS_INV           = 17250                     // 占据
};

struct boss_baroness_anastariAI : public ScriptedAI
{
    boss_baroness_anastariAI(Creature* pCreature) : ScriptedAI(pCreature) { Reset(); }

    uint32 m_uiBansheeWailTimer;
    uint32 m_uiBansheeCurseTimer;
    uint32 m_uiSilenceTimer;
    uint32 m_uiPossessTimer;
    uint32 m_uiPossessEndTimer;

    ObjectGuid m_possessedPlayer;

    void Reset() override
    {
        m_uiBansheeWailTimer        = 0;
        m_uiBansheeCurseTimer       = 10000;
        m_uiSilenceTimer            = 25000;
        m_uiPossessTimer            = 15000;
        m_uiPossessEndTimer         = 0;

        m_creature->SetVisibility(VISIBILITY_ON);
    }

    void EnterEvadeMode() override
    {
        // 隐身期间不脱站
        if (m_uiPossessEndTimer)
            return;

        if (m_creature->GetVisibility() == VISIBILITY_OFF)
            { m_creature->SetVisibility(VISIBILITY_ON); }

        ScriptedAI::EnterEvadeMode();
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (m_uiPossessEndTimer)
        {
            if (m_uiPossessEndTimer <= uiDiff)
            {
                // 被占据玩家死亡时返回正常战斗
                Player* pPlayer = m_creature->GetMap()->GetPlayer(m_possessedPlayer);
                if (!pPlayer || !pPlayer->isAlive())
                {
                    m_creature->SetVisibility(VISIBILITY_ON);
                    m_uiPossessEndTimer = 0;
                    return;
                }

                // 被占据玩家血量小于50%返回正常战斗
                if (pPlayer->GetHealth() <= pPlayer->GetMaxHealth() * .5f)
                {
                    m_creature->SetVisibility(VISIBILITY_ON);
                    pPlayer->RemoveAurasDueToSpell(SPELL_POSSESSED);
                    pPlayer->RemoveAurasDueToSpell(SPELL_POSSESS);
                    m_uiPossessEndTimer = 0;
                    return;
                }

                m_uiPossessEndTimer = 1000;
            }
            else
                m_uiPossessEndTimer -= uiDiff;
        }

        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        // 隐身期间无AI
        if (m_creature->GetVisibility() == VISIBILITY_OFF)
            { return; }

        // 女妖哀嚎
        if (m_uiBansheeWailTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_BANSHEE_WAIL) == CAST_OK)
                    m_uiBansheeWailTimer = urand(2000, 3000);
            }
        }
        else
            m_uiBansheeWailTimer -= uiDiff;

        // 女妖诅咒
        if (m_uiBansheeCurseTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_BANSHEE_CURSE) == CAST_OK)
                m_uiBansheeCurseTimer = 20000;
        }
        else
            m_uiBansheeCurseTimer -= uiDiff;

        // 沉默
        if (m_uiSilenceTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_SILENCE) == CAST_OK)
                    m_uiSilenceTimer = 25000;
            }
        }
        else
            m_uiSilenceTimer -= uiDiff;

        // 占据
        if (m_uiPossessTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 1, SPELL_POSSESS, SELECT_FLAG_PLAYER))
            {
                m_creature->CastSpell(pTarget, SPELL_POSSESS, true);
                m_creature->CastSpell(pTarget, SPELL_POSSESSED, true);
                m_creature->SetVisibility(VISIBILITY_OFF);

                m_possessedPlayer = pTarget->GetObjectGuid();
                m_uiPossessEndTimer = 1000;
                m_uiPossessTimer = 30000;
            }
        }
        else
            m_uiPossessTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_baroness_anastari(Creature* pCreature)
{
    return new boss_baroness_anastariAI(pCreature);
}

void AddSC_boss_baroness_anastari()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "boss_baroness_anastari";
    pNewScript->GetAI = &GetAI_boss_baroness_anastari;
    pNewScript->RegisterSelf();
}
