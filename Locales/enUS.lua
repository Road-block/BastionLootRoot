local addonName, bepgp = ...
local L = LibStub("AceLocale-3.0"):NewLocale(addonName, "enUS", true)
if not L then return end
  --["Term"] = true -- Example
  -- common
  L["Refresh"] = true
  L["Refresh window"] = true
  L["Clear"] = true
  L["Name"] = true
  L["Raid Only"] = true
  L["Only show members in raid."] = true
  L["Restarted"] = true
  L["Progress"] = true
  L["Print Progress Multiplier."] = true
  L["Offspec"] = true
  L["Print Offspec Price."] = true
  L["Progress Setting: %s"] = true
  L["Offspec Price: %s%%"] = true
  L["Minimum EP: %s"] = true
  L["Minimum EP"] = true
  L["Set Minimum EP"] = true
  -- bids
  L["BastionLoot bids"] = true
  L["Winning Mainspec Bid: %s (%.03f PR)"] = true
  L["Winning Offspec Bid: %s (%.03f PR)"] = true
  -- logs
  L["BastionLoot logs"] = true
  L["Clear Logs."] = true
  L["Time"] = true
  L["Action"] = true
  -- loot
  L["BastionLoot loot info"] = true
  L["Clear Loot"] = true
  L["Export Loot"] = true
  L["Item"] = true
  L["Binds"] = true
  L["Looter"] = true
  L["GP Action"] = true
  -- migrations
  L["Updated %d members to v3 storage."] = true
  -- standby
  L["BastionLoot standby"] = true
  L["Countdown"] = true
  L["Rank"] = true
  L["OnAlt"] = true
  -- standings
  L["Ctrl-C to copy. Esc to close."] = true
  L["Ctrl-V to paste data. Esc to close."] = true
  L["Imported %d members."] = true
  L["Imported %d members.\n"] = true
  L["%s\nFailed to import:"] = true
  L["BastionLoot standings"] = true
  L["Group by class"] = true
  L["Group members by class."] = true
  L["Export"] = true
  L["Export standings to csv."] = true
  L["Export Standings"] = true
  L["Import"] = true
  L["Import standings from csv."] = true
  L["ep"] = true
  L["gp"] = true
  L["pr"] = true
  L.IMPORT_WARNING = [[Warning:
Import overwrites all existing EPGP values.

Paste all the csv data here replacing this text,
then hit Import.
Results will print here when done.]]
  L["Group by armor"] = true
  L["Group members by armor."] = true
  L["Group by roles"] = true
  L["Group members by roles."] = true
  L["CLOTH"] = true
  L["LEATHER"] = true
  L["MAIL"] = true
  L["PLATE"] = true
  L["TANK"] = true
  L["HEALER"] = true
  L["CASTER"] = true
  L["PHYS DPS"] = true
  -- BastionLoot
  L["{BEPGP}Type \"+\" if on main, or \"+<YourMainName>\" (without quotes) if on alt within %dsec."] = true
  L["|cffFF3333|Hbepgpbid:1:$ML|h[Mainspec/NEED]|h|r"] = true
  L["|cff009900|Hbepgpbid:2:$ML|h[Offspec/GREED]|h|r"] = true
  L["Bids"] = true
  L["Show Bids Table."] = true
  L["ClearLoot"] = true
  L["Clear Loot Table."] = true
  L["ClearLogs"] = true
  L["Export Logs"] = true
  L["Clear Logs Table."] = true
  L["Standings"] = true
  L["Show Standings Table."] = true
  L["Restart"] = true
  L["Restart BastionLoot if having startup problems."] = true
  L["v%s Loaded."] = true
  L["Alt Click/RClick/MClick"] = true
  L["Call for: MS/OS/Both"] = true
  L["gp:|cff32cd32%d|r gp_os:|cff20b2aa%d|r"] = true
  L["pr:|cffff0000%.02f|r(%.02f) pr_os:|cffff0000%.02f|r(%.02f)"] = true
  L["|cffff0000Finished|r"] = true
  L["|cff00ff00%02d|r|cffffffffsec|r"] = true
  L["Manually modified %s\'s note. EPGP was %s"] = true
  L["|cffff0000Manually modified %s\'s note. EPGP was %s|r"] = true
  L["Whisper %s a + for %s (mainspec)"] = true
  L["Whisper %s a - for %s (offspec)"] = true
  L["Whisper %s a + or - for %s (mainspec or offspec)"] = true
  L["Click $MS or $OS for %s"] = true
  L["or $OS "] = true
  L["$MS or "] = true
  L["You have received a %d EP penalty."] = true
  L["You have been awarded %d EP."] = true
  L["You have gained %d GP."] = true
  L["%s%% decay to EP and GP."] = true
  L["%d EP awarded to Raid."] = true
  L["%d EP awarded to Standby."] = true
  L["New %s version available: |cff00ff00%s|r"] = true
  L["Visit %s to update."] = true
  L["New raid progress"] = true
  L[", offspec price %"] = true
  L["New offspec price %"] = true
  L[", decay %"] = true
  L["New decay %"] = true
  L[" settings accepted from %s"] = true
  L["Giving %d ep to all raidmembers"] = true
  L["You aren't in a raid dummy"] = true
  L["Giving %d ep to active standby"] = true
  L["Giving %d ep to %s%s."] = true
  L["%s EP Penalty to %s%s."] = true
  L["Giving %d gp to %s%s."] = true
  L["Awarding %d GP to %s%s. (Previous: %d, New: %d)"] = true
  L["%s\'s officernote is broken:%q"] = true
  L["All EP and GP decayed by %d%%"] = true
  L["All EP and GP decayed by %s%%"] = true
  L["All GP has been reset to %d."] = true
  L["All EP and GP has been reset to 0/%d."] = true
  L["You now have: %d EP %d GP |cffffff00%.03f|r|cffff7f00PR|r."] = true
  L["Close to EPGP Cap. Next Decay will change your |cffff7f00PR|r by |cffff0000%.4g|r."] = true
  L["|cffff7f00Click|r to toggle Standings."] = true
  L["Account EPs to %s."] = true
  L["Account GPs to %s."] = true
  L["BastionLoot options"] = true
  L["+EPs to Member"] = true
  L["Account EPs for member."] = true
  L["+EPs to Raid"] = true
  L["Award EPs to all raid members."] = true
  L["+GPs to Member"] = true
  L["Account GPs for member."] = true
  L["+EPs to Standby"] = true
  L["Award EPs to all active Standby."] = true
  L["Enable Standby"] = true
  L["Participate in Standby Raiders List.\n|cffff0000Requires Main Character Name.|r"] = true
  L["AFK Check Standby"] = true
  L["AFK Check Standby List"] = true
  L["Set Main"] = true
  L["Set your Main Character for Standby List."] = true
  L["Raid Progress"] = true
  L["Highest Tier the Guild is raiding.\nUsed to adjust GP Prices.\nUsed for suggested EP awards."] = true
  L["4.Naxxramas"] = true
  L["3.Temple of Ahn\'Qiraj"] = true
  L["2.Blackwing Lair"] = true
  L["1.Molten Core"] = true
  L["Reporting channel"] = true
  L["Channel used by reporting functions."] = true
  L["Decay EPGP"] = true
  L["Decays all EPGP by %s%%"] = true
  L["Set Decay %"] = true
  L["Set Decay percentage (Admin only)."] = true
  L["Offspec Price %"] = true
  L["Set Offspec Items GP Percent."] = true
  L["Reset EPGP"] = true
  L["Resets everyone\'s EPGP to 0/%d (Guild Leader only)."] = true
  L["Scanning %d members for EP/GP data. (%s)"] = true
  L["|cffff0000%s|r trying to add %s to Standby, but has already added a member. Discarding!"] = true
  L["|cffff0000%s|r has already been added to Standby. Discarding!"] = true
  L["^{BEPGP}Type"] = true
  L["Clearing old Bids"] = true
  L["%s not found in the guild or not raid level!"] = true
  L["Molten Core"] = true
  L["Onyxia\'s Lair"] = true
  L["Blackwing Lair"] = true
  L["Ahn\'Qiraj"] = true
  L["Naxxramas"] = true
  L["There are %d loot drops stored. It is recommended to clear loot info before a new raid. Do you want to clear it now?"] = true
  L["Show me"] = true
  L["Logs cleared"] = true
  L["Loot info cleared"] = true
  L["Loot info can be cleared at any time from the loot window or '/bastionloot clearloot' command"] = true
  L["Set your main to be able to participate in Standby List EPGP Checks."] = true
  L["Standby AFKCheck. Are you available? |cff00ff00%0d|rsec."] = true
  L["|cffff0000Are you sure you want to Reset ALL EPGP?|r"] = true
  L["Add MainSpec GP"] = true
  L["Add OffSpec GP"] = true
  L["Bank or D/E"] = true
  L["%s looted %s. What do you want to do?"] = true
  L["GP Actions"] = true
  L["Remind me Later"] = true
  L["Need MasterLooter to perform Bid Calls!"] = true
  L["BastionLoot alts"] = true
  L["Enable Alts"] = true
  L["Main"] = true
  L["Alt"] = true
  L["Allow Alts to use Main\'s EPGP."] = true
  L["Alts EP %"] = true
  L["Set the % EP Alts can earn."] = true
  L[", alts"] = true
  L["New Alts"] = true
  L[", alts ep %"] = true
  L["New Alts EP %"] = true
  L["Manually modified %s\'s note. Previous main was %s"] = true
  L["|cffff0000Manually modified %s\'s note. Previous main was %s|r"] = true
  L[", %s\'s Main."] = true
  L["Your main has been set to %s"] = true
  L["Alts"] = true
  L["New Minimum EP"] = true
  L["Standby"] = true
  L["BoP"] = true
  L["BoE"] = true
  L["NoBind"] = true
  L["Mainspec GP"] = true
  L["Offspec GP"] = true
  L["Bank-D/E"] = true
  L["Unassigned"] = true
  L["Admin Options"] = true
  L["Member Options"] = true
  L["Hide from Minimap"] = true
  L["You are assigning %s %s to %s."] = true
  L["Effort Points"] = true
  L["Gear Points"] = true
  L["Armor Class"] = true
  L["(ms)"] = true
  L["(need)"] = true
  L["(os)"] = true
  L["(greed)"] = true
  L["Mainspec Bids"] = true
  L["Offspec Bids"] = true
  L["Tooltip Additions"] = true
  L["Add EPGP Information to Item Tooltips"] = true
  L["Select Price Scheme"] = true
  L["Select From Registered Price Systems"] = true
  L["%s is offline. Getting info from guild cache."] = true
  L["BastionLoot will be saving to file in `\\WTF\\Account\\<ACCOUNT>\\SavedVariables\\BastionEPGP_Export.lua`"] = true
  L["Started Standby AFKCheck for 1min."] = true
  L["Standby AFKCheck finished."] = true
  L["Price system set to: %q %s"] = true
  L["Bag hooks initialized"] = true
  L["|cffffff00%s|r is trying to add %s to Standby but {%s} is missing from Alt's Officer Note."] = true
  L["|cffffff00%s|r is trying to add themselves to Standby as a Main but are marked as an Alt of %s in Officer Note."] = true
  L["Admin Actions"] = true
  L["|cffff7f00Alt+Click|r to toggle Bids."] = true
  L["|cffff7f00Shift+Click|r to toggle Loot."] = true
  L["|cffff7f00Ctrl+Click|r to toggle Standby."] = true
  L["|cffff7f00Ctrl+Alt+Click|r to toggle Alts."] = true
  L["|cffff7f00Ctrl+Shift+Click|r to toggle Logs."] = true
  L["|cffff7f00Right Click|r for %s."] = true
  L["|cffff7f00Middle Click|r for %s"] = true
  L["Set Banker"] = true
  L["Set Disenchanter"] = true
  L["Self"] = true
  L["Random"] = true
  L["Banker"] = true
  L["Disenchanter"] = true
  L["BastionLoot browser"] = true
  L["Item Type"] = true
  L["Item Pool"] = true
  L["Favorites"] = true
  L["Filter by Slot"] = true
  L["Filter by Tier"] = true
  L["Add Favorite"] = true
  L["Remove Favorite"] = true
  L["Modifier Preview"] = true
  L["Right-click a row to add or remove a Favorite."] = true
  L["Show Favorites Table."] = true
  L["|cffff7f00Shift+Alt+Click|r to toggle Favorites."] = true
  L["|cffff7f00Alt+Click|r to toggle Favorites."] = true
  L["Bid Popup"] = true
  L["Show a Bid Popup in addition to chat links"] = true
  L["Bid Mainspec/Need"] = true
  L["Bid Offspec/Greed"] = true
  L["Bid Call for %s [%ds]"] = true
  L["Autoroll"] = true
  L["Coins"] = true
  L["Bijous"] = true
  L["Scarabs"] = true
  L["Idols"] = true
  L["Class Idols"] = true
  L["Other Idols"] = true
  L["Export Favorites"] = true
  L["%s >> Disenchant."] = true
  L["Capturing Bids for 5min."] = true
  L["Auto%s %s for %s"] = true
  L["rolled"] = true
  L["passed"] = true
  L["EPGP"] = true
  L["PlusRoll"] = true
  L["Mode of Operation"] = true
  L["Select mode of operation."] = true
  L["Mode set to %s."] = true
  L["BastionLoot reserves"] = true
  L["Export Reserves"] = true
  L["Locked"] = true
  L["Unlocked"] = true
  L["Reserves are locked."] = true
  L["Right-click a row to manage player reserve."] = true
  L["Reserves are locked."] = true
  L["Reserve added."] = true
  L["Reserve updated."] = true
  L["Remove Reserve"] = true
  L["Lock Reserve"] = true
  L["Unlock Reserve"] = true
  L["(res)"] = true
  L["(reserve)"] = true
  L["Capturing Rolls for 2min."] = true
  L["|cffFF3333|Hbepgproll:1:$ML|h[Reserve/Mainspec]|h|r"] = true
  L["|cff009900|Hbepgproll:2:$ML|h[Offspec/Sidegrade]|h|r"] = true
  L["Roll Mainspec/Reserve"] = true
  L["Roll Offspec/Sidegrade"] = true
  L["Clearing old Rolls"] = true
  L["Reserve"] = true
  L["Reserves"] = true
  L["Wincount"] = true
  L["Mainspec Rolls"] = true
  L["Offspec Rolls"] = true
  L["Winning Reserve Roll: %s (%s)%s"] = true
  L["Winning Mainspec Roll: %s (%s) (+%s)"] = true
  L["Winning Offspec Roll: %s (%s)%s"] = true
  L["'/roll' (ms,res) or '/roll 50' (os) for %s"] = true
  L["%s looted to %s. Mark it as.."] = true
  L["Mainspec"] = true
  L["Switch Mode"] = true
  L["Switch Mode of Operation"] = true
  L["Member Actions"] = true
  L["Manual Wincount"] = true
  L["Manually reset Wincount at end of raid."] = true
  L["Clear Wincount"] = true
  L["Wincount Cleared."] = true
  L["|cffff7f00Shift+Click|r to toggle Reserves."] = true
  L["BastionLoot bids [roll]"] = true
  L["|cffff7f00Ctrl+Click|r to toggle Bids."] = true
  L.STANDINGS_OVERLAY = [[
Your current guild rank does not show EPGP standings.

You can whisper |cffffd200!PR|r to any higher rank guild member to get back EPGP standings.]]
  L["{bepgp}%s has: %d EP %d GP %.03f PR."] = true
  L["{bepgp}You have: %d EP %d GP %.03f PR"] = true
  L["|cffff7f00Ctrl+Shift+Click|r to toggle Wincount."] = true
  L["BastionLoot wincount"] = true
  L["RaidID %s"] = true
  L["Announce"] = true
  L["Alt Click"] = true
  L["Call for Rolls"] = true
  L["Skip Autoroll Items"] = true
  L["Skip Autoroll Items from Wincount Prompts."] = true
  L["Logs"] = true
  L["Redo Assignment"] = true
  L["Right-click a row to redo assignment tag in case of error."] = true
  L["Bench"] = true
  L["Suggest"] = true
  L["Signups"] = true
  L["Suggest a bench breakdown"] = true
  L["Weekly Decay: %s%%"] = true
  L["Skipping %s. Main %q is also in the raid."] = true
  L["Import Standings"] = true
  L["BastionLoot raid roster"] = true
  L["Export Raid Roster"] = true
  L["Hide Rolls"] = true
  L["Hide other player rolls from the chatframe"] = true
  L["%s is %s and %s is an Alt of %s. Skipping %s."] = true
  L["Skip Stackable Items"] = true
  L["Skip Stackable Items from Wincount Prompts."] = true
  L["res"] = true
  L["reserve"] = true
  L["%s Reserves:"] = true
  L["Scraps"] = true
  L["Clear reserves"] = true
  L["Soft reserves Cleared."] = true
  L["Whisper %s \`res [itemlink]\` to soft reserve."] = true
  L["Call"] = true
  L["Favorite Alert"] = true
  L["Alert presence of Favorite Link or Loot"] = true
  L["BastionLoot Favorite: %s"] = true
  L["4.Sunwell Plateau"] = true
  L["3.Black Temple, Hyjal"] = true
  L["2.Serpentshrine Cavern, The Eye"] = true
  L["1.Karazhan, Magtheridon, Gruul, World Bosses"] = true
  L["All EP and GP data has been reset."] = true
  L["|cffff0000Are you sure you want to wipe all EPGP data?|r"] = true
  L["Useful for"] = true
  L["EPGP Info"] = true
  L["Masterlooter Hints"] = true
  L["Show Masterlooter click action hints on item tooltips"] = true
  L["Favorites Info"] = true
  L["Show Favorite ranking on item tooltips"] = true
  L["Usable Info"] = true
  L["Show Class and Spec Hints on item tooltips"] = true
  L["Tooltip"] = true
  L["Award GP"] = true
  L["|cff00ff00Guild members|r that win items also get awarded GP.\n|cffFFFF33Checked:|r Mainspec AND Reserve wins.\n|cffD3D3D3Grey:|r Reserve wins ONLY."] = true
  L["ItemID"] = true
  L["Ignore Wincount"] = true
  L["Ignore Wincount for bid sorting.\n(plain SR > MS > OS, no +1)"] = true
  L["Token Info"] = true
  L["Show required trade-in Item on item tooltips"] = true
  L["Token for:"] = true

bepgp.L = L
