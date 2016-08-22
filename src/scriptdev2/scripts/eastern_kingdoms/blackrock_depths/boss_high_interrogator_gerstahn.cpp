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
SDName: Boss_High_Interrogator_Gerstahn
SD%Complete: 100
SDComment:
SDCategory: 黑石深渊
EndScriptData */

#include "precompiled.h"

enum
{
    SPELL_SHADOWSHIELD          = 12040,                    // 暗影之盾
    SPELL_PSYCHICSCREAM         = 13704,                    // 心灵尖啸
    SPELL_SHADOWWORDPAIN        = 14032,                    // 暗言术:痛
    SPELL_MANABURN              = 14033,                    // 法力燃烧
};

struct boss_high_interrogator_gerstahnAI : public ScriptedAI
{
    boss_high_interrogator_gerstahnAI(Creature* pCreature) : ScriptedAI(pCreature) {Reset();}

    uint32 m_uiShadowShieldTimer;
    uint32 m_uiPsychicScreamTimer;
    uint32 m_uiShadowWordPainTimer;
    uint32 m_uiManaBurnTimer;

    void Reset() override
    {
        m_uiShadowShieldTimer       = 8000;
        m_uiPsychicScreamTimer      = 32000;
        m_uiShadowWordPainTimer     = 4000;
        m_uiManaBurnTimer           = 14000;
    }

    void UpdateAI(const uint32 uiDiff) override
    {
        if (!m_creature->SelectHostileTarget() || !m_creature->getVictim())
            { return; }

        // 暗影之盾
        if (m_uiShadowShieldTimer < uiDiff)
        {
            DoCastSpellIfCan(m_creature, SPELL_SHADOWSHIELD);
            m_uiShadowShieldTimer = 25000;
        }
        else
            { m_uiShadowShieldTimer -= uiDiff; }

        // 心灵尖啸
        if (m_uiPsychicScreamTimer < uiDiff)
        {
            DoCastSpellIfCan(m_creature, SPELL_PSYCHICSCREAM);
            m_uiPsychicScreamTimer = 30000;
        }
        else
            { m_uiPsychicScreamTimer -= uiDiff; }

        // 暗言术:痛
        if (m_uiShadowWordPainTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0))
                { DoCastSpellIfCan(pTarget, SPELL_SHADOWWORDPAIN); }

            m_uiShadowWordPainTimer = 7000;
        }
        else
            { m_uiShadowWordPainTimer -= uiDiff; }

        // 法力燃烧
        if (m_uiManaBurnTimer < uiDiff)
        {
            if (Unit* pTarget = m_creature->SelectAttackingTarget(ATTACKING_TARGET_RANDOM, 0, SPELL_MANABURN, SELECT_FLAG_POWER_MANA))
                { DoCastSpellIfCan(pTarget, SPELL_MANABURN); }

            m_uiManaBurnTimer = 10000;
        }
        else
            { m_uiManaBurnTimer -= uiDiff; }

        DoMeleeAttackIfReady();
    }
};

CreatureAI* GetAI_boss_high_interrogator_gerstahn(Creature* pCreature)
{
    return new boss_high_interrogator_gerstahnAI(pCreature);
}

void AddSC_boss_high_interrogator_gerstahn()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "boss_high_interrogator_gerstahn";
    pNewScript->GetAI = &GetAI_boss_high_interrogator_gerstahn;
    pNewScript->RegisterSelf();
}
