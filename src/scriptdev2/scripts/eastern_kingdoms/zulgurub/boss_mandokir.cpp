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
SDName: Boss_Mandokir
SD%Complete: 100
SDComment:
SDCategory: 祖尔格拉布
EndScriptData */

#include "precompiled.h"
#include "zulgurub.h"

enum
{
    SAY_AGGRO                   = -1309015,
    SAY_DING_KILL               = -1309016,
    SAY_GRATS_JINDO             = -1309017,
    SAY_WATCH                   = -1309018,
    SAY_WATCH_WHISPER           = -1309019,

    EMOTE_RAGE                  = -1309024,

    SPELL_EXECUTE               = 7160,                     // 斩杀
    SPELL_WHIRLWIND             = 13736,                    // 旋风斩
    SPELL_MORTAL_STRIKE         = 16856,                    // 致死打击
    SPELL_CLEAVE                = 20691,                    // 顺劈斩
    SPELL_FEAR                  = 22884,                    // 心灵尖啸
    SPELL_LEVEL_UP              = 24312,                    // 升级
    SPELL_WATCH                 = 24314,                    // 威慑凝视
    SPELL_ENRAGE                = 24318,                    // 激怒
    SPELL_OVERPOWER             = 24407,                    // 压制
    SPELL_CHARGE                = 24408,                    // 冲锋
    SPELL_SUMMON_PLAYER         = 25104,                    // 召唤玩家

    // 奥根 技能
    SPELL_TRASH                 = 8876,                     // 痛击
    SPELL_SUNDERARMOR           = 24317,                    // 破甲

    // 被禁锢的灵魂 技能
    SPELL_REVIVE                = 24341,                    // 复活

    NPC_OHGAN                   = 14988,                    // 奥根
    NPC_CHAINED_SPIRIT          = 15117,                    // 被禁锢的灵魂

    POINT_DOWNSTAIRS            = 1
};

struct SpawnLocations
{
    float fX, fY, fZ, fAng;
};

static SpawnLocations aSpirits[] =
{
    { -12150.9f, -1956.24f, 133.407f, 2.57835f},
    { -12157.1f, -1972.78f, 133.947f, 2.64903f},
    { -12172.3f, -1982.63f, 134.061f, 1.48664f},
    { -12194.0f, -1979.54f, 132.194f, 1.45916f},
    { -12211.3f, -1978.49f, 133.580f, 1.35705f},
    { -12228.4f, -1977.10f, 132.728f, 1.25495f},
    { -12250.0f, -1964.78f, 135.066f, 0.92901f},
    { -12264.0f, -1953.08f, 134.072f, 0.62663f},
    { -12289.0f, -1924.00f, 132.620f, 5.37829f},
    { -12267.3f, -1902.26f, 131.328f, 5.32724f},
    { -12255.3f, -1893.53f, 134.026f, 5.06413f},
    { -12229.9f, -1891.39f, 134.704f, 4.40047f},
    { -12215.9f, -1889.09f, 137.273f, 4.70285f},
    { -12200.5f, -1890.69f, 135.777f, 4.84422f},
    { -12186.0f, -1890.12f, 134.261f, 4.36513f},
    { -12246.3f, -1890.09f, 135.475f, 4.73427f},
    { -12170.7f, -1894.85f, 133.852f, 3.51690f},
    { -12279.0f, -1931.92f, 136.130f, 0.04151f},
    { -12266.1f, -1940.72f, 132.606f, 0.70910f}
};

struct boss_mandokirAI : public ScriptedAI
{
    boss_mandokirAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiWatchTimer;
    uint32 m_uiExecuteTimer;
    uint32 m_uiWhirlwindTimer;
    uint32 m_uiMortalStrikeTimer;
    uint32 m_uiCleaveTimer;
    uint32 m_uiFearTimer;
    uint32 m_uiOverpowerTimer;

    uint8 m_uiKillCount;

    float m_fTargetThreat;
    ObjectGuid m_watchTargetGuid;

    void Reset() override
    {
        m_uiWatchTimer              = 33000;
        m_uiExecuteTimer            = 1000;
        m_uiWhirlwindTimer          = 20000;
        m_uiMortalStrikeTimer       = 1000;
        m_uiCleaveTimer             = 7000;
        m_uiFearTimer               = 1000;
        m_uiOverpowerTimer          = 5000;

        m_uiKillCount               = 0;

        m_fTargetThreat             = 0.0f;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        DoScriptText(SAY_AGGRO, m_creature);

        for (uint8 i = 0; i < countof(aSpirits); ++i)
            { m_creature->SummonCreature(NPC_CHAINED_SPIRIT, aSpirits[i].fX, aSpirits[i].fY, aSpirits[i].fZ, aSpirits[i].fAng, TEMPSUMMON_CORPSE_DESPAWN, 0); }

        // 移除坐骑
        m_creature->Unmount();

        // 召唤奥根
        m_creature->SummonCreature(NPC_OHGAN, 0.0f, 0.0f, 0.0f, 0.0f, TEMPSUMMON_TIMED_OOC_DESPAWN, 35000);

        if (m_pInstance)
            { m_pInstance->SetData(TYPE_OHGAN, IN_PROGRESS); }
    }

    void JustReachedHome() override
    {
        if (m_pInstance)
            { m_pInstance->SetData(TYPE_OHGAN, FAIL); }
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (m_pInstance)
            { m_pInstance->SetData(TYPE_OHGAN, DONE); }
    }

    void EnterEvadeMode() override
    {
        m_creature->RemoveAllAurasOnEvade();
        m_creature->DeleteThreatList();
        m_creature->CombatStop(true);
        m_creature->LoadCreatureAddon(true);

        // 脱站后位置更改为台阶下
        if (m_creature->isAlive())
            { m_creature->GetMotionMaster()->MovePoint(0, aMandokirDownstairsPos[0], aMandokirDownstairsPos[1], aMandokirDownstairsPos[2]); }

        m_creature->SetLootRecipient(NULL);

        Reset();
    }

    void KilledUnit(Unit* pVictim) override
    {
        if (pVictim->GetTypeId() == TYPEID_PLAYER)
        {
            ++m_uiKillCount;

            if (m_uiKillCount == 3)
            {
                DoScriptText(SAY_DING_KILL, m_creature);

                if (m_pInstance)
                {
                    if (Creature* pJindo = m_pInstance->GetSingleCreatureFromStorage(NPC_JINDO))
                    {
                        if (pJindo->isAlive())
                            { DoScriptText(SAY_GRATS_JINDO, pJindo); }
                    }
                }

                DoCastSpellIfCan(m_creature, SPELL_LEVEL_UP, CAST_TRIGGERED);
                m_uiKillCount = 0;
            }

            if (m_creature->isInCombat())
            {
                if (Creature* pSpirit = GetClosestCreatureWithEntry(pVictim, NPC_CHAINED_SPIRIT, 50.0f))
                    { pSpirit->CastSpell(pVictim, SPELL_REVIVE, false); }
            }
        }
    }

    void JustSummoned(Creature* pSummoned) override
    {
        if (pSummoned->GetEntry() == NPC_OHGAN)
        {
            if (m_creature->getVictim())
                { pSummoned->AI()->AttackStart(m_creature->getVictim()); }
        }
    }

    void SummonedCreatureJustDied(Creature* pSummoned) override
    {
        if (pSummoned->GetEntry() == NPC_OHGAN)
        {
            DoCastSpellIfCan(m_creature, SPELL_ENRAGE, CAST_TRIGGERED);
            DoScriptText(EMOTE_RAGE, m_creature);
        }
    }

    void SpellHitTarget(Unit* pTarget, const SpellEntry* pSpell) override
    {
        if (pSpell->Id == SPELL_WATCH)
        {
            DoScriptText(SAY_WATCH, m_creature, pTarget);
            DoScriptText(SAY_WATCH_WHISPER, m_creature, pTarget);

            m_watchTargetGuid = pTarget->GetObjectGuid();
            m_fTargetThreat = m_creature->getThreatManager().getThreat(pTarget);
            m_uiWatchTimer = 6000;
        }
    }

    void MovementInform(uint32 uiMoveType, uint32 uiPointId) override
    {
        if (uiMoveType != POINT_MOTION_TYPE || !m_pInstance)
            { return; }

        if (uiPointId == POINT_DOWNSTAIRS)
        {
            m_creature->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_PASSIVE);
            m_creature->SetInCombatWithZone();
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        // 威慑凝视
        if (m_uiWatchTimer < uiDiff)
        {
            if (m_watchTargetGuid)
            {
                Player* pWatchTarget = m_creature->GetMap()->GetPlayer(m_watchTargetGuid);

                // 击杀目标如果有仇恨动作
                if (pWatchTarget && pWatchTarget->isAlive() && m_creature->getThreatManager().getThreat(pWatchTarget) > m_fTargetThreat)
                {
                    if (!m_creature->IsWithinLOSInMap(pWatchTarget))
                        { m_creature->CastSpell(pWatchTarget, SPELL_SUMMON_PLAYER, true); }

                    DoCastSpellIfCan(pWatchTarget, SPELL_CHARGE);
                }

                m_watchTargetGuid.Clear();
            }
            else
            {
                if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                {
                    if (Player* pPlayer = pTarget->GetCharmerOrOwnerPlayerOrPlayerItself())
                        { m_creature->CastSpell(pPlayer, SPELL_WATCH, false); }
                }
            }

            m_uiWatchTimer = 20000;
        }
        else
            m_uiWatchTimer -= uiDiff;

        if (!m_watchTargetGuid)
        {
            // 斩杀
            if (m_creature->getVictim()->GetHealthPercent() < 20.0f)
            {
                if (m_uiExecuteTimer < uiDiff)
                {
                    if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_EXECUTE) == CAST_OK)
                        { m_uiExecuteTimer = 15000; }
                }
                else
                    { m_uiExecuteTimer -= uiDiff; }
            }

            // 旋风斩
            if (m_uiWhirlwindTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_WHIRLWIND) == CAST_OK)
                    { m_uiWhirlwindTimer = 18000; }
            }
            else
                { m_uiWhirlwindTimer -= uiDiff; }

            // 致死打击
            if (m_creature->getVictim()->GetHealthPercent() < 50.0f)
            {
                if (m_uiMortalStrikeTimer < uiDiff)
                {
                    if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_MORTAL_STRIKE) == CAST_OK)
                        { m_uiMortalStrikeTimer = 15000; }
                }
                else
                    { m_uiMortalStrikeTimer -= uiDiff; }
            }

            // 顺劈斩
            if (m_uiCleaveTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_CLEAVE) == CAST_OK)
                    { m_uiCleaveTimer = 7000; }
            }
            else
                { m_uiCleaveTimer -= uiDiff; }

            // 心灵尖啸
            if (m_uiFearTimer < uiDiff)
            {
                uint8 uiTargetInRangeCount = 0;

                ThreatList const& tList = m_creature->getThreatManager().getThreatList();
                for (ThreatList::const_iterator i = tList.begin(); i != tList.end(); ++i)
                {
                    Unit* pTarget = m_creature->GetMap()->GetUnit((*i)->getUnitGuid());

                    if (pTarget && pTarget->GetTypeId() == TYPEID_PLAYER && m_creature->CanReachWithMeleeAttack(pTarget))
                        { ++uiTargetInRangeCount; }
                }

                if (uiTargetInRangeCount > 1)
                    { DoCastSpellIfCan(m_creature, SPELL_FEAR); }

                m_uiFearTimer = 4000;
            }
            else
                { m_uiFearTimer -= uiDiff; }

            // 压制
            if (m_uiOverpowerTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_OVERPOWER) == CAST_OK)
                    { m_uiOverpowerTimer = 7000; }
            }
            else
                { m_uiOverpowerTimer -= uiDiff; }
        }

        DoMeleeAttackIfReady();
    }
};

// 奥根
struct mob_ohganAI : public ScriptedAI
{
    mob_ohganAI(Creature* pCreature) : ScriptedAI(pCreature) { Reset(); }

    uint32 m_uiSunderArmorTimer;

    void Reset() override
    {
        m_uiSunderArmorTimer        = 5000;
    }

    void KilledUnit(Unit* pVictim) override
    {
        if (pVictim->GetTypeId() == TYPEID_PLAYER)
        {
            if (m_creature->isInCombat())
            {
                if (Creature* pSpirit = GetClosestCreatureWithEntry(pVictim, NPC_CHAINED_SPIRIT, 50.0f))
                    { pSpirit->CastSpell(pVictim, SPELL_REVIVE, false); }
            }
        }
    }

    void Aggro(Unit* /*pWho*/) override
    {
        DoCastSpellIfCan(m_creature, SPELL_TRASH, CAST_TRIGGERED | CAST_AURA_NOT_PRESENT);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        // 破甲
        if (m_uiSunderArmorTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_SUNDERARMOR) == CAST_OK)
                { m_uiSunderArmorTimer = urand(10000, 15000); }
        }
        else
            { m_uiSunderArmorTimer -= uiDiff; }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_mandokir(Creature* pCreature)
{
    return new boss_mandokirAI(pCreature);
}

CreatureAI* GetAI_mob_ohgan(Creature* pCreature)
{
    return new mob_ohganAI(pCreature);
}

void AddSC_boss_mandokir()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "boss_mandokir";
    pNewScript->GetAI = &GetAI_boss_mandokir;
    pNewScript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "mob_ohgan";
    pNewScript->GetAI = &GetAI_mob_ohgan;
    pNewScript->RegisterSelf();
}
