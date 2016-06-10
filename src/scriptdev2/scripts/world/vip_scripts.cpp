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
SDName: Vip_Scripts
SD%Complete: 100
SDComment:
SDCategory: NPCs
EndScriptData */

#include "precompiled.h"
#include "Language.h"

/*########
# vip_scripts
#########*/

std::string vip_scripts_To_UTF8(const std::string & str)
{
    int nwLen = ::MultiByteToWideChar(CP_ACP, 0, str.c_str(), -1, NULL, 0);
    wchar_t * pwBuf = new wchar_t[nwLen + 1];
    ZeroMemory(pwBuf, nwLen * 2 + 2);
    ::MultiByteToWideChar(CP_ACP, 0, str.c_str(), str.length(), pwBuf, nwLen);
    int nLen = ::WideCharToMultiByte(CP_UTF8, 0, pwBuf, -1, NULL, NULL, NULL, NULL);
    char * pBuf = new char[nLen + 1];
    ZeroMemory(pBuf, nLen + 1);
    ::WideCharToMultiByte(CP_UTF8, 0, pwBuf, nwLen, pBuf, nLen, NULL, NULL);
    std::string retStr(pBuf);
    delete[]pwBuf;
    delete[]pBuf;
    pwBuf = NULL;
    pBuf = NULL;
    return retStr;
}

void SendDefaultMenu(Player* pPlayer, Creature* pCreature)
{
    pPlayer->PrepareGossipMenu(pCreature, pPlayer->GetDefaultGossipMenuForSource(pCreature));
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("领取积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2); // 领取积分
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通瞬飞"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3); // 开通瞬飞
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("重置天赋"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 4); // 重置天赋
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("购买背包"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 5); // 购买背包
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("购买坐骑"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 6); // 购买坐骑
    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("角色改名"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 7); // 角色改名
    pPlayer->TalkedToCreature(pCreature->GetEntry(), pCreature->GetObjectGuid());
    pPlayer->SendPreparedGossip(pCreature);
}

bool GossipHello_vip_scripts(Player* pPlayer, Creature* pCreature)
{
    pPlayer->PlayerTalkClass->ClearMenus();
    pPlayer->Unmount();
    pPlayer->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);
    if (pPlayer->isAlive())
    {
        if (pPlayer->isInCombat())
            { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
        else
            { SendDefaultMenu(pPlayer, pCreature); }
    }
    return true;
}

bool GossipSelect_vip_scripts(Player* pPlayer, Creature* pCreature, uint32 /*sender*/, uint32 uiAction)
{
    pPlayer->PlayerTalkClass->ClearMenus();
    pPlayer->Unmount();
    pPlayer->RemoveSpellsCausingAura(SPELL_AURA_MOUNTED);
    switch (uiAction)
    {
        //返回主菜单
        case GOSSIP_ACTION_INFO_DEF + 1:
            if (pPlayer->isAlive())
                { SendDefaultMenu(pPlayer, pCreature); }
            break;

        // 领取积分
        case GOSSIP_ACTION_INFO_DEF + 2:
            if (pPlayer->isAlive())
            {
                if (pPlayer->isInCombat())
                {
                    pPlayer->PlayerTalkClass->CloseGossip();
                    ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT);
                }
                else
                {
                    pPlayer->SaveToDB();
                    pPlayer->ModifyIntegral(0);
                    pPlayer->SaveToDB();
                    ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    SendDefaultMenu(pPlayer, pCreature);
                }
            }
            break;

        // 开通瞬飞
        case GOSSIP_ACTION_INFO_DEF + 3:
            if (pPlayer->isAlive())
            {
                if (pPlayer->isInCombat())
                {
                    pPlayer->PlayerTalkClass->CloseGossip();
                    ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT);
                }
                else
                {
                    pPlayer->PrepareGossipMenu(pCreature, pPlayer->GetDefaultGossipMenuForSource(pCreature));
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通1个月瞬飞-消耗100积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 30); // 开通1个月瞬飞
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通2个月瞬飞-消耗190积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 31); // 开通2个月瞬飞
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通3个月瞬飞-消耗270积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 32); // 开通3个月瞬飞
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通4个月瞬飞-消耗340积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 33); // 开通4个月瞬飞
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通5个月瞬飞-消耗400积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 34); // 开通5个月瞬飞
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通6个月瞬飞-消耗450积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 35); // 开通6个月瞬飞
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("返回主菜单"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);                 // 返回主菜单
                    pPlayer->TalkedToCreature(pCreature->GetEntry(), pCreature->GetObjectGuid());
                    pPlayer->SendPreparedGossip(pCreature);
                }
            }
            break;

        // 重置天赋
        case GOSSIP_ACTION_INFO_DEF + 4:
            if (pPlayer->isAlive())
            {
                if (pPlayer->isInCombat())
                {
                    pPlayer->PlayerTalkClass->CloseGossip();
                    ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT);
                }
                else
                {
                    pPlayer->PrepareGossipMenu(pCreature, pPlayer->GetDefaultGossipMenuForSource(pCreature));
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通1个月重置天赋-消耗250积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 40);  // 开通1个月重置天赋
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通2个月重置天赋-消耗475积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 41);  // 开通2个月重置天赋
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通3个月重置天赋-消耗675积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 42);  // 开通3个月重置天赋
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通4个月重置天赋-消耗850积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 43);  // 开通4个月重置天赋
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通5个月重置天赋-消耗1000积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 44); // 开通5个月重置天赋
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("开通6个月重置天赋-消耗1125积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 45); // 开通6个月重置天赋
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("返回主菜单"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);                      // 返回主菜单
                    pPlayer->TalkedToCreature(pCreature->GetEntry(), pCreature->GetObjectGuid());
                    pPlayer->SendPreparedGossip(pCreature);
                }
            }
            break;

        // 购买背包
        case GOSSIP_ACTION_INFO_DEF + 5:
            if (pPlayer->isAlive())
            {
                if (pPlayer->isInCombat())
                {
                    pPlayer->PlayerTalkClass->CloseGossip();
                    ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT);
                }
                else
                {
                    pPlayer->PrepareGossipMenu(pCreature, pPlayer->GetDefaultGossipMenuForSource(pCreature));
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("24格背包-消耗250积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 50); // 24格背包
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("返回主菜单"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);            // 返回主菜单
                    pPlayer->TalkedToCreature(pCreature->GetEntry(), pCreature->GetObjectGuid());
                    pPlayer->SendPreparedGossip(pCreature);
                }
            }
            break;

        // 购买坐骑
        case GOSSIP_ACTION_INFO_DEF + 6:
            if (pPlayer->isAlive())
            {
                if (pPlayer->isInCombat())
                {
                    pPlayer->PlayerTalkClass->CloseGossip();
                    ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT);
                }
                else
                {
                    pPlayer->PrepareGossipMenu(pCreature, pPlayer->GetDefaultGossipMenuForSource(pCreature));
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("拉扎什迅猛龙-消耗2500积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 60);   // 拉扎什迅猛龙
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("迅捷祖利安猛虎-消耗2500积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 61); // 迅捷祖利安猛虎
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("死亡军马的缰绳-消耗2000积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 62); // 死亡军马的缰绳
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("返回主菜单"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);                   // 返回主菜单
                    pPlayer->TalkedToCreature(pCreature->GetEntry(), pCreature->GetObjectGuid());
                    pPlayer->SendPreparedGossip(pCreature);
                }
            }
            break;

        // 角色改名
        case GOSSIP_ACTION_INFO_DEF + 7:
            if (pPlayer->isAlive())
            {
                if (pPlayer->isInCombat())
                {
                    pPlayer->PlayerTalkClass->CloseGossip();
                    ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT);
                }
                else
                {
                    pPlayer->PrepareGossipMenu(pCreature, pPlayer->GetDefaultGossipMenuForSource(pCreature));
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("立刻改名-消耗300积分"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 70); // 立刻改名
                    pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_TALK, vip_scripts_To_UTF8("返回主菜单"), GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);            // 返回主菜单
                    pPlayer->TalkedToCreature(pCreature->GetEntry(), pCreature->GetObjectGuid());
                    pPlayer->SendPreparedGossip(pCreature);
                }
            }
            break;

        // 开通瞬飞1个月
        case GOSSIP_ACTION_INFO_DEF + 30:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 100)
                    {
                        if (pPlayer->GetItemCount(30000, true) < 1 && pPlayer->GetItemCount(30001, true) < 1 && pPlayer->GetItemCount(30002, true) < 1 && pPlayer->GetItemCount(30003, true) < 1 && pPlayer->GetItemCount(30004, true) < 1 && pPlayer->GetItemCount(30005, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30000, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-100);
                                Item* item = pPlayer->StoreNewItem(dest, 30000, true, Item::GenerateItemRandomPropertyId(30000));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 100);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 100);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 开通瞬飞2个月
        case GOSSIP_ACTION_INFO_DEF + 31:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 190)
                    {
                        if (pPlayer->GetItemCount(30000, true) < 1 && pPlayer->GetItemCount(30001, true) < 1 && pPlayer->GetItemCount(30002, true) < 1 && pPlayer->GetItemCount(30003, true) < 1 && pPlayer->GetItemCount(30004, true) < 1 && pPlayer->GetItemCount(30005, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30001, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-190);
                                Item* item = pPlayer->StoreNewItem(dest, 30001, true, Item::GenerateItemRandomPropertyId(30001));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 190);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 190);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 开通瞬飞3个月
        case GOSSIP_ACTION_INFO_DEF + 32:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 270)
                    {
                        if (pPlayer->GetItemCount(30000, true) < 1 && pPlayer->GetItemCount(30001, true) < 1 && pPlayer->GetItemCount(30002, true) < 1 && pPlayer->GetItemCount(30003, true) < 1 && pPlayer->GetItemCount(30004, true) < 1 && pPlayer->GetItemCount(30005, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30002, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-270);
                                Item* item = pPlayer->StoreNewItem(dest, 30002, true, Item::GenerateItemRandomPropertyId(30002));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 270);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 270);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 开通瞬飞4个月
        case GOSSIP_ACTION_INFO_DEF + 33:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 340)
                    {
                        if (pPlayer->GetItemCount(30000, true) < 1 && pPlayer->GetItemCount(30001, true) < 1 && pPlayer->GetItemCount(30002, true) < 1 && pPlayer->GetItemCount(30003, true) < 1 && pPlayer->GetItemCount(30004, true) < 1 && pPlayer->GetItemCount(30005, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30003, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-340);
                                Item* item = pPlayer->StoreNewItem(dest, 30003, true, Item::GenerateItemRandomPropertyId(30003));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 340);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 340);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 开通瞬飞5个月
        case GOSSIP_ACTION_INFO_DEF + 34:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 400)
                    {
                        if (pPlayer->GetItemCount(30000, true) < 1 && pPlayer->GetItemCount(30001, true) < 1 && pPlayer->GetItemCount(30002, true) < 1 && pPlayer->GetItemCount(30003, true) < 1 && pPlayer->GetItemCount(30004, true) < 1 && pPlayer->GetItemCount(30005, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30004, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-400);
                                Item* item = pPlayer->StoreNewItem(dest, 30004, true, Item::GenerateItemRandomPropertyId(30004));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 400);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 400);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 开通瞬飞6个月
        case GOSSIP_ACTION_INFO_DEF + 35:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 450)
                    {
                        if (pPlayer->GetItemCount(30000, true) < 1 && pPlayer->GetItemCount(30001, true) < 1 && pPlayer->GetItemCount(30002, true) < 1 && pPlayer->GetItemCount(30003, true) < 1 && pPlayer->GetItemCount(30004, true) < 1 && pPlayer->GetItemCount(30005, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30005, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-450);
                                Item* item = pPlayer->StoreNewItem(dest, 30005, true, Item::GenerateItemRandomPropertyId(30005));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 450);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 450);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 开通重置天赋1个月
        case GOSSIP_ACTION_INFO_DEF + 40:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 250)
                    {
                        if (pPlayer->GetItemCount(30006, true) < 1 && pPlayer->GetItemCount(30007, true) < 1 && pPlayer->GetItemCount(30008, true) < 1 && pPlayer->GetItemCount(30009, true) < 1 && pPlayer->GetItemCount(30010, true) < 1 && pPlayer->GetItemCount(30011, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30006, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-250);
                                Item* item = pPlayer->StoreNewItem(dest, 30006, true, Item::GenerateItemRandomPropertyId(30006));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 250);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 250);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 开通重置天赋2个月
        case GOSSIP_ACTION_INFO_DEF + 41:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 475)
                    {
                        if (pPlayer->GetItemCount(30006, true) < 1 && pPlayer->GetItemCount(30007, true) < 1 && pPlayer->GetItemCount(30008, true) < 1 && pPlayer->GetItemCount(30009, true) < 1 && pPlayer->GetItemCount(30010, true) < 1 && pPlayer->GetItemCount(30011, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30007, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-475);
                                Item* item = pPlayer->StoreNewItem(dest, 30007, true, Item::GenerateItemRandomPropertyId(30007));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 475);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 475);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 开通重置天赋3个月
        case GOSSIP_ACTION_INFO_DEF + 42:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 675)
                    {
                        if (pPlayer->GetItemCount(30006, true) < 1 && pPlayer->GetItemCount(30007, true) < 1 && pPlayer->GetItemCount(30008, true) < 1 && pPlayer->GetItemCount(30009, true) < 1 && pPlayer->GetItemCount(30010, true) < 1 && pPlayer->GetItemCount(30011, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30008, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-675);
                                Item* item = pPlayer->StoreNewItem(dest, 30008, true, Item::GenerateItemRandomPropertyId(30008));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 675);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 675);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 开通重置天赋4个月
        case GOSSIP_ACTION_INFO_DEF + 43:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 850)
                    {
                        if (pPlayer->GetItemCount(30006, true) < 1 && pPlayer->GetItemCount(30007, true) < 1 && pPlayer->GetItemCount(30008, true) < 1 && pPlayer->GetItemCount(30009, true) < 1 && pPlayer->GetItemCount(30010, true) < 1 && pPlayer->GetItemCount(30011, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30009, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-850);
                                Item* item = pPlayer->StoreNewItem(dest, 30009, true, Item::GenerateItemRandomPropertyId(30009));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 850);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 850);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 开通重置天赋5个月
        case GOSSIP_ACTION_INFO_DEF + 44:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 1000)
                    {
                        if (pPlayer->GetItemCount(30006, true) < 1 && pPlayer->GetItemCount(30007, true) < 1 && pPlayer->GetItemCount(30008, true) < 1 && pPlayer->GetItemCount(30009, true) < 1 && pPlayer->GetItemCount(30010, true) < 1 && pPlayer->GetItemCount(30011, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30010, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-1000);
                                Item* item = pPlayer->StoreNewItem(dest, 30010, true, Item::GenerateItemRandomPropertyId(30010));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 1000);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 1000);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 开通重置天赋6个月
        case GOSSIP_ACTION_INFO_DEF + 45:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 1125)
                    {
                        if (pPlayer->GetItemCount(30006, true) < 1 && pPlayer->GetItemCount(30007, true) < 1 && pPlayer->GetItemCount(30008, true) < 1 && pPlayer->GetItemCount(30009, true) < 1 && pPlayer->GetItemCount(30010, true) < 1 && pPlayer->GetItemCount(30011, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30011, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-1125);
                                Item* item = pPlayer->StoreNewItem(dest, 30011, true, Item::GenerateItemRandomPropertyId(30011));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 1125);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 1125);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 24格背包
        case GOSSIP_ACTION_INFO_DEF + 50:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 250)
                    {
                        ItemPosCountVec dest;
                        InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 30012, 1, (uint32)0);
                        if (msg == EQUIP_ERR_OK)
                        {
                            pPlayer->SaveToDB();
                            pPlayer->ModifyIntegral(-250);
                            Item* item = pPlayer->StoreNewItem(dest, 30012, true, Item::GenerateItemRandomPropertyId(30012));
                            pPlayer->SendNewItem(item, 1, false, true);
                            pPlayer->SaveToDB();
                            ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 250);
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 250);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 拉扎什迅猛龙
        case GOSSIP_ACTION_INFO_DEF + 60:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 2500)
                    {
                        if (pPlayer->GetItemCount(19872, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 19872, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-2500);
                                Item* item = pPlayer->StoreNewItem(dest, 19872, true, Item::GenerateItemRandomPropertyId(19872));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 2500);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 2500);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 迅捷祖利安猛虎
        case GOSSIP_ACTION_INFO_DEF + 61:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 2500)
                    {
                        if (pPlayer->GetItemCount(19902, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 19902, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-2500);
                                Item* item = pPlayer->StoreNewItem(dest, 19902, true, Item::GenerateItemRandomPropertyId(19902));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 2500);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 2500);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 死亡军马的缰绳
        case GOSSIP_ACTION_INFO_DEF + 62:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 2000)
                    {
                        if (pPlayer->GetItemCount(13335, true) < 1)
                        {
                            ItemPosCountVec dest;
                            InventoryResult msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 13335, 1, (uint32)0);
                            if (msg == EQUIP_ERR_OK)
                            {
                                pPlayer->SaveToDB();
                                pPlayer->ModifyIntegral(-2000);
                                Item* item = pPlayer->StoreNewItem(dest, 13335, true, Item::GenerateItemRandomPropertyId(13335));
                                pPlayer->SendNewItem(item, 1, false, true);
                                pPlayer->SaveToDB();
                                ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 2000);
                            }
                            else
                                { ChatHandler(pPlayer).PSendSysMessage(LANG_FULL_BAG); }
                        }
                        else
                            { ChatHandler(pPlayer).PSendSysMessage(LANG_ALREADY_HAVE); }
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 2000);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;

        // 立刻改名
        case GOSSIP_ACTION_INFO_DEF + 70:
            if (pPlayer->isAlive())
            {
                pPlayer->PlayerTalkClass->CloseGossip();
                if (pPlayer->isInCombat())
                    { ChatHandler(pPlayer).SendSysMessage(LANG_YOU_IN_COMBAT); }
                else
                {
                    if (pPlayer->GetIntegral() >= 300)
                    {
                        pPlayer->SaveToDB();
                        pPlayer->ModifyIntegral(-300);
                        pPlayer->SetAtLoginFlag(AT_LOGIN_RENAME);
                        pPlayer->SaveToDB();
                        ChatHandler(pPlayer).PSendSysMessage(LANG_USE_INTEGRAL, 300);
                    }
                    else
                    {
                        ChatHandler(pPlayer).PSendSysMessage(LANG_LACK_INTEGRAL, 300);
                        ChatHandler(pPlayer).PSendSysMessage(LANG_QUERY_INTEGRAL, pPlayer->GetIntegral(), pPlayer->GetTotalIntegral());
                    }
                }
            }
            break;
    }
    return true;
};

void AddSC_vip_scripts()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "vip_scripts";
    pNewScript->pGossipHello = &GossipHello_vip_scripts;
    pNewScript->pGossipSelect = &GossipSelect_vip_scripts;
    pNewScript->RegisterSelf();
}
