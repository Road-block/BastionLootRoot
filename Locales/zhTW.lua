local addonName, bepgp = ...
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhTW")
if not L then return end
  --["Term"] = "術語", -- Example
  -- common
  L["Refresh"] = "刷新"
  L["Refresh window"] = "刷新窗口"
  L["Clear"] = "清除"
  L["Name"] = "名字"
  L["Raid Only"] = "只顯示團隊"
  L["Only show members in raid."] = "只顯示在團隊裏的成員"
  -- bids
  L["BastionLoot bids"] = "BastionLoot 競拍"
  L["Winning Mainspec Bid: %s (%.03f PR)"] = "副天賦競標獲勝: %s (%.03f PR)"
  L["Winning Offspec Bid: %s (%.03f PR)"] = "副天賦競標獲勝: %s (%.03f PR)"
  -- logs
  L["BastionLoot logs"] = "BastionLoot 日誌"
  L["Clear Logs."] = "清除日誌"
  L["Time"] = "時間"
  L["Action"] = "行為"
  -- loot
  L["BastionLoot loot info"] = "BastionLoot 拾取資訊"
  L["Clear Loot"] = "清除拾取"
  L["Item"] = "物品"
  L["Binds"] = "競拍"
  L["Looter"] = "拾取人"
  L["GP Action"] = "GP 行為"
  -- migrations
  L["Updated %d members to v3 storage."] = "更新 %d 成員到v3存儲區"
  -- standby
  L["BastionLoot standby"] = "BastionLoot 待命成員" -- needs update
  L["Countdown"] = "倒計時"
  L["Rank"] = "會階"
  L["OnAlt"] = "在小號"
     -- standings
  L["Ctrl-C to copy. Esc to close."] = "Ctrl-C 複製. Esc 退出."
  L["Ctrl-V to paste data. Esc to close."] = "Ctrl-V 粘貼數據. Esc 退出."
  L["Imported %d members."] = "導入 %d 成員."
  L["Imported %d members.\n"] = "導入 %d 成員.\n"
  L["%s\nFailed to import:"] = "%s\n未能導入:"
  L["BastionLoot standings"] = "BastionLoot 名單列表"
  L["Group by class"] = "由職業分組"
  L["Group members by class."] = "按職業分組"
  L["Export"] = "導出"
  L["Export standings to csv."] = "導出排名到CSV文本."
  L["Import"] = "導入"
  L["Import standings from csv."] = "從CSV文本裏導入數據."
  L["ep"] = "ep(貢獻點)"
  L["gp"] = "gp(裝備點)"
  L["pr"] = "pr(優先)"
  L.IMPORT_WARNING = [[警告:
導入會覆蓋所有現有的EPGP值.

粘貼這裏的所有CSV數據替換文本,
然後再導入.
完成後列印結果.]]
  L["Group by armor"] = "由護甲類型分組"
  L["Group members by armor."] = "按護甲的類型分組"
  L["Group by roles"] = "由職責分組"
  L["Group members by roles."] = "按職業分組"
  L["CLOTH"] = "布甲"
  L["LEATHER"] = "皮甲"
  L["MAIL"] = "鎖甲"
  L["PLATE"] = "板甲"
  L["TANK"] = "坦克"
  L["HEALER"] = "治療"
  L["CASTER"] = "法術"
  L["PHYS DPS"] = "物理 DPS"
  -- BastionLoot
  L["{BEPGP}Type \"+\" if on main, or \"+<YourMainName>\" (without quotes) if on alt within %dsec."] = "{BEPGP}使用 \"+\" 如果你在大號上, 或者 \"+<YourMainName>\" (沒有引號) 如果在小號 %d秒."
  L["|cffFF3333|Hbepgpbid:1:$ML|h[Mainspec/NEED]|h|r"] = "|cffFF3333|Hbepgpbid:1:$ML|h[主天賦/需求]|h|r"
  L["|cff009900|Hbepgpbid:2:$ML|h[Offspec/GREED]|h|r"] = "|cff009900|Hbepgpbid:2:$ML|h[副天賦/貪婪]|h|r"
  L["Bids"] = "競標"
  L["Show Bids Table."] = "顯示競標表."
  L["ClearLoot"] = "清除拾取"
  L["Clear Loot Table."] = "清除拾取表."
  L["ClearLogs"] = "清除日誌"
  L["Clear Logs Table."] = "清除日誌表."
  L["Standings"] = "排名"
  L["Show Standings Table."] = "顯示排名表."
  L["Restart"] = "重新開始"
  L["Restart BastionLoot if having startup problems."] = "重新開始 BastionLoot，如果有啟動問題."
  L["Standings"] = "排名"
  L["Show Standings Table."] = "顯示排名表."
  L["v%s Loaded."] = "v%s 加載."
  L["Alt Click/RClick/MClick"] = "Alt+左鍵/右鍵/中鍵"
  L["Call for: MS/OS/Both"] = "要求: MS/OS/Both"
  L["gp:|cff32cd32%d|r gp_os:|cff20b2aa%d|r"] = "gp:|cff32cd32%d|r 副天賦gp:|cff20b2aa%d|r"
  L["pr:|cffff0000%.02f|r(%.02f) pr_os:|cffff0000%.02f|r(%.02f)"] = "pr:|cffff0000%.02f|r(%.02f) 副天賦pr:|cffff0000%.02f|r(%.02f)"
  L["|cffff0000Finished|r"] = "|cffff0000完成|r"
  L["|cff00ff00%02d|r|cffffffffsec|r"] = "|cff00ff00%02d|r|cffffffff秒|r"
  L["Manually modified %s\'s note. EPGP was %s"] = "手動修改 %s\'s 記錄. EPGP 是 %s"
  L["|cffff0000Manually modified %s\'s note. EPGP was %s|r"] = "|cffff0000手動修改 %s\'s 記錄. EPGP 是 %s|r"
  L["Whisper %s a + for %s (mainspec)"] = "私聊 %s + 為 %s (主天賦)"
  L["Whisper %s a - for %s (offspec)"] = "私聊 %s - 為 %s (副天賦)"
  L["Whisper %s a + or - for %s (mainspec or offspec)"] = "私聊 %s + 或 - 為 %s (主天賦或副天賦)"
  L["Click $MS or $OS for %s"] = "點擊 $MS 或 $OS 為: %s"
  L["or $OS "] = "或 $OS "
  L["$MS or "] = "$MS 或 "
  L["You have received a %d EP penalty."] = "你已經收到了 %d EP 處罰."
  L["You have been awarded %d EP."] = "你被授予 %d EP."
  L["You have gained %d GP."] = "你得到了 %d GP."
  L["%s%% decay to EP and GP."] = "%s%% 遞減EP和GP."
  L["%d EP awarded to Raid."] = "%d EP 授予團隊."
  L["%d EP awarded to Standby."] = "%d EP 授予待命隊員." -- needs update
  L["New %s version available: |cff00ff00%s|r"] = "新的 %s 版本可用: |cff00ff00%s|r"
  L["Visit %s to update."] = "訪問 %s 升級."
  L["New raid progress"] = "新的RAID進度"
  L[", offspec price %"] = ", 副天賦價格 %"
  L["New offspec price %"] = "新的副天賦價格 %"
  L[", decay %"] = ", 遞減 %"
  L["New decay %"] = "新的遞減 %"
  L[" settings accepted from %s"] = " 設置接受從 %s"
  L["Giving %d ep to all raidmembers"] = "給予 %d ep 到所有團員"
  L["You aren't in a raid dummy"] = "你不在一個團隊"
  L["Giving %d ep to active standby"] = "給予 %d ep 線上的待命隊員" -- needs update
  L["Giving %d ep to %s%s."] = "給予 %d ep 給 %s"
  L["%s EP Penalty to %s%s."] = "%s EP 懲罰 %s."
  L["Giving %d gp to %s%s."] = "給予 %d gp 給 %s"
  L["Awarding %d GP to %s%s. (Previous: %d, New: %d)"] = "獎勵 %d GP 給 %s. (以前: %d, 新: %d)"
  L["%s\'s officernote is broken:%q"] = "%s\'s 官員備註無法執行:%q"
  L["All EP and GP decayed by %d%%"] = "所有EP和GP遞減 %d%%"
  L["All EP and GP decayed by %s%%"] = "所有EP和GP遞減 %s%%"
  L["All GP has been reset to %d."] = "所有GP已重置為 %d."
  L["All EP and GP has been reset to 0/%d."] = "所有EP和GP已重置為 0/%d."
  L["You now have: %d EP %d GP |cffffff00%.03f|r|cffff7f00PR|r."] = "你現在有: %d EP %d GP |cffffff00%.03f|r|cffff7f00PR|r."
  L["Close to EPGP Cap. Next Decay will change your |cffff7f00PR|r by |cffff0000%.4g|r."] = "下次遞減會改變你的 |cffff7f00PR|r 從 |cffff0000%.4g|r."
  L["|cffff7f00Click|r to toggle Standings."] = "|cffff7f00點擊|r 切換名單." -- needs update
  L["Account EPs to %s."] = "記賬 EP 到 %s."
  L["Account GPs to %s."] = "記賬 GP 到 %s."
  L["BastionLoot options"] = "BastionLoot 設置"
  L["+EPs to Member"] = "+EP給成員"
  L["Account EPs for member."] = "記賬 EP 給成員."
  L["+EPs to Raid"] = "+EP給團隊"
  L["Award EPs to all raid members."] = "獎勵 EP 給所有團隊成員."
  L["+GPs to Member"] = "+GP給成員"
  L["Account GPs for member."] = "記賬 GP給成員."
  L["+EPs to Standby"] = "+EP給待命隊員" -- needs update
  L["Award EPs to all active Standby."] = "獎勵EP給所有線上的待命隊員." -- needs update
  L["Enable Standby"] = "啟動待命成員" -- needs update
  L["Participate in Standby Raiders List.\n|cffff0000Requires Main Character Name.|r"] = "參與在備用團隊列表.\n|cffff0000要求大號名字.|r" -- needs update
  L["AFK Check Standby"] = "待命隊員AFK檢查" -- needs update
  L["AFK Check Standby List"] = "檢查AFK的待命成員" -- needs update
  L["Set Main"] = "設置大號"
  L["Set your Main Character for Standby List."] = "設置你的大號人物為待命成員列表." -- needs update
  L["Raid Progress"] = "公會raid進度"
  L["Highest Tier the Guild is raiding.\nUsed to adjust GP Prices.\nUsed for suggested EP awards."] = "設置公會的最高raid進度.\n用於調整GP價格.\n用於自動調整推薦EP獎勵值."
  L["4.Naxxramas"] = "4.納克薩瑪斯"
  L["3.Temple of Ahn\'Qiraj"] = "3.安其拉神殿"
  L["2.Blackwing Lair"] = "2.黑翼之巢"
  L["1.Molten Core"] = "1.熔火之心"
  L["Reporting channel"] = "報告頻道"
  L["Channel used by reporting functions."] = "報告功能使用的頻道."
  L["Decay EPGP"] = "遞減 EPGP"
  L["Decays all EPGP by %s%%"] = "遞減所有 EPGP 從 %s%%"
  L["Set Decay %"] = "設置遞減 %"
  L["Set Decay percentage (Admin only)."] = "設置遞減百分比 (只能管理員)."
  L["Offspec Price %"] = "副天賦價值 %"
  L["Set Offspec Items GP Percent."] = "設置副天賦物品 GP 百分比."
  L["Reset EPGP"] = "重置 EPGP"
  L["Resets everyone\'s EPGP to 0/%d (Guild Leader only)."] = "重置所有人的 EPGP 到 0/%d (只能管理員)."
  L["Scanning %d members for EP/GP data. (%s)"] = "掃描 %d 成員 EP/GP 數據. (%s)"
  L["|cffff0000%s|r trying to add %s to Standby, but has already added a member. Discarding!"] = "|cffff0000%s|r 試圖添加 %s 給待命成員, 但已經增加了一個成員。" -- needs update
  L["|cffff0000%s|r has already been added to Standby. Discarding!"] = "|cffff0000%s|r 已經添加到待命成員." -- needs update
  L["^{BEPGP}Type"] = "^{BEPGP}使用"
  L["Clearing old Bids"] = "結算之前的競拍"
  L["%s not found in the guild or not raid level!"] = "%s 沒有在公會中找到或不是最高級別！"
  L["Molten Core"] = "熔火之心"
  L["Onyxia\'s Lair"] = "奧妮克希亞的巢穴"
  L["Blackwing Lair"] = "黑翼之巢"
  L["Ahn\'Qiraj"] = "安其拉"
  L["Naxxramas"] = "納克薩瑪斯"
  L["There are %d loot drops stored. It is recommended to clear loot info before a new raid. Do you want to clear it now?"] = "這個 %d 掉落是個戰利品. 建議在新的RAID之前清除拾取物資訊. 你現在想清除它嗎？"
  L["Show me"] = "秀出來"
  L["Loot info cleared"] = "戰利品資訊清除"
  L["Loot info can be cleared at any time from the loot window or '/bastionloot clearloot' command"] = "拾取資訊可以隨時從小地圖上下文菜單中清除，或者用 '/shooty clearloot' 命令" -- needs update
  L["Set your main to be able to participate in Standby List EPGP Checks."] = "設定你的主要人物到參與待命成員EPGP檢查清單." -- needs update
  L["Standby AFKCheck. Are you available? |cff00ff00%0d|rsec."] = "待命成員AFK檢查. 你在嗎? |cff00ff00%0d|r秒." -- needs update
  L["|cffff0000Are you sure you want to Reset ALL EPGP?|r"] = "|cffff0000您確定要重置全部 EPGP?|r"
  L["Add MainSpec GP"] = "添加主天賦 GP"
  L["Add OffSpec GP"] = "添加副天賦 GP"
  L["Bank or D/E"] = "公會銀行或分解師"
  L["%s looted %s. What do you want to do?"] = "%s 拾取了 %s. 你想做什麼？"
  L["GP Actions"] = "GP 操作"
  L["Remind me Later"] = "以後提醒我"
  L["Need MasterLooter to perform Bid Calls!"] = "需要拾取分配者執行競拍!"
  L["BastionLoot alts"] = "BastionLoot 小號"
  L["Enable Alts"] = "啟用小號"
  L["Main"] = "大號"
  L["Alt"] = "小號"
  L["Allow Alts to use Main\'s EPGP."] = "允許小號使用大號的 EPGP."
  L["Alts EP %"] = "小號 EP %"
  L["Set the % EP Alts can earn."] = "設置 % EP 小號可以賺取."
  L[", alts"] = ", 小號"
  L["New Alts"] = "新小號"
  L[", alts ep %"] = ", 小號 ep %"
  L["New Alts EP %"] = "新小號 EP %"
  L["Manually modified %s\'s note. Previous main was %s"] = "手動調整 %s 的備註. 以前的大號是 %s"
  L["|cffff0000Manually modified %s\'s note. Previous main was %s|r"] = "|cffff0000手動調整 %s 的備註. 以前的大號是 %s|r"
  L[", %s\'s Main."] = ", %s 的大號."
  L["Your main has been set to %s"] = "你的大號設置為 %s"
  L["Alts"] = "小號"
  L["Logs cleared"] = "清除日誌"
  L["Restarted"] = "重新啟動"
  L["Progress"] = "進度"
  L["Print Progress Multiplier."] = "列印進度調整器."
  L["Offspec"] = "副天賦"
  L["Print Offspec Price."] = "列印副天賦價格."
  L["Progress Setting: %s"] = "進度設置: %s"
  L["Offspec Price: %s%%"] = "副天賦價格: %s%%"
  L["Minimum EP: %s"] = "最小值 EP: %s"
  L["Minimum EP"] = "最小值 EP"
  L["Set Minimum EP"] = "設置最小值 EP"
  L["New Minimum EP"] = "新最小值 EP"
  L["Standby"] = "待命"
  L["BoP"] = "拾綁"
  L["BoE"] = "裝綁"
  L["NoBind"] = "無綁定"
  L["Mainspec GP"] = "主天賦 GP"
  L["Offspec GP"] = "服天賦 GP"
  L["Bank-D/E"] = "銀行/分解"
  L["Unassigned"] = "未指定"
  L["Admin Options"] = "管理員選項"
  L["Member Options"] = "成員選項"
  L["Hide from Minimap"] = "隱藏小地圖"
  L["You are assigning %s %s to %s."] = "你正在分配 %d %s 給 %s."
  L["Effort Points"] = "努力點"
  L["Gear Points"] = "裝備點"
  L["Armor Class"] = "護甲職業"
  L["(ms)"] = "(ms)"  --(patterns)
  L["(need)"] = "(need)"  --(patterns)
  L["(os)"] = "(os)"  --(patterns)
  L["(greed)"] = "(greed)"  --(patterns)
  L["Mainspec Bids"] = "主天賦競拍"
  L["Offspec Bids"] = "副天賦競拍"
  L["Tooltip Additions"] = "滑鼠提示資訊"
  L["Add EPGP Information to Item Tooltips"] = "添加EPGP資訊到物品滑鼠提示"
  L["Export Loot"] = "導出拾取"
  L["Export Logs"] = "導出日誌"
  L["Export Standings"] = "導出EPGP排名"
  L["Select Price Scheme"] = "選擇價格方案"
  L["Select From Registered Price Systems"] = "從已有的註冊價格系統中選擇"
  L["%s is offline. Getting info from guild cache."] = "%s 離線了. 從公會緩存獲取資訊."
  L["BastionLoot will be saving to file in `\\WTF\\Account\\<ACCOUNT>\\SavedVariables\\BastionEPGP_Export.lua`"] = "BastionLoot 的日誌檔會保存在 `\\WTF\\Account\\<ACCOUNT>\\SavedVariables\\BastionEPGP_Export.lua` 中"
  L["Started Standby AFKCheck for 1min."] = "待命AFK檢查1分鐘,已開始"
  L["Standby AFKCheck finished."] = "待命AFK檢查已結束"
  L["Price system set to: %q %s"] = "價格系統設置為: %q %s"
  L["Bag hooks initialized"] = "Bag hooks initialized" -- needs translation
  L["|cffffff00%s|r is trying to add %s to Standby but {%s} is missing from Alt's Officer Note."] = "|cffffff00%s|r is trying to add %s to Standby but {%s} is missing from Alt's Officer Note." -- needs translation
  L["|cffffff00%s|r is trying to add themselves to Standby as a Main but are marked as an Alt of %s in Officer Note."] = "|cffffff00%s|r is trying to add themselves to Standby as a Main but are marked as an Alt of %s in Officer Note." -- needs translation
  L["Admin Actions"] = "Admin Actions" -- needs translation
  L["|cffff7f00Alt+Click|r to toggle Bids."] = "|cffff7f00Alt+Click|r to toggle Bids." -- needs translation
  L["|cffff7f00Shift+Click|r to toggle Loot."] = "|cffff7f00Shift+Click|r to toggle Loot." -- needs translation
  L["|cffff7f00Ctrl+Click|r to toggle Standby."] = "|cffff7f00Ctrl+Click|r to toggle Standby." -- needs translation
  L["|cffff7f00Ctrl+Alt+Click|r to toggle Alts."] = "|cffff7f00Ctrl+Alt+Click|r to toggle Alts." -- needs translation
  L["|cffff7f00Ctrl+Shift+Click|r to toggle Logs."] = "|cffff7f00Ctrl+Shift+Click|r to toggle Logs." -- needs translation
  L["|cffff7f00Right Click|r for %s."] = "|cffff7f00Right Click|r for %s." -- needs translation
  L["|cffff7f00Middle Click|r for %s"] = "|cffff7f00Middle Click|r for %s" -- needs translation
  L["Set Banker"] = "Set Banker" -- needs translation
  L["Set Disenchanter"] = "Set Disenchanter" -- needs translation
  L["Self"] = "Self" -- needs translation
  L["Random"] = "Random" -- needs translation
  L["Banker"] = "Banker" -- needs translation
  L["Disenchanter"] = "Disenchanter" -- needs translation
  L["BastionLoot browser"] = "BastionLoot browser" -- needs translation
  L["Item Type"] = "Item Type" -- needs translation
  L["Item Pool"] = "Item Pool" -- needs translation
  L["Favorites"] = "Favorites" -- needs translation
  L["Filter by Slot"] = "Filter by Slot" -- needs translation
  L["Filter by Tier"] = "Filter by Tier" -- needs translation
  L["Add Favorite"] = "Add Favorite" -- needs translation
  L["Remove Favorite"] = "Remove Favorite" -- needs translation
  L["Modifier Preview"] = "Modifier Preview" -- needs translation
  L["Right-click a row to add or remove a Favorite."] = "Right-click a row to add or remove a Favorite." -- needs translation
  L["Show Favorites Table."] = "Show Favorites Table." -- needs translation
  L["|cffff7f00Shift+Alt+Click|r to toggle Favorites."] = "|cffff7f00Shift+Alt+Click|r to toggle Favorites." -- needs translation
  L["|cffff7f00Alt+Click|r to toggle Favorites."] = "|cffff7f00Alt+Click|r to toggle Favorites." -- needs translation
  L["Bid Popup"] = "Bid Popup" -- needs translation
  L["Show a Bid Popup in addition to chat links"] = "Show a Bid Popup in addition to chat links" -- needs translation
  L["Bid Mainspec/Need"] = "Bid Mainspec/Need" -- needs translation
  L["Bid Offspec/Greed"] = "Bid Offspec/Greed" -- needs translation
  L["Bid Call for %s [%ds]"] = "Bid Call for %s [%ds]" -- needs translation
  L["Autoroll"] = "Autoroll" -- needs translation
  L["Coins"] = "Coins" -- needs translation
  L["Bijous"] = "Bijous" -- needs translation
  L["Scarabs"] = "Scarabs" -- needs translation
  L["Idols"] = "Idols" -- needs translation
  L["Class Idols"] = "Class Idols" -- needs translation
  L["Other Idols"] = "Other Idols" -- needs translation
  L["Export Favorites"] = "Export Favorites" -- needs translation
  L["%s >> Disenchant."] = "%s >> Disenchant." -- needs translation
  L["Capturing Bids for 5min."] = "Capturing Bids for 5min." -- needs translation
  L["Auto%s %s for %s"] = "Auto%s %s for %s" -- needs translation
  L["rolled"] = "rolled" -- needs translation
  L["passed"] = "passed" -- needs translation
  L["EPGP"] = "EPGP" -- needs translation
  L["PlusRoll"] = "PlusRoll" -- needs translation
  L["Mode of Operation"] = "Mode of Operation" -- needs translation
  L["Select mode of operation."] = "Select mode of operation." -- needs translation
  L["Mode set to %s."] = "Mode set to %s." -- needs translation
  L["BastionLoot reserves"] = "BastionLoot reserves" -- needs translation
  L["Export Reserves"] = "Export Reserves" -- needs translation
  L["Locked"] = "Locked" -- needs translation
  L["Unlocked"] = "Unlocked" -- needs translation
  L["Reserves are locked."] = "Reserves are locked." -- needs translation
  L["Right-click a row to manage player reserve."] = "Right-click a row to manage player reserve." -- needs translation
  L["Reserves are locked."] = "Reserves are locked." -- needs translation
  L["Reserve added."] = "Reserve added." -- needs translation
  L["Reserve updated."] = "Reserve updated." -- needs translation
  L["Remove Reserve"] = "Remove Reserve" -- needs translation
  L["Lock Reserve"] = "Lock Reserve" -- needs translation
  L["Unlock Reserve"] = "Unlock Reserve" -- needs translation
  L["(res)"] = "(res)" -- needs translation (pattern - don't remove parentheses)
  L["(reserve)"] = "(reserve)" -- needs translation (pattern - don't remove parentheses)
  L["Capturing Rolls for 2min."] = "Capturing Rolls for 2min." -- needs translation
  L["|cffFF3333|Hbepgproll:1:$ML|h[Reserve/Mainspec]|h|r"] = "|cffFF3333|Hbepgproll:1:$ML|h[Reserve/Mainspec]|h|r" -- needs translation (only the `Mainspec/NEED` phrase)
  L["|cff009900|Hbepgproll:2:$ML|h[Offspec/Sidegrade]|h|r"] = "|cff009900|Hbepgproll:2:$ML|h[Offspec/Sidegrade]|h|r" -- needs translation (only the `Offspec/GREED` phrase)
  L["Roll Mainspec/Reserve"] = "Roll Mainspec/Reserve" -- needs translation
  L["Roll Offspec/Sidegrade"] = "Roll Offspec/Sidegrade" -- needs translation
  L["Clearing old Rolls"] = "Clearing old Rolls" -- needs translation
  L["Reserve"] = "Reserve" -- needs translation
  L["Reserves"] = "Reserves" -- needs translation
  L["Wincount"] = "Wincount" -- needs translation
  L["Mainspec Rolls"] = "Mainspec Rolls" -- needs translation
  L["Offspec Rolls"] = "Offspec Rolls" -- needs translation
  L["Winning Reserve Roll: %s (%s)%s"] = "Winning Reserve Roll: %s (%s)%s" -- needs translation
  L["Winning Mainspec Roll: %s (%s) (+%s)"] = "Winning Mainspec Roll: %s (%s) (+%s)" -- needs translation
  L["Winning Offspec Roll: %s (%s)%s"] = "Winning Offspec Roll: %s (%s)%s" -- needs translation
  L["'/roll' (ms,res) or '/roll 50' (os) for %s"] = "'/roll' (ms,res) or '/roll 50' (os) for %s" -- needs translation
  L["%s looted to %s. Mark it as.."] = "%s looted to %s. Mark it as.." -- needs translation
  L["Mainspec"] = "Mainspec" -- needs translation
  L["Switch Mode"] = "Switch Mode" -- needs translation
  L["Switch Mode of Operation"] = "Switch Mode of Operation" -- needs translation
  L["Member Actions"] = "Member Actions" -- needs translation
  L["Manual Wincount"] = "Manual Wincount" -- needs translation
  L["Manually reset Wincount at end of raid."] = "Manually reset Wincount at end of raid." -- needs translation
  L["Clear Wincount"] = "Clear Wincount" -- needs translation
  L["Wincount Cleared."] = "Wincount Cleared." -- needs translation
  L["|cffff7f00Shift+Click|r to toggle Reserves."] = "|cffff7f00Shift+Click|r to toggle Reserves." -- needs translation
  L["BastionLoot bids [roll]"] = "BastionLoot bids [roll]" -- needs translation
  L["|cffff7f00Ctrl+Click|r to toggle Bids."] = "|cffff7f00Ctrl+Click|r to toggle Bids." -- needs translation
  L.STANDINGS_OVERLAY = [[
Your current guild rank does not show EPGP standings.

You can whisper |cffffd200!PR Name|r to any higher rank guild member with the addon to get back EPGP standings.]] -- needs translation
  L["{bepgp}%s has: %d EP %d GP %.03f PR."] = "{bepgp}%s has: %d EP %d GP |cffffff00%.03f|r|cffff7f00PR|r." -- needs translation (not the {bepgp} and patterns)
  L["{bepgp}You have: %d EP %d GP %.03f PR"] = "{bepgp}You have: %d EP %d GP %.03f PR" -- needs translation (not the {bepgp} and patterns)
  L["|cffff7f00Ctrl+Shift+Click|r to toggle Wincount."] = "|cffff7f00Ctrl+Shift+Click|r to toggle Wincount." -- needs translation
  L["BastionLoot wincount"] = "BastionLoot wincount" -- needs translation
  L["RaidID %s"] = "RaidID %s" -- needs translation
  L["Announce"] = "Announce" -- needs translation
  L["Alt Click"] = "Alt Click" -- needs translation
  L["Call for Rolls"] = "Call for Rolls" -- needs translation
  L["Skip Autoroll Items"] = "Skip Autoroll Items" -- needs translation
  L["Skip Autoroll Items from Wincount Prompts."] = "Skip Autoroll Items from Wincount Prompts." -- needs translation
  L["Logs"] = "Logs" -- needs translation
  L["Redo Assignment"] = "Redo Assignment" -- needs translation
  L["Right-click a row to redo assignment tag in case of error."] = "Right-click a row to redo assignment tag in case of error." -- needs translation
  L["Bench"] = "Bench" -- needs translation
  L["Suggest"] = "Suggest" -- needs translation
  L["Signups"] = "Signups" -- needs translation
  L["Suggest a bench breakdown"] = "Suggest a bench breakdown" -- needs translation
  L["Weekly Decay: %s%%"] = "Weekly Decay: %s%%" -- needs translation (not the patterns)
  L["Skipping %s. Main %q is also in the raid."] = "Skipping %s. Main %q is also in the raid." -- needs translation
  L["Import Standings"] = "Import Standings" -- needs translation
  L["BastionLoot raid roster"] = "BastionLoot raid roster" -- needs translation
  L["Export Raid Roster"] = "Export Raid Roster" -- needs translation
  L["Hide Rolls"] = "Hide Rolls" -- needs translation
  L["Hide other player rolls from the chatframe"] = "Hide other player rolls from the chatframe" -- needs translation
  L["%s is %s and %s is an Alt of %s. Skipping %s."] = "%s is %s and %s is an Alt of %s. Skipping %s." -- needs translation
    L["Skip Stackable Items"] = "Skip Stackable Items" -- needs translation
  L["Skip Stackable Items from Wincount Prompts."] = "Skip Stackable Items from Wincount Prompts." -- needs translation
  L["res"] = "res" -- needs translation
  L["reserve"] = "reserve" -- needs translation
  L["%s Reserves:"] = "%s Reserves:" -- needs translation
  L["Scraps"] = "Scraps" -- needs translation
  L["Clear reserves"] = "Clear reserves" -- needs translation
  L["Soft reserves Cleared."] = "Soft reserves Cleared." -- needs translation
  L["Whisper %s \`res [itemlink]\` to soft reserve."] = "Whisper %s \`res [itemlink]\` to soft reserve." -- needs translation
  L["Call"] = "Call" -- needs translation
  L["Favorite Alert"] = "Favorite Alert" -- needs translation
  L["Alert presence of Favorite Link or Loot"] = "Alert presence of Favorite Link or Loot" -- needs translation
  L["BastionLoot Favorite: %s"] = "BastionLoot Favorite: %s" -- needs translation
  L["All EP and GP data has been reset."] = "All EP and GP data has been reset." -- needs translation
  L["|cffff0000Are you sure you want to wipe all EPGP data?|r"] = "|cffff0000Are you sure you want to wipe all EPGP data?|r" -- needs translation
  L["Useful for"] = "Useful for" -- needs translation
  L["EPGP Info"] = "EPGP Info" -- needs translation
  L["Masterlooter Hints"] = "Masterlooter Hints" -- needs translation
  L["Show Masterlooter click action hints on item tooltips"] = "Show Masterlooter click action hints on item tooltips" -- needs translation
  L["Favorites Info"] = "Favorites Info" -- needs translation
  L["Show Favorite ranking on item tooltips"] = "Show Favorite ranking on item tooltips" -- needs translation
  L["Usable Info"] = "Usable Info" -- needs translation
  L["Show Class and Spec Hints on item tooltips"] = "Show Class and Spec Hints on item tooltips" -- needs translation
  L["Tooltip"] = "Tooltip" -- needs translation
  L["Award GP"] = "Award GP" -- needs translation
  L["|cff00ff00Guild members|r that win items also get awarded GP.\n|cffFFFF33Checked:|r Mainspec AND Reserve wins.\n|cffD3D3D3Grey:|r Reserve wins ONLY."] = "|cff00ff00Guild members|r that win items also get awarded GP.\n|cffFFFF33Checked:|r Mainspec AND Reserve wins.\n|cffD3D3D3Grey:|r Reserve wins ONLY." -- needs translation
  L["ItemID"] = "ItemID" -- needs translation
  L["Ignore Wincount"] = "Ignore Wincount" -- needs translation
  L["Ignore Wincount for bid sorting.\n(plain SR > MS > OS, no +1)"] = "Ignore Wincount for bid sorting.\n(plain SR > MS > OS, no +1)" -- needs translation
  L["Token Info"] = "Token Info" -- needs translation
  L["Show required trade-in Item on item tooltips"] = "Show required trade-in Item on item tooltips" -- needs translation
  L["Token for:"] = "Token for:" -- needs translation

  bepgp.L = L
