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
SDName: Boss_Ragnaros
SD%Complete: 100
SDComment:
SDCategory: 熔火之心
EndScriptData */

#include "precompiled.h"
#include "molten_core.h"

/* There have been quite some bugs about his spells, keep this as reference untill all finished
 * Missing features (based on wowwiki)
 *   Lava Burst - this spell is handled by Go 178088 which is summoned by spells 21886, 21900 - 21907
 */

enum
{
    SAY_ARRIVAL5_RAG            = -1409012,
    SAY_REINFORCEMENTS_1        = -1409013,
    SAY_REINFORCEMENTS_2        = -1409014,
    SAY_HAMMER                  = -1409015,
    SAY_WRATH                   = -1409016,
    SAY_KILL                    = -1409017,
    SAY_MAGMABURST              = -1409018,

    SPELL_ELEMENTAL_FIRE_KILL   = 19773,                    // 元素火焰
    SPELL_ELEMENTAL_FIRE        = 20564,                    // 元素火焰
    SPELL_MAGMA_BLAST           = 20565,                    // 熔岩冲击
    SPELL_WRATH_OF_RAGNAROS     = 20566,                    // 拉格纳罗斯之怒
    SPELL_RAGNA_EMERGE          = 20568,                    // 拉格纳罗斯显现
    SPELL_RAGNA_SUBMERGE        = 21107,                    // 拉格纳罗斯消失
    SPELL_MIGHT_OF_RAGNAROS     = 21154,                    // 拉格纳罗斯之力
    SPELL_INTENSE_HEAT          = 21155,                    // 烈焰
    SPELL_LAVA_BURST            = 21158,                    // 熔岩喷溅
    SPELL_LAVA_SHIELD           = 21857,                    // 熔岩之盾
    SPELL_MELT_WEAPON           = 21387,                    // 熔化武器

    MAX_ADDS_IN_SUBMERGE        = 8,
    NPC_SON_OF_FLAME            = 12143,                    // 烈焰之子
    NPC_FLAME_OF_RAGNAROS       = 13148                     // 拉格纳罗斯之焰
};

struct boss_ragnarosAI : public Scripted_NoMovementAI
{
    boss_ragnarosAI(Creature* pCreature) : Scripted_NoMovementAI(pCreature)
    {
        m_pInstance = (instance_molten_core*)pCreature->GetInstanceData();
        m_uiEnterCombatTimer = 0;
        m_bHasAggroYelled = false;
        Reset();
    }

    instance_molten_core* m_pInstance;

    uint32 m_uiEnterCombatTimer;
    uint32 m_uiWrathOfRagnarosTimer;
    uint32 m_uiHammerTimer;
    uint32 m_uiMagmaBlastTimer;
    uint32 m_uiElementalFireTimer;
    uint32 m_uiSubmergeTimer;
    uint32 m_uiAttackTimer;
    uint32 m_uiLavaBurstTimer;
    uint32 m_uiAddCount;

    bool m_bHasAggroYelled;
    bool m_bHasYelledMagmaBurst;
    bool m_bHasSubmergedOnce;
    bool m_bIsSubmerged;

    void Reset() override
    {
        m_uiWrathOfRagnarosTimer    = 30000;
        m_uiHammerTimer             = 11000;
        m_uiMagmaBlastTimer         = 2000;
        m_uiElementalFireTimer      = 3000;
        m_uiSubmergeTimer           = 180000;
        m_uiAttackTimer             = 90000;
        m_uiLavaBurstTimer          = urand(20000, 40000);
        m_uiAddCount                = 0;

        m_bHasYelledMagmaBurst      = false;
        m_bHasSubmergedOnce         = false;
        m_bIsSubmerged              = false;
    }

    void KilledUnit(Unit* pVictim) override
    {
        if (pVictim->GetTypeId() != TYPEID_PLAYER)
            return;

        if (urand(0, 3))
            return;

        DoScriptText(SAY_KILL, m_creature);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_RAGNAROS, DONE);
    }

    void Aggro(Unit* pWho) override
    {
        if (pWho->GetTypeId() == TYPEID_UNIT && pWho->GetEntry() == NPC_MAJORDOMO)
            return;

        DoCastSpellIfCan(m_creature, SPELL_MELT_WEAPON);

        if (m_pInstance)
            m_pInstance->SetData(TYPE_RAGNAROS, IN_PROGRESS);
    }

    void EnterEvadeMode() override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_RAGNAROS, FAIL);

        if (m_creature->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE))
            m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

        ScriptedAI::EnterEvadeMode();
    }

    void SummonedCreatureJustDied(Creature* pSummmoned) override
    {
        if (pSummmoned->GetEntry() == NPC_SON_OF_FLAME)
        {
            m_uiAddCount--;

            if (m_uiAddCount == 0)
                m_uiAttackTimer = std::min(m_uiAttackTimer, (uint32)1000);
        }
    }

    void JustSummoned(Creature* pSummoned) override
    {
        if (pSummoned->GetEntry() == NPC_SON_OF_FLAME)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                pSummoned->AI()->AttackStart(pTarget);
                pSummoned->CastSpell(pSummoned, SPELL_LAVA_SHIELD, true);
            }

            ++m_uiAddCount;
        }
        else if (pSummoned->GetEntry() == NPC_FLAME_OF_RAGNAROS)
        {
            pSummoned->SetVisibility(VISIBILITY_OFF);
            pSummoned->CastSpell(pSummoned, SPELL_INTENSE_HEAT, true, NULL, NULL, m_creature->GetObjectGuid());
            pSummoned->DealDamage(pSummoned, pSummoned->GetHealth(), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NONE, NULL, false);
        }
    }

    void SpellHitTarget(Unit* pTarget, const SpellEntry* pSpell) override
    {
        if (pSpell->Id == SPELL_ELEMENTAL_FIRE_KILL && pTarget->GetTypeId() == TYPEID_UNIT && pTarget->GetEntry() == NPC_MAJORDOMO)
            m_uiEnterCombatTimer = 10000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (m_uiEnterCombatTimer)
        {
            if (m_uiEnterCombatTimer <=  uiDiff)
            {
                if (!m_bHasAggroYelled)
                {
                    m_uiEnterCombatTimer = 3000;
                    m_bHasAggroYelled = true;
                    DoScriptText(SAY_ARRIVAL5_RAG, m_creature);
                }
                else
                {
                    m_uiEnterCombatTimer = 0;
                    m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PASSIVE);
                    if (m_pInstance)
                    {
                        if (Player* pPlayer = m_pInstance->GetPlayerInMap(true, false))
                        {
                            m_creature->AI()->AttackStart(pPlayer);
                            return;
                        }
                    }
                }
            }
            else
                m_uiEnterCombatTimer -= uiDiff;
        }

        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        // 熔岩喷溅
        if (m_uiLavaBurstTimer < uiDiff)
        {
            m_creature->CastSpell(m_creature, SPELL_LAVA_BURST, true);
            m_uiLavaBurstTimer = urand(20000, 40000);
        }
        else
            { m_uiLavaBurstTimer -= uiDiff; }

        if (m_bIsSubmerged)
        {
            // 拉格纳罗斯显现
            if (m_uiAttackTimer < uiDiff)
            {
                if (m_creature->GetVisibility() != VISIBILITY_ON)
                    { m_creature->SetVisibility(VISIBILITY_ON); }

                DoCastSpellIfCan(m_creature, SPELL_RAGNA_EMERGE);
                m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                m_uiSubmergeTimer = 90000;
                m_uiMagmaBlastTimer = 3000;
                m_bIsSubmerged = false;
            }
            else
                m_uiAttackTimer -= uiDiff;

            // 隐形时不做任何动作
            return;
        }

        // 拉格纳罗斯之怒
        if (m_uiWrathOfRagnarosTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_WRATH_OF_RAGNAROS) == CAST_OK)
            {
                DoScriptText(SAY_WRATH, m_creature);
                m_uiWrathOfRagnarosTimer = 30000;
            }
        }
        else
            m_uiWrathOfRagnarosTimer -= uiDiff;

        // 元素火焰
        if (m_uiElementalFireTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_ELEMENTAL_FIRE) == CAST_OK)
                m_uiElementalFireTimer = urand(10000, 14000);
        }
        else
            m_uiElementalFireTimer -= uiDiff;

        // 拉格纳罗斯之力
        if (m_uiHammerTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_MIGHT_OF_RAGNAROS, SELECT_FLAG_POWER_MANA))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_MIGHT_OF_RAGNAROS) == CAST_OK)
                {
                    DoScriptText(SAY_HAMMER, m_creature);
                    m_uiHammerTimer = urand(20000, 30000);
                }
            }
            else
                m_uiHammerTimer = 1000;
        }
        else
            m_uiHammerTimer -= uiDiff;

        // 拉格纳罗斯消失
        if (m_uiSubmergeTimer < uiDiff)
        {
            DoCastSpellIfCan(m_creature, SPELL_RAGNA_SUBMERGE, CAST_INTERRUPT_PREVIOUS);
            m_creature->HandleEmote(EMOTE_ONESHOT_SUBMERGE);
            m_bIsSubmerged = true;
            m_uiAttackTimer = 90000;

            m_creature->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);

            DoScriptText(!m_bHasSubmergedOnce ? SAY_REINFORCEMENTS_1 : SAY_REINFORCEMENTS_2, m_creature);
            m_bHasSubmergedOnce = true;

            // 召唤8个烈焰之子
            float fX, fY, fZ;
            for (uint8 i = 0; i < MAX_ADDS_IN_SUBMERGE; ++i)
            {
                m_creature->GetRandomPoint(m_creature->GetPositionX(), m_creature->GetPositionY(), m_creature->GetPositionZ(), 30.0f, fX, fY, fZ);
                m_creature->SummonCreature(NPC_SON_OF_FLAME, fX, fY, fZ + 3.0f, 0.0f, TEMPSUMMON_TIMED_OOC_DESPAWN, 6000);
            }

            return;
        }
        else
            m_uiSubmergeTimer -= uiDiff;

        if (m_creature->IsNonMeleeSpellCasted(false) || !m_creature->getVictim())
            return;

        if (m_creature->CanReachWithMeleeAttack(m_creature->getVictim()))
        {
            if (m_creature->isAttackReady())
            {
                m_creature->AttackerStateUpdate(m_creature->getVictim());
                m_creature->resetAttackTimer();
                m_bHasYelledMagmaBurst = false;
            }
        }
        else
        {
            // 熔岩冲击
            if (m_uiMagmaBlastTimer < uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_MAGMA_BLAST) == CAST_OK)
                    {
                        if (!m_bHasYelledMagmaBurst)
                        {
                            DoScriptText(SAY_MAGMABURST, m_creature);
                            m_bHasYelledMagmaBurst = true;
                        }
                        m_uiMagmaBlastTimer = 1000;
                    }
                }
            }
            else
                m_uiMagmaBlastTimer -= uiDiff;
        }
    }
};

CreatureAI* GetAI_boss_ragnaros(Creature* pCreature)
{
    return new boss_ragnarosAI(pCreature);
}

void AddSC_boss_ragnaros()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "boss_ragnaros";
    pNewScript->GetAI = &GetAI_boss_ragnaros;
    pNewScript->RegisterSelf();
}
