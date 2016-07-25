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
SDName: Boss_Hakkar
SD%Complete: 100
SDComment:
SDCategory: 祖尔格拉布
EndScriptData */

#include "precompiled.h"
#include "zulgurub.h"

enum
{
    SAY_AGGRO                   = -1309020,
    SAY_FLEEING                 = -1309021,

    SPELL_WILL_OF_HAKKAR        = 24178,                    // 哈卡的意志
    SPELL_ENRAGE                = 24318,                    // 激怒
    SPELL_BLOOD_SIPHON          = 24324,                    // 血液虹吸
    SPELL_CORRUPTED_BLOOD       = 24328,                    // 堕落之血
    SPELL_ASPECT_OF_MARLI       = 24686,                    // 玛尔里的守护
    SPELL_ASPECT_OF_JEKLIK      = 24687,                    // 耶克里克的守护
    SPELL_ASPECT_OF_VENOXIS     = 24688,                    // 温诺希斯的守护
    SPELL_ASPECT_OF_THEKAL      = 24689,                    // 塞卡尔的守护
    SPELL_ASPECT_OF_ARLOKK      = 24690                     // 娅尔罗的守护
};

struct boss_hakkarAI : public ScriptedAI
{
    boss_hakkarAI(Creature* pCreature) : ScriptedAI(pCreature)
    {
        m_pInstance = (ScriptedInstance*)pCreature->GetInstanceData();
        Reset();
    }

    ScriptedInstance* m_pInstance;

    uint32 m_uiWillOfHakkarTimer;
    uint32 m_uiEnrageTimer;
    uint32 m_uiBloodSiphonTimer;
    uint32 m_uiCorruptedBloodTimer;
    uint32 m_uiAspectOfMarliTimer;
    uint32 m_uiAspectOfJeklikTimer;
    uint32 m_uiAspectOfVenoxisTimer;
    uint32 m_uiAspectOfThekalTimer;
    uint32 m_uiAspectOfArlokkTimer;

    void Reset() override
    {
        m_uiWillOfHakkarTimer       = 17000;
        m_uiEnrageTimer             = 600000;
        m_uiBloodSiphonTimer        = 90000;
        m_uiCorruptedBloodTimer     = 25000;
        m_uiAspectOfMarliTimer      = 12000;
        m_uiAspectOfJeklikTimer     = 4000;
        m_uiAspectOfVenoxisTimer    = 7000;
        m_uiAspectOfThekalTimer     = 8000;
        m_uiAspectOfArlokkTimer     = 18000;
    }

    void Aggro(Unit* /*who*/) override
    {
        DoScriptText(SAY_AGGRO, m_creature);

        if (m_pInstance)
        {
            uint32 fMaxHealthPct = 100.0f;
            if (m_pInstance->GetData(TYPE_JEKLIK) == DONE)
            {
                m_uiAspectOfJeklikTimer = 0;
                fMaxHealthPct -= 10.0f;
            }
            if (m_pInstance->GetData(TYPE_VENOXIS) == DONE)
            {
                m_uiAspectOfVenoxisTimer = 0;
                fMaxHealthPct -= 10.0f;
            }
            if (m_pInstance->GetData(TYPE_MARLI) == DONE)
            {
                m_uiAspectOfMarliTimer = 0;
                fMaxHealthPct -= 10.0f;
            }
            if (m_pInstance->GetData(TYPE_THEKAL) == DONE)
            {
                m_uiAspectOfThekalTimer = 0;
                fMaxHealthPct -= 10.0f;
            }
            if (m_pInstance->GetData(TYPE_ARLOKK) == DONE)
            {
                m_uiAspectOfArlokkTimer = 0;
                fMaxHealthPct -= 10.0f;
            }
            m_creature->SetHealth(m_creature->GetMaxHealth() * fMaxHealthPct / 100.0f);
        }
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        // 血液虹吸
        if (m_uiBloodSiphonTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_BLOOD_SIPHON) == CAST_OK)
                { m_uiBloodSiphonTimer = 90000; }
        }
        else
            { m_uiBloodSiphonTimer -= uiDiff; }

        // 堕落之血
        if (m_uiCorruptedBloodTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_CORRUPTED_BLOOD) == CAST_OK)
                    { m_uiCorruptedBloodTimer = 30000; }
            }
        }
        else
            { m_uiCorruptedBloodTimer -= uiDiff; }

        // 哈卡的意志
        if (m_uiWillOfHakkarTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 1))
            {
                if (DoCastSpellIfCan(pTarget, SPELL_WILL_OF_HAKKAR) == CAST_OK)
                    { m_uiWillOfHakkarTimer = urand(25000, 35000); }
            }
            else
                { m_uiWillOfHakkarTimer = 25000; }
        }
        else
            { m_uiWillOfHakkarTimer -= uiDiff; }

        // 激怒
        if (m_uiEnrageTimer < uiDiff)
        {
            if (DoCastSpellIfCan(m_creature, SPELL_ENRAGE) == CAST_OK)
                { m_uiEnrageTimer = 90000; }
        }
        else
            { m_uiEnrageTimer -= uiDiff; }

        // 玛尔里的守护
        if (m_uiAspectOfMarliTimer)
        {
            if (m_uiAspectOfMarliTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_ASPECT_OF_MARLI) == CAST_OK)
                    { m_uiAspectOfMarliTimer = 10000; }
            }
            else
                { m_uiAspectOfMarliTimer -= uiDiff; }
        }

        // 耶克里克的守护
        if (m_uiAspectOfJeklikTimer)
        {
            if (m_uiAspectOfJeklikTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_ASPECT_OF_JEKLIK) == CAST_OK)
                    { m_uiAspectOfJeklikTimer = urand(10000, 14000); }
            }
            else
                { m_uiAspectOfJeklikTimer -= uiDiff; }
        }

        // 温诺希斯的守护
        if (m_uiAspectOfVenoxisTimer)
        {
            if (m_uiAspectOfVenoxisTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_ASPECT_OF_VENOXIS) == CAST_OK)
                    { m_uiAspectOfVenoxisTimer = 8000; }
            }
            else
                { m_uiAspectOfVenoxisTimer -= uiDiff; }
        }

        // 塞卡尔的守护
        if (m_uiAspectOfThekalTimer)
        {
            if (m_uiAspectOfThekalTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature, SPELL_ASPECT_OF_THEKAL) == CAST_OK)
                    { m_uiAspectOfThekalTimer = 15000; }
            }
            else
                { m_uiAspectOfThekalTimer -= uiDiff; }
        }

        // 娅尔罗的守护
        if (m_uiAspectOfArlokkTimer)
        {
            if (m_uiAspectOfArlokkTimer <= uiDiff)
            {
                if (DoCastSpellIfCan(m_creature->getVictim(), SPELL_ASPECT_OF_ARLOKK) == CAST_OK)
                {
                    DoResetThreat();
                    m_uiAspectOfArlokkTimer = urand(10000, 15000);
                }
            }
            else
                { m_uiAspectOfArlokkTimer -= uiDiff; }
        }

        if (!(m_creature->HasAura(24322) || m_creature->HasAura(24323)))
            { DoMeleeAttackIfReady(); }
    }
};

CreatureAI* GetAI_boss_hakkar(Creature* pCreature)
{
    return new boss_hakkarAI(pCreature);
}

void AddSC_boss_hakkar()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "boss_hakkar";
    pNewScript->GetAI = &GetAI_boss_hakkar;
    pNewScript->RegisterSelf();
}
