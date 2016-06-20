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
SDName: Boss_Golemagg
SD%Complete: 100
SDComment:
SDCategory: 熔火之心
EndScriptData */

#include "precompiled.h"
#include "molten_core.h"

enum
{
    SPELL_MAGMA_SPLASH          = 13879,                    // 熔岩喷溅
    SPELL_MAGMA_SPLASH_T        = 13880,                    // 熔岩喷溅(对T)
    SPELL_EARTHQUAKE            = 19798,                    // 地震术
    SPELL_ENRAGE                = 19953,                    // 狂怒
    SPELL_PYROBLAST             = 20228,                    // 炎爆术
    SPELL_GOLEMAGG_TRUST        = 20553,                    // 古雷曼格的信任

    // 熔火怒犬
    EMOTE_LOW_HP                = -1409002,
    SPELL_MANGLE                = 19820                     // 割碎
};

struct boss_golemaggAI : public ScriptedAI
{
    boss_golemaggAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiPyroblastTimer;
    uint32 m_uiMagmaSplashTimer;
    uint32 m_uiEarthquakeTimer;
    uint32 m_uiBuffTimer;
    bool m_bEnraged;

    void Reset() override
    {
        m_uiPyroblastTimer          = 7000;
        m_uiMagmaSplashTimer        = 5000;
        m_uiEarthquakeTimer         = 3000;
        m_uiBuffTimer               = 1500;

        m_bEnraged                  = false;
    }

    void Aggro(Unit* /*pWho*/) override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_GOLEMAGG, IN_PROGRESS);

        DoCastSpellIfCan(m_creature, SPELL_MAGMA_SPLASH, CAST_TRIGGERED | CAST_AURA_NOT_PRESENT);
    }

    void JustDied(Unit* /*pKiller*/) override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_GOLEMAGG, DONE);
    }

    void JustReachedHome() override
    {
        if (m_pInstance)
            m_pInstance->SetData(TYPE_GOLEMAGG, FAIL);

        DoCastSpellIfCan(m_creature, SPELL_MAGMA_SPLASH, CAST_TRIGGERED | CAST_AURA_NOT_PRESENT);
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        // 炎爆术
        if (m_uiPyroblastTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_PYROBLAST) == CAST_OK)
                    m_uiPyroblastTimer = 7000;
            }
        }
        else
            m_uiPyroblastTimer -= uiDiff;

        // 狂怒
        if (!m_bEnraged && m_creature->GetHealthPercent() < 10.0f)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_ENRAGE) == CAST_OK)
                m_bEnraged = true;
        }

        // 地震术
        if (m_bEnraged)
        {
            if (m_uiEarthquakeTimer < uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_EARTHQUAKE) == CAST_OK)
                    m_uiEarthquakeTimer = 3000;
            }
            else
                m_uiEarthquakeTimer -= uiDiff;
        }

        // 古雷曼格的信任
        if (m_uiBuffTimer < uiDiff)
        {
            DoCastSpellIfCan(m_creature, SPELL_GOLEMAGG_TRUST);
            m_uiBuffTimer = 1500;
        }
        else
            m_uiBuffTimer -= uiDiff;

        // 熔岩喷溅(对T)
        if (m_uiMagmaSplashTimer < uiDiff)
        {
            DoCastSpellIfCan(m_creature->getVictim(), SPELL_MAGMA_SPLASH_T);
            m_uiMagmaSplashTimer = 5000;
        }
        else
            { m_uiMagmaSplashTimer -= uiDiff; }

        DoMeleeAttackIfReady();
    }
};

struct mob_core_ragerAI : public ScriptedAI
{
    mob_core_ragerAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;
    uint32 m_uiMangleTimer;

    void Reset() override
    {
        m_uiMangleTimer             = 7000;
    }

    void DamageTaken(Unit* /*pDoneBy*/, uint32& uiDamage) override
    {
        if (m_creature->GetHealthPercent() < 50.0f)
        {
            if (m_pInstance && m_pInstance->GetData(TYPE_GOLEMAGG) != DONE)
            {
                DoScriptText(EMOTE_LOW_HP, m_creature);
                m_creature->SetHealth(m_creature->GetMaxHealth());
                uiDamage = 0;
            }
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            return;

        // 割碎
        if (m_uiMangleTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_MANGLE) == CAST_OK)
                m_uiMangleTimer = 10000;
        }
        else
            m_uiMangleTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_golemagg(Creature* pCreature)
{
    return new boss_golemaggAI(pCreature);
}

CreatureAI* GetAI_mob_core_rager(Creature* pCreature)
{
    return new mob_core_ragerAI(pCreature);
}

void AddSC_boss_golemagg()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "boss_golemagg";
    pNewScript->GetAI = &GetAI_boss_golemagg;
    pNewScript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "mob_core_rager";
    pNewScript->GetAI = &GetAI_mob_core_rager;
    pNewScript->RegisterSelf();
}
