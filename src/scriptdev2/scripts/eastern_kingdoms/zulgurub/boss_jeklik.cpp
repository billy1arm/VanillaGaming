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
SDName: Boss_Jeklik
SD%Complete: 100
SDComment:
SDCategory: 祖尔格拉布
EndScriptData */

#include "precompiled.h"
#include "zulgurub.h"

enum
{
    SAY_AGGRO                   = -1309002,
    SAY_RAIN_FIRE               = -1309003,
    SAY_SHRIEK                  = -1309026,
    SAY_HEAL                    = -1309027,
    SAY_DEATH                   = -1309004,

    // 蝙蝠形态 技能
    SPELL_PIERCE_ARMOR          = 12097,                    // 刺穿护甲
    SPELL_CHARGE                = 22911,                    // 冲锋
    SPELL_SONIC_BURST           = 23918,                    // 音爆
    SPELL_SWOOP                 = 23919,                    // 猛扑
    SPELL_SUMMON_FRENZIED_BATS  = 23974,                    // 召唤疯狂的觅血蝠

    // 巨魔形态 技能
    SPELL_CURSE_OF_BLOOD        = 16098,                    // 血之诅咒
    SPELL_BLOOD_LEECH           = 22644,                    // 吸血术
    SPELL_PSYHIC_SCREAM         = 22884,                    // 心灵尖啸
    SPELL_SHADOW_WORD_PAIN      = 23952,                    // 暗言术:痛
    SPELL_MIND_FLAY             = 23953,                    // 精神鞭笞
    SPELL_GREATERHEAL           = 23954,                    // 强效治疗术

    // 普通 技能
    SPELL_GREEN_CHANNELING      = 13540,                    // 绿色引导
    SPELL_BAT_FORM              = 23966,                    // 耶克里克变形

    // 觅血者前锋 技能
    SPELL_BATTLE_COMMAND        = 5115,                     // 战斗命令
    SPELL_TRASH                 = 8876,                     // 痛击
    SPELL_INFECTED_BITE         = 16128,                    // 感染撕咬
    SPELL_DEMORALIZING_SHOUT    = 23511,                    // 挫志怒吼
    SPELL_LIQUID_FIRE           = 23968,                    // 投掷燃烧瓶
    SPELL_UNSTABLE_CONCOCTION   = 24024,                    // 不稳定化合物

    // 仆从
    NPC_BAT_RIDER               = 14750,                    // 觅血者前锋
    NPC_FRENZIED_BAT            = 14965                     // 疯狂的觅血蝠
};

struct boss_jeklikAI : public ScriptedAI
{
    boss_jeklikAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiPierceArmorTimer;
    uint32 m_uiChargeTimer;
    uint32 m_uiSonicBurstTimer;
    uint32 m_uiSwoopTimer;
    uint32 m_uiSpawnBatsTimer;
    uint32 m_uiCurseOfBloodTimer;
    uint32 m_uiBloodLeechTimer;
    uint32 m_uiPsyhicScreamTimer;
    uint32 m_uiShadowWordPainTimer;
    uint32 m_uiMindFlayTimer;
    uint32 m_uiGreaterHealTimer;
    uint32 m_uiFlyingBatsTimer;

    bool m_bIsPhaseOne;

    GuidList m_lBombRiderGuidsList;

    void Reset() override
    {
        m_uiPierceArmorTimer        = 10000;
        m_uiChargeTimer             = 20000;
        m_uiSonicBurstTimer         = 8000;
        m_uiSwoopTimer              = 5000;
        m_uiSpawnBatsTimer          = 15000;
        m_uiCurseOfBloodTimer       = 10000;
        m_uiBloodLeechTimer         = 8000;
        m_uiPsyhicScreamTimer       = 15000;
        m_uiShadowWordPainTimer     = 6000;
        m_uiMindFlayTimer           = 11000;
        m_uiGreaterHealTimer        = 20000;
        m_uiFlyingBatsTimer         = 30000;

        m_bIsPhaseOne               = true;

        DoCastSpellIfCan(m_creature, SPELL_GREEN_CHANNELING);
        SetCombatMovement(false);
    }

    void Aggro(Unit* /*pWho*/) override
    {
        DoScriptText(SAY_AGGRO, m_creature);

        if (DoCastSpellIfCan(m_creature, SPELL_BAT_FORM) == CAST_OK)
        {
            m_creature->SetLevitate(true);
            m_creature->SetWalk(false);
            m_creature->GetMotionMaster()->MovePoint(1, -12281.58f, -1392.84f, 146.1f);
        }
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        DoScriptText(SAY_DEATH, m_creature);
        DoDespawnBombRiders();

        if (m_pInstance)
            { m_pInstance->SetData(TYPE_JEKLIK, DONE); }
    }

    void JustReachedHome() override
    {
        DoDespawnBombRiders();

        if (m_pInstance)
            { m_pInstance->SetData(TYPE_JEKLIK, FAIL); }
    }

    void JustSummoned(Creature* pSummoned) override
    {
        if (pSummoned->GetEntry() == NPC_FRENZIED_BAT)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                { pSummoned->AI()->AttackStart(pTarget); }
        }
        else if (pSummoned->GetEntry() == NPC_BAT_RIDER)
        {
            pSummoned->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            m_lBombRiderGuidsList.push_back(pSummoned->GetObjectGuid());
        }

        pSummoned->SetLevitate(true);
    }

    void EnterEvadeMode() override
    {
        float fX, fY, fZ, fO;
        m_creature->GetRespawnCoord(fX, fY, fZ, &fO);
        m_creature->NearTeleportTo(fX, fY, fZ, fO);

        ScriptedAI::EnterEvadeMode();
    }

    void MovementInform(uint32 uiMoveType, uint32 uiPointId) override
    {
        if (uiMoveType != POINT_MOTION_TYPE || !uiPointId)
            { return; }

        SetCombatMovement(true);
        DoStartMovement(m_creature->getVictim());
    }

    void DoDespawnBombRiders()
    {
        if (m_lBombRiderGuidsList.empty())
            { return; }

        for (GuidList::const_iterator itr = m_lBombRiderGuidsList.begin(); itr != m_lBombRiderGuidsList.end(); ++itr)
        {
            if (Creature* pRider = m_creature->GetMap()->GetCreature(*itr))
                { pRider->ForcedDespawn(); }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        // 蝙蝠形态
        if (m_bIsPhaseOne)
        {
            // 50%进入巨魔形态
            if (m_creature->GetHealthPercent() < 50.0f)
            {
                m_creature->RemoveAurasDueToSpell(SPELL_BAT_FORM);
                m_creature->SetLevitate(false);
                DoResetThreat();
                m_bIsPhaseOne = false;
                return;
            }

            // 刺穿护甲
            if (m_uiPierceArmorTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_PIERCE_ARMOR) == CAST_OK)
                    { m_uiPierceArmorTimer = 25000; }
            }
            else
                { m_uiPierceArmorTimer -= uiDiff; }

            // 冲锋
            if (m_uiChargeTimer < uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_CHARGE) == CAST_OK)
                        { m_uiChargeTimer = urand(15000, 30000); }
                }
            }
            else
                { m_uiChargeTimer -= uiDiff; }

            // 音爆
            if (m_uiSonicBurstTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_SONIC_BURST) == CAST_OK)
                    { m_uiSonicBurstTimer = urand(8000, 13000); }
            }
            else
                { m_uiSonicBurstTimer -= uiDiff; }

            // 猛扑
            if (m_uiSwoopTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_SWOOP) == CAST_OK)
                    { m_uiSwoopTimer = urand(4000, 9000); }
            }
            else
                { m_uiSwoopTimer -= uiDiff; }

            // 召唤疯狂的觅血蝠
            if (m_uiSpawnBatsTimer < uiDiff)
            {
                for (uint8 i = 0; i < 9; ++i)
                {
                    if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                        { m_creature->SummonCreature(NPC_FRENZIED_BAT, pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ() + 15.0f, 0, TEMPSUMMON_DEAD_DESPAWN, 0); }
                }
                DoScriptText(SAY_SHRIEK, m_creature);
                m_uiSpawnBatsTimer = 60000;
            }
            else
                { m_uiSpawnBatsTimer -= uiDiff; }
        }
        // 巨魔形态
        else
        {
            // 血之诅咒
            if (m_uiCurseOfBloodTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_CURSE_OF_BLOOD, CAST_TRIGGERED) == CAST_OK)
                    { m_uiCurseOfBloodTimer = 25000; }
            }
            else
                { m_uiCurseOfBloodTimer -= uiDiff; }

            // 吸血术
            if (m_uiBloodLeechTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_BLOOD_LEECH) == CAST_OK)
                    { m_uiBloodLeechTimer = urand(15000, 30000); }
            }
            else
                { m_uiBloodLeechTimer -= uiDiff; }

            // 心灵尖啸
            if (m_uiPsyhicScreamTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_PSYHIC_SCREAM) == CAST_OK)
                    { m_uiPsyhicScreamTimer = urand(25000, 35000); }
            }
            else
                { m_uiPsyhicScreamTimer -= uiDiff; }

            // 暗言术:痛
            if (m_uiShadowWordPainTimer < uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_SHADOW_WORD_PAIN) == CAST_OK)
                        { m_uiShadowWordPainTimer = urand(12000, 18000); }
                }
            }
            else
                { m_uiShadowWordPainTimer -= uiDiff; }

            // 精神鞭笞
            if (m_uiMindFlayTimer < uiDiff)
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                {
                    if (DoCastSpellIfCan(pTarget, SPELL_MIND_FLAY) == CAST_OK)
                        { m_uiMindFlayTimer = 16000; }
                }
            }
            else
                { m_uiMindFlayTimer -= uiDiff; }

            // 强效治疗术
            if (m_uiGreaterHealTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_GREATERHEAL, CAST_INTERRUPT_PREVIOUS) == CAST_OK)
                {
                    DoScriptText(SAY_HEAL, m_creature);
                    m_uiGreaterHealTimer = urand(25000, 35000);
                }
            }
            else
                { m_uiGreaterHealTimer -= uiDiff; }

            // 召唤觅血者前锋
            if (m_uiFlyingBatsTimer)
            {
                if (m_uiFlyingBatsTimer <= uiDiff)
                {
                    for (uint8 i = 0; i < 3; ++i)
                    {
                        if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                            { m_creature->SummonCreature(NPC_BAT_RIDER, pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ() + 15.0f, 0, TEMPSUMMON_DEAD_DESPAWN, 0); }
                    }
                    DoScriptText(SAY_RAIN_FIRE, m_creature);
                    m_uiFlyingBatsTimer = 0;
                }
                else
                    { m_uiFlyingBatsTimer -= uiDiff; }
            }
        }

        DoMeleeAttackIfReady();
    }
};

struct npc_gurubashi_bat_riderAI : public ScriptedAI
{
    npc_gurubashi_bat_riderAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_bIsSummon = m_creature->IsTemporarySummon();
        Reset();
    }

    bool m_bIsSummon;
    bool m_bHasDoneConcoction;

    uint32 m_uiBattleCommandTimer;
    uint32 m_uiInfectedBiteTimer;
    uint32 m_uiDemoralizingShoutTimer;

    void Reset() override
    {
        m_uiBattleCommandTimer      = 8000;
        m_uiInfectedBiteTimer       = 6500;
        m_uiDemoralizingShoutTimer  = 5000;

        m_bHasDoneConcoction        = false;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (m_bIsSummon)
            { return; }

        DoCastSpellIfCan(m_creature, SPELL_TRASH);
        m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
    }

    void AttackStart(Unit* pWho) override
    {
        if (m_bIsSummon)
            { return; }

        ScriptedAI::AttackStart(pWho);
    }

    void MoveInLineOfSight(Unit* pWho) override
    {
        if (m_bIsSummon)
        {
            if (!m_creature->HasAura(SPELL_LIQUID_FIRE))
                { DoCastSpellIfCan(m_creature, SPELL_LIQUID_FIRE); }
            return;
        }

        ScriptedAI::MoveInLineOfSight(pWho);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        // 战斗命令
        if (m_uiBattleCommandTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_BATTLE_COMMAND) == CAST_OK)
                { m_uiBattleCommandTimer = 25000; }
        }
        else
            { m_uiBattleCommandTimer -= uiDiff; }

        // 感染撕咬
        if (m_uiInfectedBiteTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_INFECTED_BITE) == CAST_OK)
                { m_uiInfectedBiteTimer = 6500; }
        }
        else
            { m_uiInfectedBiteTimer -= uiDiff; }

        // 挫志怒吼
        if (m_uiDemoralizingShoutTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_DEMORALIZING_SHOUT) == CAST_OK)
                { m_uiDemoralizingShoutTimer = 25000; }
        }
        else
            { m_uiDemoralizingShoutTimer -= uiDiff; }

        // 不稳定化合物
        if (!m_bHasDoneConcoction && m_creature->GetHealthPercent() < 50.0f)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_UNSTABLE_CONCOCTION) == CAST_OK)
                { m_bHasDoneConcoction = true; }
        }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_jeklik(Creature* pCreature)
{
    return new boss_jeklikAI(pCreature);
}

CreatureAI* GetAI_npc_gurubashi_bat_rider(Creature* pCreature)
{
    return new npc_gurubashi_bat_riderAI(pCreature);
}

void AddSC_boss_jeklik()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "boss_jeklik";
    pNewScript->GetAI = &GetAI_boss_jeklik;
    pNewScript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "npc_gurubashi_bat_rider";
    pNewScript->GetAI = &GetAI_npc_gurubashi_bat_rider;
    pNewScript->RegisterSelf();
}
