local addonName, bepgp = ...
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "zhCN")
if not L then return end
  --["Term"] = "术语", -- Example
  -- common
  L["Refresh"] = "刷新"
  L["Refresh window"] = "刷新窗口"
  L["Clear"] = "清除"
  L["Name"] = "名字"
  L["Raid Only"] = "只显示团队"
  L["Only show members in raid."] = "只显示在团队里的成员"
  -- bids
  L["BastionLoot bids"] = "BastionLoot 竞拍"
  L["Winning Mainspec Bid: %s (%.03f PR)"] = "副天赋竞标获胜: %s (%.03f PR)"
  L["Winning Offspec Bid: %s (%.03f PR)"] = "副天赋竞标获胜: %s (%.03f PR)"
  -- logs
  L["BastionLoot logs"] = "BastionLoot 日志"
  L["Clear Logs."] = "清除日志"
  L["Time"] = "时间"
  L["Action"] = "行为"
  -- loot
  L["BastionLoot loot info"] = "BastionLoot 拾取信息"
  L["Clear Loot"] = "清除拾取"
  L["Item"] = "物品"
  L["Binds"] = "竞拍"
  L["Looter"] = "拾取人"
  L["GP Action"] = "GP 行为"
  -- migrations
  L["Updated %d members to v3 storage."] = "更新 %d 成员到v3存储区"
  -- standby
  L["BastionLoot standby"] = "BastionLoot 替补成员" -- needs update
  L["Countdown"] = "倒计时"
  L["Rank"] = "会阶"
  L["OnAlt"] = "在小号"
     -- standings
  L["Ctrl-C to copy. Esc to close."] = "Ctrl-C 复制. Esc 退出."
  L["Ctrl-V to paste data. Esc to close."] = "Ctrl-V 粘贴数据. Esc 退出."
  L["Imported %d members."] = "导入 %d 成员."
  L["Imported %d members.\n"] = "导入 %d 成员.\n"
  L["%s\nFailed to import:"] = "%s\n未能导入:"
  L["BastionLoot standings"] = "BastionLoot 名单列表"
  L["Group by class"] = "由职业分组"
  L["Group members by class."] = "按职业分组"
  L["Export"] = "导出"
  L["Export standings to csv."] = "导出排名到CSV文本."
  L["Import"] = "导入"
  L["Import standings from csv."] = "从CSV文本里导入数据."
  L["ep"] = "ep(贡献点)"
  L["gp"] = "gp(装备点)"
  L["pr"] = "pr(优先)"
  L.IMPORT_WARNING = [[警告:
导入会覆盖所有现有的EPGP值.

粘贴这里的所有CSV数据替换文本,
然后再导入.
完成后打印结果.]]
  L["Group by armor"] = "由护甲类型分组"
  L["Group members by armor."] = "按护甲的类型分组"
  L["Group by roles"] = "由职责分组"
  L["Group members by roles."] = "按职业分组"
  L["CLOTH"] = "布甲"
  L["LEATHER"] = "皮甲"
  L["MAIL"] = "锁甲"
  L["PLATE"] = "板甲"
  L["TANK"] = "坦克"
  L["HEALER"] = "治疗"
  L["CASTER"] = "法术"
  L["PHYS DPS"] = "物理 DPS"
  -- BastionLoot
  L["{BEPGP}Type \"+\" if on main, or \"+<YourMainName>\" (without quotes) if on alt within %dsec."] = "{BEPGP}使用 \"+\" 如果你在大号上, 或者 \"+<YourMainName>\" (没有引号) 如果在小号 %d秒."
  L["|cffFF3333|Hbepgpbid:1:$ML|h[Mainspec/NEED]|h|r"] = "|cffFF3333|Hbepgpbid:1:$ML|h[主天赋/需求]|h|r"
  L["|cff009900|Hbepgpbid:2:$ML|h[Offspec/GREED]|h|r"] = "|cff009900|Hbepgpbid:2:$ML|h[副天赋/贪婪]|h|r"
  L["Bids"] = "竞标"
  L["Show Bids Table."] = "显示竞标表."
  L["ClearLoot"] = "清除拾取"
  L["Clear Loot Table."] = "清除拾取表."
  L["ClearLogs"] = "清除日志"
  L["Clear Logs Table."] = "清除日志表."
  L["Standings"] = "排名"
  L["Show Standings Table."] = "显示排名表."
  L["Restart"] = "重新开始"
  L["Restart BastionLoot if having startup problems."] = "重新开始 BastionLoot，如果有启动问题."
  L["Standings"] = "排名"
  L["Show Standings Table."] = "显示排名表."
  L["v%s Loaded."] = "v%s 加载."
  L["Alt Click/RClick/MClick"] = "Alt+左键/右键/中键"
  L["Call for: MS/OS/Both"] = "要求: MS/OS/Both"
  L["gp:|cff32cd32%d|r gp_os:|cff20b2aa%d|r"] = "gp:|cff32cd32%d|r 副天赋gp:|cff20b2aa%d|r"
  L["pr:|cffff0000%.02f|r(%.02f) pr_os:|cffff0000%.02f|r(%.02f)"] = "pr:|cffff0000%.02f|r(%.02f) 副天赋pr:|cffff0000%.02f|r(%.02f)"
  L["|cffff0000Finished|r"] = "|cffff0000完成|r"
  L["|cff00ff00%02d|r|cffffffffsec|r"] = "|cff00ff00%02d|r|cffffffff秒|r"
  L["Manually modified %s\'s note. EPGP was %s"] = "手动修改 %s\'s 记录. EPGP 是 %s"
  L["|cffff0000Manually modified %s\'s note. EPGP was %s|r"] = "|cffff0000手动修改 %s\'s 记录. EPGP 是 %s|r"
  L["Whisper %s a + for %s (mainspec)"] = "私聊 %s + 为 %s (主天赋)"
  L["Whisper %s a - for %s (offspec)"] = "私聊 %s - 为 %s (副天赋)"
  L["Whisper %s a + or - for %s (mainspec or offspec)"] = "私聊 %s + 或 - 为 %s (主天赋或副天赋)"
  L["Click $MS or $OS for %s"] = "点击 $MS 或 $OS 为: %s"
  L["or $OS "] = "或 $OS "
  L["$MS or "] = "$MS 或 "
  L["You have received a %d EP penalty."] = "你已经收到了 %d EP 处罚."
  L["You have been awarded %d EP."] = "你被授予 %d EP."
  L["You have gained %d GP."] = "你得到了 %d GP."
  L["%s%% decay to EP and GP."] = "%s%% 递减EP和GP."
  L["%d EP awarded to Raid."] = "%d EP 授予团队."
  L["%d EP awarded to Standby."] = "%d EP 授予替补队员." -- needs update
  L["New %s version available: |cff00ff00%s|r"] = "新的 %s 版本可用: |cff00ff00%s|r"
  L["Visit %s to update."] = "访问 %s 升级."
  L["New raid progress"] = "新的RAID进度"
  L[", offspec price %"] = ", 副天赋价格 %"
  L["New offspec price %"] = "新的副天赋价格 %"
  L[", decay %"] = ", 递减 %"
  L["New decay %"] = "新的递减 %"
  L[" settings accepted from %s"] = " 设置接受从 %s"
  L["Giving %d ep to all raidmembers"] = "给予 %d ep 到所有团员"
  L["You aren't in a raid dummy"] = "你不在一个团队"
  L["Giving %d ep to active standby"] = "给予 %d ep 在线的替补队员" -- needs update
  L["Giving %d ep to %s%s."] = "给予 %d ep 给 %s"
  L["%s EP Penalty to %s%s."] = "%s EP 惩罚 %s."
  L["Giving %d gp to %s%s."] = "给予 %d gp 给 %s"
  L["Awarding %d GP to %s%s. (Previous: %d, New: %d)"] = "奖励 %d GP 给 %s. (以前: %d, 新: %d)"
  L["%s\'s officernote is broken:%q"] = "%s\'s 官员备注无法执行:%q"
  L["All EP and GP decayed by %d%%"] = "所有EP和GP递减 %d%%"
  L["All EP and GP decayed by %s%%"] = "所有EP和GP递减 %s%%"
  L["All GP has been reset to %d."] = "所有GP已重置为 %d."
  L["All EP and GP has been reset to 0/%d."] = "所有EP和GP已重置为 0/%d."
  L["You now have: %d EP %d GP |cffffff00%.03f|r|cffff7f00PR|r."] = "你现在有: %d EP %d GP |cffffff00%.03f|r|cffff7f00PR|r."
  L["Close to EPGP Cap. Next Decay will change your |cffff7f00PR|r by |cffff0000%.4g|r."] = "下次递减会改变你的 |cffff7f00PR|r 从 |cffff0000%.4g|r."
  L["|cffff7f00Click|r to toggle Standings."] = "|cffff7f00点击|r 切换名单." -- needs update
  L["Account EPs to %s."] = "记账 EP 到 %s."
  L["Account GPs to %s."] = "记账 GP 到 %s."
  L["BastionLoot options"] = "BastionLoot 设置"
  L["+EPs to Member"] = "+EP给成员"
  L["Account EPs for member."] = "记账 EP 给成员."
  L["+EPs to Raid"] = "+EP给团队"
  L["Award EPs to all raid members."] = "奖励 EP 给所有团队成员."
  L["+GPs to Member"] = "+GP给成员"
  L["Account GPs for member."] = "记账 GP给成员."
  L["+EPs to Standby"] = "+EP给替补队员" -- needs update
  L["Award EPs to all active Standby."] = "奖励EP给所有在线的替补队员." -- needs update
  L["Enable Standby"] = "激活替补成员" -- needs update
  L["Participate in Standby Raiders List.\n|cffff0000Requires Main Character Name.|r"] = "参与在备用团队列表.\n|cffff0000要求大号名字.|r" -- needs update
  L["AFK Check Standby"] = "替补队员AFK检查" -- needs update
  L["AFK Check Standby List"] = "检查AFK的替补成员" -- needs update
  L["Set Main"] = "设置大号"
  L["Set your Main Character for Standby List."] = "设置你的大号人物为替补成员列表." -- needs update
  L["Raid Progress"] = "公会raid进度"
  L["Highest Tier the Guild is raiding.\nUsed to adjust GP Prices.\nUsed for suggested EP awards."] = "设置公会的最高raid进度.\n用于调整GP价格.\n用于自动调整推荐EP奖励值."
  L["4.Naxxramas"] = "4.纳克萨玛斯"
  L["3.Temple of Ahn\'Qiraj"] = "3.安其拉神殿"
  L["2.Blackwing Lair"] = "2.黑翼之巢"
  L["1.Molten Core"] = "1.熔火之心"
  L["Reporting channel"] = "报告频道"
  L["Channel used by reporting functions."] = "报告功能使用的频道."
  L["Decay EPGP"] = "递减 EPGP"
  L["Decays all EPGP by %s%%"] = "递减所有 EPGP 从 %s%%"
  L["Set Decay %"] = "设置递减 %"
  L["Set Decay percentage (Admin only)."] = "设置递减百分比 (只能管理员)."
  L["Offspec Price %"] = "副天赋价值 %"
  L["Set Offspec Items GP Percent."] = "设置副天赋物品 GP 百分比."
  L["Reset EPGP"] = "重置 EPGP"
  L["Resets everyone\'s EPGP to 0/%d (Guild Leader only)."] = "重置所有人的 EPGP 到 0/%d (只能管理员)."
  L["Scanning %d members for EP/GP data. (%s)"] = "扫描 %d 成员 EP/GP 数据. (%s)"
  L["|cffff0000%s|r trying to add %s to Standby, but has already added a member. Discarding!"] = "|cffff0000%s|r 试图添加 %s 给替补成员, 但已经增加了一个成员。" -- needs update
  L["|cffff0000%s|r has already been added to Standby. Discarding!"] = "|cffff0000%s|r 已经添加到替补成员." -- needs update
  L["^{BEPGP}Type"] = "^{BEPGP}使用"
  L["Clearing old Bids"] = "结算之前的竞拍"
  L["%s not found in the guild or not raid level!"] = "%s 没有在公会中找到或不是最高级别！"
  L["Molten Core"] = "熔火之心"
  L["Onyxia\'s Lair"] = "奥妮克希亚的巢穴"
  L["Blackwing Lair"] = "黑翼之巢"
  L["Ahn\'Qiraj"] = "安其拉"
  L["Naxxramas"] = "纳克萨玛斯"
  L["There are %d loot drops stored. It is recommended to clear loot info before a new raid. Do you want to clear it now?"] = "这个 %d 掉落是个战利品. 建议在新的RAID之前清除拾取物信息. 你现在想清除它吗？"
  L["Show me"] = "秀出來"
  L["Loot info cleared"] = "战利品信息清除"
  L["Loot info can be cleared at any time from the loot window or '/bastionloot clearloot' command"] = "拾取信息可以随时从小地图上下文菜单中清除，或者用 '/shooty clearloot' 命令" -- needs update
  L["Set your main to be able to participate in Standby List EPGP Checks."] = "设定你的主要人物到参与替补成员EPGP检查清单." -- needs update
  L["Standby AFKCheck. Are you available? |cff00ff00%0d|rsec."] = "替补成员AFK检查. 你在吗? |cff00ff00%0d|r秒." -- needs update
  L["|cffff0000Are you sure you want to Reset ALL EPGP?|r"] = "|cffff0000您确定要重置全部 EPGP?|r"
  L["Add MainSpec GP"] = "添加主天赋 GP"
  L["Add OffSpec GP"] = "添加副天赋 GP"
  L["Bank or D/E"] = "公会银行或分解师"
  L["%s looted %s. What do you want to do?"] = "%s 拾取了 %s. 你想做什么？"
  L["GP Actions"] = "GP 操作"
  L["Remind me Later"] = "以后提醒我"
  L["Need MasterLooter to perform Bid Calls!"] = "需要拾取分配者执行竞拍!"
  L["BastionLoot alts"] = "BastionLoot 小号"
  L["Enable Alts"] = "启用小号"
  L["Main"] = "大号"
  L["Alt"] = "小号"
  L["Allow Alts to use Main\'s EPGP."] = "允许小号使用大号的 EPGP."
  L["Alts EP %"] = "小号 EP %"
  L["Set the % EP Alts can earn."] = "设置 % EP 小号可以赚取."
  L[", alts"] = ", 小号"
  L["New Alts"] = "新小号"
  L[", alts ep %"] = ", 小号 ep %"
  L["New Alts EP %"] = "新小号 EP %"
  L["Manually modified %s\'s note. Previous main was %s"] = "手动调整 %s 的备注. 以前的大号是 %s"
  L["|cffff0000Manually modified %s\'s note. Previous main was %s|r"] = "|cffff0000手动调整 %s 的备注. 以前的大号是 %s|r"
  L[", %s\'s Main."] = ", %s 的大号."
  L["Your main has been set to %s"] = "你的大号设置为 %s"
  L["Alts"] = "小号"
  L["Logs cleared"] = "清除日志"
  L["Restarted"] = "重新启动"
  L["Progress"] = "进度"
  L["Print Progress Multiplier."] = "打印进度调整器."
  L["Offspec"] = "副天赋"
  L["Print Offspec Price."] = "打印副天赋价格."
  L["Progress Setting: %s"] = "进度设置: %s"
  L["Offspec Price: %s%%"] = "副天赋价格: %s%%"
  L["Minimum EP: %s"] = "最小值 EP: %s"
  L["Minimum EP"] = "最小值 EP"
  L["Set Minimum EP"] = "设置最小值 EP"
  L["New Minimum EP"] = "新最小值 EP"
  L["Standby"] = "替补"
  L["BoP"] = "拾绑"
  L["BoE"] = "装绑"
  L["NoBind"] = "无绑定"
  L["Mainspec GP"] = "主天赋 GP"
  L["Offspec GP"] = "服天赋 GP"
  L["Bank-D/E"] = "银行/分解"
  L["Unassigned"] = "未指定"
  L["Admin Options"] = "管理员选项"
  L["Member Options"] = "成员选项"
  L["Hide from Minimap"] = "隐藏小地图"
  L["You are assigning %s %s to %s."] = "你正在分配 %d %s 给 %s."
  L["Effort Points"] = "努力点"
  L["Gear Points"] = "装备点"
  L["Armor Class"] = "护甲职业"
  L["(ms)"] = "(ms)"  --(patterns)
  L["(need)"] = "(need)"  --(patterns)
  L["(os)"] = "(os)"  --(patterns)
  L["(greed)"] = "(greed)"  --(patterns)
  L["Mainspec Bids"] = "主天赋竞拍"
  L["Offspec Bids"] = "副天赋竞拍"
  L["Tooltip Additions"] = "鼠标提示信息"
  L["Add EPGP Information to Item Tooltips"] = "添加EPGP信息到物品鼠标提示"
  L["Export Loot"] = "导出拾取"
  L["Export Logs"] = "导出日志"
  L["Export Standings"] = "导出EPGP排名"
  L["Select Price Scheme"] = "选择价格方案"
  L["Select From Registered Price Systems"] = "从已有的注册价格系统中选择"
  L["%s is offline. Getting info from guild cache."] = "%s 离线了. 从公会缓存获取信息."
  L["BastionLoot will be saving to file in `\\WTF\\Account\\<ACCOUNT>\\SavedVariables\\BastionEPGP_Export.lua`"] = "BastionLoot 的日志文件会保存在 `\\WTF\\Account\\<ACCOUNT>\\SavedVariables\\BastionEPGP_Export.lua` 中"
  L["Started Standby AFKCheck for 1min."] = "替补AFK检查1分钟,已开始"
  L["Standby AFKCheck finished."] = "替补AFK检查已结束"
  L["Price system set to: %q %s"] = "价格系统设置为: %q %s"
  L["Bag hooks initialized"] = "Bag hooks initialized" -- needs translation
  L["|cffffff00%s|r is trying to add %s to Standby but {%s} is missing from Alt's Officer Note."] = "|cffffff00%s|r is trying to add %s to Standby but {%s} is missing from Alt's Officer Note."
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
  L["Reserve removed."] = "Reserve removed." -- needs translation
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
  L["reserves"] = "reserves" -- needs translation
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
  L["Class/Role Discount"] = "Class or Role Discount" -- needs translation
  L.DISCOUNT_HINT = "Check Discount for;• One-handed to Melee for Off-hand;• One-handed to Tank or Hunter;• Shield to non-Tank;• Two-handed weapon to Hunter;• Two-handed weapon to TitanGrip for Off-hand;• Ranged weapon to Tank or Melee;• Wand" -- needs translation
  L["5.RS"] = "5.RS" -- needs translation
  L["4.ICC, VoA-T"] = "4.ICC, VoA-T" -- needs translation
  L["3.ToCR/Ony, VoA-K"] = "3.ToCR/Ony, VoA-K" -- needs translation
  L["2.Ulduar, VoA-E"] = "2.Ulduar, VoA-E" -- needs translation
  L["1.Naxx/OS/EoE, VoA-A"] = "1.Naxx/OS/EoE, VoA-A" -- needs translation
  L["Rank Priority"] = "Rank Priority" -- needs translation
  L["Select Rank for increased Loot Prio\n(Selected Rank and Higher override PR of lower ranks)"] = "Select Rank for increased Loot Prio\n(Selected Rank and Higher override PR of lower ranks)" -- needs translation
  L["Rank Priority MS"] = "Rank Priority MS" -- needs translation
  L["Rank Priority only applies to MS bids"] = "Rank Priority only applies to MS bids" -- needs translation
  L["+RankPrio"] = "+RankPrio" -- needs translation
  L[",MinEP:%d"] = ",MinEP:%d" -- needs translation
  L["Filter by Item Type"] = "Filter by Item Type" -- needs translation
  L["AtlasLootClassic and eightyupgrades.com exports are supported"] = "AtlasLootClassic and eightyupgrades.com exports are supported" -- needs translation
  L.DISENCHANT_TIP_HINT = "Click to announce item is going to Disenchant" -- needs translation
  L.OSBID_SHUFFLE_TIP_HINT = "Click to randomize bids order" -- needs translation
  L.BIDS_PAUSE_TIP_HINT = "Click to freeze/unfreeze bids countdown" -- needs translation
  L.BIDS_RES_SHOW_TIP_HINT = "Click to show Reserves" -- needs translation
  L["Offspec Bids Shuffled"] = "Offspec Bids Shuffled" -- needs translation
  L["Announce Loot"] = "Announce Loot" -- needs translation
  L["Auto link loot to your Group when Masterlooter"] = "Auto link loot to your Group when Masterlooter" -- needs translation
  -- Raid Loot Containers
  L["Four Horsemen Chest"] = "Four Horsemen Chest" -- needs translation
  L["Alexstrasza's Gift"] = "Alexstrasza's Gift" -- needs translation
  L["Heart of Magic"] = "Heart of Magic" -- needs translation
  L["Freya's Gift"] = "Freya's Gift" -- needs translation
  L["Cache of Innovation"] = "Cache of Innovation" -- needs translation
  L["Cache of Storms"] = "Cache of Storms" -- needs translation
  L["Cache of Winter"] = "Cache of Winter" -- needs translation
  L["Rare Cache of Winter"] = "Rare Cache of Winter" -- needs translation
  L["Cache of Living Stone"] = "Cache of Living Stone" -- needs translation
  L["Gift of the Observer"] = "Gift of the Observer" -- needs translation
  L["Champions' Cache"] = "Champions' Cache" -- needs translation
  L["Argent Crusade Tribute Chest"] = "Argent Crusade Tribute Chest" -- needs translation
  L["Gunship Armory"] = "Gunship Armory" -- needs translation
  L["Deathbringer's Cache"] = "Deathbringer's Cache" -- needs translation
  L["Cache of the Dreamwalker"] = "Cache of the Dreamwalker" -- needs translation
  L["Delay Updates"] = "Delay Updates" -- needs translation
  L["Time in seconds between roster updates and initial roster scan.\nCan try higher values as a workaround for other addon compatibility issues (eg. Questie)"] = "Time in seconds between roster updates and initial roster scan.\nCan try higher values as a workaround for other addon compatibility issues (eg. Questie)" -- needs translation
  L["Extra Messages"] = "Extra Messages" -- needs translation
  L["Select the Chatframe to print Extra Informational messages to."] = "Select the Chatframe to print Extra Informational messages to." -- needs translation

  bepgp.L = L
