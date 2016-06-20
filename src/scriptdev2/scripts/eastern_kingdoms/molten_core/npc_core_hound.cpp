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
SDName: Npc_Core_Hound
SD%Complete: 100
SDComment:
SDCategory: 熔火之心
EndScriptData */

#include "precompiled.h"
#include "molten_core.h"

enum
{
    SPELL_SERRATED_BITE         = 19771,                    // 尖牙撕咬

    PHASE_NORMAL                = 1,
    PHASE_FAKE_DEATH            = 2,

    NPC_CORE_HOUND              = 11671                     // 熔火恶犬
};

struct npc_core_houndAI : public ScriptedAI
{
    npc_core_houndAI(Creature* pCreature) : ScriptedAI(pCreature) { Reset(); }

    uint8 m_uiPhase;
    uint32 m_uiSerratedBiteTimer;
    uint32 m_uiReviveTimer;
    uint32 m_uiKillTimer;

    void Reset() override
    {
        m_creature->SetStandState(UNIT_STAND_STATE_STAND);

        m_uiPhase                   = PHASE_NORMAL;
        m_uiSerratedBiteTimer       = urand(5000, 9000);
    }

    void Aggro(Unit* /*pWho*/) override	{}

    void DamageTaken(Unit* /*pKiller*/, uint32& uiDamage) override
    {
        if (uiDamage < m_creature->GetHealth())
            { return; }

        if (m_uiPhase == PHASE_FAKE_DEATH)
        {
            uiDamage = 0;
            return;
        }
        uiDamage = 0;
        m_creature->InterruptNonMeleeSpells(true);
        m_creature->SetHealth(1);
        m_creature->StopMoving();
        m_creature->ClearComboPointHolders();
        m_creature->ModifyAuraState(AURA_STATE_HEALTHLESS_20_PERCENT, false);
        m_creature->GetMotionMaster()->MoveIdle();
        m_creature->SetStandState(UNIT_STAND_STATE_DEAD);
        m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        m_uiPhase = PHASE_FAKE_DEATH;
        m_uiReviveTimer = 10000;
        m_uiKillTimer = 12000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        switch (m_uiPhase)
        {
            case PHASE_NORMAL:
            {
                if (m_uiSerratedBiteTimer < uiDiff)
                {
                    if (Unit* pTarget = m_creature->getVictim())
                    {
                        m_creature->CastSpell(pTarget, SPELL_SERRATED_BITE, true);
                        m_uiSerratedBiteTimer = urand(5000, 9000);
                    }
                }
                else
                    { m_uiSerratedBiteTimer -= uiDiff; }

                DoMeleeAttackIfReady();
                break;
            }
            case PHASE_FAKE_DEATH:
            {
                if (m_creature->GetHealthPercent() > 1.0f)
                {
                    m_creature->SetStandState(UNIT_STAND_STATE_STAND);
                    m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    if (m_creature->getVictim())
                        { m_creature->GetMotionMaster()->MoveChase(m_creature->getVictim()); }
                    DoResetThreat();
                    m_uiPhase = PHASE_NORMAL;
                    return;
                }

                if (m_uiReviveTimer < uiDiff)
                {
                    Creature* pTarget = NULL;
                    std::list<Creature*> pList = DoFindFriendlyMissingBuff(100.0f, SPELL_SERRATED_BITE);
                    if (!pList.empty())
                    {
                        for (std::list<Creature*>::iterator i = pList.begin(); i != pList.end(); ++i)
                        {
                            pTarget = (*i);
                            if (pTarget && pTarget->isInCombat() && (pTarget->GetHealth()>1) && pTarget->GetEntry() == NPC_CORE_HOUND)
                            {
                                m_creature->SetHealth(m_creature->GetMaxHealth());
                                return;
                            }
                        }
                    }
                }
                else
                    { m_uiReviveTimer -= uiDiff; }

                if (m_uiKillTimer < uiDiff)
                {
                    m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    m_creature->DealDamage(m_creature, m_creature->GetHealth(), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, NULL, false);
                    m_uiKillTimer = 0;
                }
                else
                    { m_uiKillTimer -= uiDiff; }
                break;
            }
        }
    }
};

CreatureAI* GetAI_npc_core_hound(Creature* pCreature)
{
    return new npc_core_houndAI(pCreature);
}

void AddSC_npc_core_hound()
{
    Script* pNewScript;
    pNewScript = new Script;
    pNewScript->Name = "npc_core_hound";
    pNewScript->GetAI = &GetAI_npc_core_hound;
    pNewScript->RegisterSelf();
}
