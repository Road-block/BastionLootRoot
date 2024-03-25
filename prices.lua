-----------------------------
--- HEADER - do not edit ----
-----------------------------
local addonName, plugin = ...
local addon = LibStub("AceAddon-3.0"):NewAddon(plugin, addonName)
_G[addonName] = plugin
-----------------------------
--- HEADER - end         ----
-----------------------------

-----------------------------
--- SETUP - choose name   ---
-----------------------------
-- name-version of your plugin pricelist
-- this will be how the pricelist shows upl
-- in-game for selection by the Guild Leader
-- Example name: "ShortGuildName-1.0"
-- If you make more changes to prices down the road
-- up the version part and distribute the updated plugin
local name_version = "Classic-1.0"

------------------------------
--- PLUG IT                ---
------------------------------
function plugin:OnEnable()
  -- check that the core addon exists and has the API we need
  if BastionLoot and BastionLoot.RegisterPriceSystem then
    -- The core addon RegisterPriceSystem method expects
    -- a table with
    -- a "func" key which will hold the reference
    --- to this plugin's GetPrice function
    -- and "flavor" which should hold "_classic" or "_bcc" or "_wrath" or "_cata"
    -- in addition to the pricelist name
    local system = {func=plugin.GetPrice,flavor="_classic"}

    -- The plugin:GetPrice(item) method we write in this file needs to
    -- accept at the minimum an 'item' parameter containing itemID/itemString/ItemLink
    -- and return the gearpoint price of that item
    -- How it derives that price is not important, it can be a simple table lookup
    -- or a complex dynamic calculation based on item attributes
    -- see: BOTTOM of this file for a plugin:GetPrice implementation

    -- Register our pricelist with the core BastionLoot addon
    BastionLoot:RegisterPriceSystem(name_version,system)

    -- Loot Admins (and members optionally) will need to install
    -- this pricelist plugin along-side the core BastionLoot addon
    -- The GL then needs to select the new pricescheme from the addon options
    -- and share their settings to guild members online.

    -- Alternatively or in addition to the "live share" they can
    -- add the guild pricescheme to the bottom of the [Guild Information] text
    -- in the form of {Classic-1.0}
    -- That's curly braces and the name_version value without the double quotes
    -- defined at the top of this file
    -- !This is NOT for the Guild Message of the Day!
  end
end

-- in this implementation, modifying the base gearpoint value
-- is an easy way to distribute a priceslist plugin to
-- your guild that is based on the core addon built-in
-- but with specific item gearpoint values adjusted.
-- prices[itemid] = {gearpointsvalue, "tier"}
-- Edit the gearpointsvalue part after the = sign for price changes
local prices = {}
    -----------------
    --- Naxxramas ---
    -----------------
prices[22349] = {148,"T3"} --T3 Chest Token
prices[22350] = {148,"T3"} --T3 Chest Token
prices[22351] = {148,"T3"} --T3 Chest Token
prices[22352] = {136,"T3"} --T3 Pants Token
prices[22353] = {120,"T3"} --T3 Helm Token
prices[22354] = {100,"T3"} --T3 Shoulder Token
prices[22355] = {84,"T3"} --T3 Wrist Token
prices[22356] = {92,"T3"} --T3 Belt Token
prices[22357] = {96,"T3"} --T3 Gloves Token
prices[22358] = {92,"T3"} --T3 Boots Token
prices[22359] = {136,"T3"} --T3 Pants Token
prices[22360] = {120,"T3"} --T3 Helm Token
prices[22361] = {100,"T3"} --T3 Shoulder Token
prices[22362] = {84,"T3"} --T3 Wrist Token
prices[22363] = {92,"T3"} --T3 Belt Token
prices[22364] = {96,"T3"} --T3 Gloves Token
prices[22365] = {92,"T3"} --T3 Boots Token
prices[22366] = {136,"T3"} --T3 Pants Token
prices[22367] = {120,"T3"} --T3 Helm Token
prices[22368] = {100,"T3"} --T3 Shoulder Token
prices[22369] = {84,"T3"} --T3 Wrist Token
prices[22370] = {92,"T3"} --T3 Belt Token
prices[22371] = {96,"T3"} --T3 Gloves Token
prices[22372] = {92,"T3"} --T3 Boots Token
prices[22416] = {148,"T3"} --Dreadnaught's Battlegear
prices[22417] = {136,"T3"} --Dreadnaught's Battlegear
prices[22418] = {120,"T3"} --Dreadnaught's Battlegear
prices[22419] = {100,"T3"} --Dreadnaught's Battlegear
prices[22420] = {92,"T3"} --Dreadnaught's Battlegear
prices[22421] = {96,"T3"} --Dreadnaught's Battlegear
prices[22422] = {92,"T3"} --Dreadnaught's Battlegear
prices[22423] = {84,"T3"} --Dreadnaught's Battlegear
prices[22424] = {84,"T3"}--Redemption Armor
prices[22425] = {148,"T3"} --Redemption Armor
prices[22426] = {96,"T3"}--Redemption Armor
prices[22427] = {136,"T3"} --Redemption Armor
prices[22428] = {120,"T3"} --Redemption Armor
prices[22429] = {100,"T3"} --Redemption Armor
prices[22430] = {92,"T3"}--Redemption Armor
prices[22431] = {92,"T3"}--Redemption Armor
prices[22436] = {148,"T3"} --Cryptstalker Armor
prices[22437] = {136,"T3"} --Cryptstalker Armor
prices[22438] = {120,"T3"} --Cryptstalker Armor
prices[22439] = {100,"T3"} --Cryptstalker Armor
prices[22440] = {92,"T3"} --Cryptstalker Armor
prices[22441] = {96,"T3"} --Cryptstalker Armor
prices[22442] = {92,"T3"} --Cryptstalker Armor
prices[22443] = {84,"T3"} --Cryptstalker Armor
prices[22464] = {148,"T3"} --The Earthshatterer
prices[22465] = {136,"T3"} --The Earthshatterer
prices[22466] = {120,"T3"} --The Earthshatterer
prices[22467] = {100,"T3"} --The Earthshatterer
prices[22468] = {92,"T3"} --The Earthshatterer
prices[22469] = {96,"T3"} --The Earthshatterer
prices[22470] = {92,"T3"} --The Earthshatterer
prices[22471] = {84,"T3"} --The Earthshatterer
prices[22476] = {148,"T3"} --Bonescythe Armor
prices[22477] = {136,"T3"} --Bonescythe Armor
prices[22478] = {120,"T3"} --Bonescythe Armor
prices[22479] = {100,"T3"} --Bonescythe Armor
prices[22480] = {92,"T3"} --Bonescythe Armor
prices[22481] = {96,"T3"} --Bonescythe Armor
prices[22482] = {92,"T3"} --Bonescythe Armor
prices[22483] = {84,"T3"} --Bonescythe Armor
prices[22488] = {148,"T3"} --Dreamwalker Raiment
prices[22489] = {136,"T3"} --Dreamwalker Raiment
prices[22490] = {120,"T3"} --Dreamwalker Raiment
prices[22491] = {100,"T3"} --Dreamwalker Raiment
prices[22492] = {92,"T3"} --Dreamwalker Raiment
prices[22493] = {96,"T3"} --Dreamwalker Raiment
prices[22494] = {92,"T3"} --Dreamwalker Raiment
prices[22495] = {84,"T3"} --Dreamwalker Raiment
prices[22496] = {148,"T3"} --Frostfire Regalia
prices[22497] = {136,"T3"} --Frostfire Regalia
prices[22498] = {120,"T3"} --Frostfire Regalia
prices[22499] = {100,"T3"} --Frostfire Regalia
prices[22500] = {92,"T3"} --Frostfire Regalia
prices[22501] = {96,"T3"} --Frostfire Regalia
prices[22502] = {92,"T3"} --Frostfire Regalia
prices[22503] = {84,"T3"} --Frostfire Regalia
prices[22504] = {148,"T3"} --Plaguehart Raiment
prices[22505] = {136,"T3"} --Plaguehart Raiment
prices[22506] = {120,"T3"} --Plaguehart Raiment
prices[22507] = {100,"T3"} --Plaguehart Raiment
prices[22508] = {92,"T3"} --Plaguehart Raiment
prices[22509] = {96,"T3"} --Plaguehart Raiment
prices[22510] = {92,"T3"} --Plaguehart Raiment
prices[22511] = {84,"T3"} --Plaguehart Raiment
prices[22512] = {148,"T3"} --Vestments of Faith
prices[22513] = {136,"T3"} --Vestments of Faith
prices[22514] = {120,"T3"} --Vestments of Faith
prices[22515] = {100,"T3"} --Vestments of Faith
prices[22516] = {92,"T3"} --Vestments of Faith
prices[22517] = {96,"T3"} --Vestments of Faith
prices[22518] = {92,"T3"} --Vestments of Faith
prices[22519] = {84,"T3"} --Vestments of Faith
prices[22520] = {100,"T3"} --The Phylactery of Kel'Thuzad
prices[22691] = {200,"T3"} --Corrupted Ashbringer
prices[22733] = {0,"T3"} --Staff Head of Atiesh
prices[22798] = {300,"T3"} --Might of Menethil
prices[22799] = {300,"T3"} --Soulseeker
prices[22800] = {160,"T3"} --Brimstone Staff
prices[22801] = {140,"T3"} --Spire of Twilight
prices[22802] = {200,"T3"} --Kingsfall
prices[22803] = {80,"T3"} --Midnight Haze
prices[22804] = {116,"T3"} --Maexxna's Fang
prices[22806] = {116,"T3"} --Widow's Remorse
prices[22807] = {152,"T3"} --Wraith Blade
prices[22808] = {116,"T3"} --The Castigator
prices[22809] = {60,"T3"} --Maul of the Redeemed Crusader
prices[22810] = {44,"T3"} --Toxin Injector
prices[22811] = {72,"T3"} --Soulstring
prices[22812] = {300,"T3"} --Nerubian Slavemaker
prices[22813] = {72,"T3"} --Claymore of Unholy Might
prices[22815] = {88,"T3"} --Severance
prices[22816] = {72,"T3"} --Hatchet of Sundered Bone
prices[22818] = {92,"T3"} --The Plague Bearer
prices[22819] = {180,"T3"} --Shield of Condemnation
prices[22820] = {72,"T3"} --Wand of Fates
prices[22821] = {116,"T3"} --Doomfinger
prices[22935] = {4,"T3"} --Touch of Frost
prices[22936] = {72,"T3"} --Wristguards of Vengeance
prices[22937] = {48,"T3"} --Gem of Nerubis
prices[22938] = {96,"T3"} --Cryptfiend Silk Cloak
prices[22939] = {72,"T3"} --Band of Unanswered Prayers
prices[22940] = {4,"T3"} --Icebane Pauldrons
prices[22941] = {4,"T3"} --Polar Shoulderpads
prices[22942] = {116,"T3"} --The Widow's Embrace
prices[22943] = {60,"T3"} --Malice Stone Pendant
prices[22947] = {24,"T3"} --Pendant of Forgotten Names
prices[22954] = {116,"T3"} --Kiss of the Spider
prices[22960] = {96,"T3"} --Cloak of Suturing
prices[22961] = {80,"T3"} --Band of Reanimation
prices[22967] = {4,"T3"} --Icy Scale Spaulders
prices[22968] = {4,"T3"} --Glacial Mantle
prices[22981] = {52,"T3"} --Gluth's Missing Collar
prices[22983] = {112,"T3"} --Rime Covered Mantle
prices[22988] = {152,"T3"} --The End of Dreams
prices[22994] = {24,"T3"} --Digested Hand of Power
prices[23000] = {136,"T3"} --Plated Abomination Ribcage
prices[23001] = {96,"T3"} --Eye of Diminution
prices[23004] = {48,"T3"} --Idol of Longevity
prices[23005] = {68,"T3"} --Totem of Flowing Water
prices[23006] = {48,"T3"} --Libram of Light
prices[23009] = {72,"T3"} --Wand of the Whispering Dead
prices[23014] = {120,"T3"} --"Iblis, Blade of the Fallen Seraph"
prices[23017] = {48,"T3"} --Veil of Eclipse
prices[23018] = {84,"T3"} --Signets of the Fallen Defender
prices[23019] = {4,"T3"} --Icebane Helmet
prices[23020] = {4,"T3"} --Polar Helmet
prices[23021] = {96,"T3"} --The Soul Harvester's Bindings
prices[23023] = {48,"T3"} --Sadist's Collar
prices[23025] = {92,"T3"} --Seal of the Damned
prices[23027] = {96,"T3"} --Warmth of Forgiveness
prices[23028] = {16,"T3"} --Hailstone Band
prices[23029] = {60,"T3"} --Noth's Frigid Heart
prices[23030] = {68,"T3"} --Cloak of the Scourge
prices[23031] = {76,"T3"} --Band of the Inevitable
prices[23032] = {4,"T3"} --Glacial Headdress
prices[23033] = {4,"T3"} --Icy Scale Coif
prices[23035] = {112,"T3"} --Preceptor's Hat
prices[23036] = {72,"T3"} --Necklace of Necropsy
prices[23037] = {24,"T3"} --Ring of Spiritual Fervor
prices[23038] = {88,"T3"} --Band of Unnatural Forces
prices[23039] = {132,"T3"} --The Eye of Nerub
prices[23040] = {160,"T3"} --Glyph of Deflection
prices[23041] = {160,"T3"} --Slayer's Crest
prices[23042] = {12,"T3"} --Loatheb's Reflection
prices[23043] = {150,"T3"} --The Face of Death
prices[23044] = {116,"T3"} --Harbinger of Doom
prices[23045] = {160,"T3"} --Shroud of Dominion
prices[23046] = {160,"T3"} --The Restrained Essence of Sapphiron
prices[23047] = {160,"T3"} --Eye of the Dead
prices[23048] = {160,"T3"} --Sapphiron's Right Eye
prices[23049] = {160,"T3"} --Sapphiron's Left Eye
prices[23050] = {160,"T3"} --Cloak of the Necropolis
prices[23053] = {140,"T3"} --Stormrage's Talisman of Seething
prices[23054] = {200,"T3"} --"Gressil, Dawn of Ruin"
prices[23056] = {240,"T3"} --Hammer of the Twisting Nether
prices[23057] = {140,"T3"} --Gem of Trapped Innocents
prices[23059] = {160,"T3"} --Dreadnaught's Battlegear
prices[23060] = {160,"T3"} --Bonescythe Armor
prices[23061] = {160,"T3"} --Vestments of Faith
prices[23062] = {160,"T3"} --Frostfire Regalia
prices[23063] = {160,"T3"} --Plaguehart Raiment
prices[23064] = {160,"T3"} --Dreamwalker Raiment
prices[23065] = {160,"T3"} --The Earthshatterer
prices[23066] = {160,"T3"} --Redemption Armor
prices[23067] = {160,"T3"} --Cryptstalker Armor
prices[23068] = {124,"T3"} --Legplates of Carnage
prices[23069] = {18,"T3"} --Necro-knight Garb
prices[23070] = {136,"T3"} --Leggings of Polarity
prices[23071] = {144,"T3"} --Leggings of Apocalypse
prices[23073] = {32,"T3"} --Boots of Displacement
prices[23075] = {80,"T3"} --Death's Bargain
prices[23219] = {124,"T3"} --Girdle of the Mentor
prices[23220] = {132,"T3"} --Crystal Webbed Robe
prices[23221] = {100,"T3"} --Misplaced Servo Arm
prices[23226] = {104,"T3"} --Ghoul Skin Tunic
prices[23237] = {60,"T3"} --Ring of Eternal Flame
prices[23238] = {40,"T3"} --Stygian Buckler
prices[23242] = {180,"T3"} --Claw of the Frost Wyrm
prices[23545] = {80,"T3"} --Power of the Scourge
prices[23547] = {80,"T3"} --Resilience of the Scourge
prices[23548] = {80,"T3"} --Might of the Scourge
prices[23549] = {120,"T3"} --Fortitude of the Scourge
prices[23577] = {200,"T3"} --The Hungering Cold
prices[23663] = {48,"T3"} --Girdle of Elemental Fury
prices[23664] = {48,"T3"} --Pauldrons of Elemental Fury
prices[23665] = {48,"T3"} --Leggings of Elemental Fury
prices[23666] = {48,"T3"} --Belt of the Grand Crusader
prices[23667] = {48,"T3"} --Spaulders of the Grand Crusader
prices[23668] = {48,"T3"} --Leggings of the Grand Crusader

    ---------------------------
    --- Temple of Ahn'Qiraj ---
    ---------------------------
prices[20926] = {72,"T2.5"} --Vek'nilash's Circlet
prices[20927] = {76,"T2.5"} --Ouro's Intact Hide
prices[20928] = {68,"T2.5"} --Qiraji Bindings of Command
prices[20929] = {128,"T2.5"} --Carapace of the Old God
prices[20930] = {72,"T2.5"} --Vek'lor's Diadem
prices[20931] = {76,"T2.5"} --Skin of the Great Sandworm
prices[20932] = {68,"T2.5"} --Qiraji Bindings of Dominance
prices[20933] = {128,"T2.5"} --Husk of the Old God
prices[21126] = {152,"T2.5"} --Death's Sting
prices[21128] = {52,"T2.5"} --Staff of the Qiraji Prophets
prices[21134] = {172,"T2.5"} --Dark Edge of Insanity
prices[21221] = {96,"T2.5"} --Eye of C'thun
prices[21232] = {116,"T2.5"} --Imperial Qiraji Armaments
prices[21237] = {84,"T2.5"} --Imperial Qiraji Regalia
prices[21242] = {116,"T2.5"} --Imperial Qiraji Armaments
prices[21244] = {116,"T2.5"} --Imperial Qiraji Armaments
prices[21268] = {84,"T2.5"} --Imperial Qiraji Regalia
prices[21269] = {116,"T2.5"} --Imperial Qiraji Armaments
prices[21272] = {116,"T2.5"} --Imperial Qiraji Armaments
prices[21273] = {84,"T2.5"} --Imperial Qiraji Regalia
prices[21275] = {84,"T2.5"} --Imperial Qiraji Regalia
prices[21329] = {72,"T2.5"} --Conqueror's Battlegear
prices[21330] = {68,"T2.5"} --Conqueror's Battlegear
prices[21331] = {128,"T2.5"} --Conqueror's Battlegear
prices[21332] = {76,"T2.5"} --Conqueror's Battlegear
prices[21333] = {68,"T2.5"} --Conqueror's Battlegear
prices[21334] = {128,"T2.5"} --Doomcaller's Attire
prices[21335] = {68,"T2.5"} --Doomcaller's Attire
prices[21336] = {76,"T2.5"} --Doomcaller's Attire
prices[21337] = {72,"T2.5"} --Doomcaller's Attire
prices[21338] = {68,"T2.5"} --Doomcaller's Attire
prices[21343] = {128,"T2.5"} --Enigma Vestments
prices[21344] = {68,"T2.5"} --Enigma Vestments
prices[21345] = {68,"T2.5"} --Enigma Vestments
prices[21346] = {76,"T2.5"} --Enigma Vestments
prices[21347] = {72,"T2.5"} --Enigma Vestments
prices[21348] = {72,"T2.5"} --Garments of the Oracle
prices[21349] = {68,"T2.5"} --Garments of the Oracle
prices[21350] = {68,"T2.5"} --Garments of the Oracle
prices[21351] = {128,"T2.5"} --Garments of the Oracle
prices[21352] = {76,"T2.5"} --Garments of the Oracle
prices[21353] = {72,"T2.5"} --Genesis Raiment
prices[21354] = {68,"T2.5"} --Genesis Raiment
prices[21355] = {68,"T2.5"} --Genesis Raiment
prices[21356] = {76,"T2.5"} --Genesis Raiment
prices[21357] = {128,"T2.5"} --Genesis Raiment
prices[21359] = {68,"T2.5"} --Deathdealer's Embrace
prices[21360] = {72,"T2.5"} --Deathdealer's Embrace
prices[21361] = {68,"T2.5"} --Deathdealer's Embrace
prices[21362] = {76,"T2.5"} --Deathdealer's Embrace
prices[21364] = {128,"T2.5"} --Deathdealer's Embrace
prices[21365] = {68,"T2.5"} --Striker's Garb
prices[21366] = {72,"T2.5"} --Striker's Garb
prices[21367] = {68,"T2.5"} --Striker's Garb
prices[21368] = {76,"T2.5"} --Striker's Garb
prices[21370] = {128,"T2.5"} --Striker's Garb
prices[21372] = {72,"T2.5"} --Stormcaller's Garb
prices[21373] = {68,"T2.5"} --Stormcaller's Garb
prices[21374] = {128,"T2.5"} --Stormcaller's Garb
prices[21375] = {76,"T2.5"} --Stormcaller's Garb
prices[21376] = {68,"T2.5"} --Stormcaller's Garb
prices[21579] = {44,"T2.5"} --Vanquished Tentacle of C'thun
prices[21581] = {116,"T2.5"} --Gauntlets of Annihilation
prices[21582] = {124,"T2.5"} --Grasp of the Old God
prices[21583] = {116,"T2.5"} --Cloak of Clarity
prices[21585] = {132,"T2.5"} --Dark Storm Gauntlets
prices[21586] = {124,"T2.5"} --Belt of Never-ending Agony
prices[21387] = {72,"T2.5"} --Avenger's Battlegear
prices[21388] = {68,"T2.5"} --Avenger's Battlegear
prices[21389] = {128,"T2.5"} --Avenger's Battlegear
prices[21390] = {76,"T2.5"} --Avenger's Battlegear
prices[21391] = {68,"T2.5"} --Avenger's Battlegear
prices[21596] = {104,"T2.5"} --Ring of the Godslayer
prices[21597] = {88,"T2.5"} --Royal Scepter of Vek'lor
prices[21598] = {84,"T2.5"} --Royal Qiraji Belt
prices[21599] = {68,"T2.5"} --Vek'lor's Gloves of Devastation
prices[21600] = {88,"T2.5"} --Boots of Epiphany
prices[21601] = {80,"T2.5"} --Ring of Emperor Vek'lor
prices[21602] = {88,"T2.5"} --Qiraji Execution Bracers
prices[21603] = {56,"T2.5"} --Wand of the Qiraji Nobility
prices[21604] = {80,"T2.5"} --Bracelets of Royal Redemption
prices[21605] = {60,"T2.5"} --Gloves of the Hidden Temple
prices[21606] = {68,"T2.5"} --Belt of the Fallen Emperor
prices[21607] = {20,"T2.5"} --Grasp of the Fallen Emperor
prices[21608] = {80,"T2.5"} --Amulet of Vek'nilash
prices[21609] = {52,"T2.5"} --Regenerating Belt of Vek'nilash
prices[21610] = {88,"T2.5"} --Wormscale Blocker
prices[21611] = {48,"T2.5"} --Burrower Bracers
prices[21615] = {88,"T2.5"} --Don Rigoberto's Lost Hat
prices[21616] = {52,"T2.5"} --Huhuran's Stinger
prices[21617] = {64,"T2.5"} --Wasphide Gauntlets
prices[21618] = {24,"T2.5"} --Hive Defiler Wristguards
prices[21619] = {44,"T2.5"} --Gloves of the Messiah
prices[21620] = {80,"T2.5"} --Ring of the Martyr
prices[21621] = {40,"T2.5"} --Cloak of the Golden Hive
prices[21622] = {100,"T2.5"} --Sharpened Silithid Femur
prices[21623] = {60,"T2.5"} --Gauntlets of the Right. Champ
prices[21624] = {48,"T2.5"} --Gauntlets of Kalimdor
prices[21625] = {48,"T2.5"} --Scarab Brooch
prices[21626] = {4,"T2.5"} --Slime-coated Leggings
prices[21627] = {4,"T2.5"} --Cloak of Untold Secrets
prices[21635] = {104,"T2.5"} --Barb of the Sand Reaver
prices[21639] = {76,"T2.5"} --Pauldrons of the Unrelenting
prices[21645] = {60,"T2.5"} --Hive Tunneler's Boots
prices[21647] = {28,"T2.5"} --Fetish of the Sand Reaver
prices[21648] = {4,"T2.5"} --Recomposed Boots
prices[21650] = {112,"T2.5"} --Ancient Qiraji Ripper
prices[21651] = {52,"T2.5"} --Scaled Sand Reaver Leggings
prices[21652] = {4,"T2.5"} --Silithid Carapace Chestguard
prices[21663] = {136,"T2.5"} --Robes of the Guardian Saint
prices[21664] = {80,"T2.5"} --Barbed Choker
prices[21665] = {72,"T2.5"} --Mantle of Wicked Revenge
prices[21666] = {88,"T2.5"} --Sartura's Might
prices[21667] = {76,"T2.5"} --Legplates of Blazing Light
prices[21668] = {20,"T2.5"} --Scaled Leggings of Qiraji Fury
prices[21669] = {48,"T2.5"} --Creeping Vine Helm
prices[21670] = {44,"T2.5"} --Badge of the Swarmguard
prices[21671] = {48,"T2.5"} --Robes of the Battleguard
prices[21672] = {64,"T2.5"} --Gloves of Enforcement
prices[21673] = {32,"T2.5"} --Silithid Claw
prices[21674] = {64,"T2.5"} --Gauntlets of Steadfast Determ..
prices[21675] = {60,"T2.5"} --Thick Qirajihide Belt
prices[21676] = {32,"T2.5"} --Leggings of the Festering Swa..
prices[21677] = {56,"T2.5"} --Ring of the Qiraji Fury
prices[21678] = {4,"T2.5"} --Necklace of Purity
prices[21679] = {48,"T2.5"} --Kalimdor's Revenge
prices[21680] = {56,"T2.5"} --Vest of Swift Execution
prices[21681] = {64,"T2.5"} --Ring of the Devoured
prices[21682] = {4,"T2.5"} --Bile-Covered Gauntlets
prices[21683] = {68,"T2.5"} --Mantle of the Desert Crusade
prices[21684] = {4,"T2.5"} --Mantle of the Desert's Fury
prices[21685] = {4,"T2.5"} --Petrified Scarab
prices[21686] = {40,"T2.5"} --Mantle of Phrenic Power
prices[21687] = {4,"T2.5"} --Ukko's Ring of Darkness
prices[21688] = {68,"T2.5"} --Boots of the Fallen Hero
prices[21689] = {60,"T2.5"} --Gloves of Ebru
prices[21690] = {48,"T2.5"} --Angelista's Charm
prices[21691] = {4,"T2.5"} --Ooze-ridden Gauntlets
prices[21692] = {32,"T2.5"} --Triad Girdle
prices[21693] = {60,"T2.5"} --Guise of the Devourer
prices[21694] = {60,"T2.5"} --Ternary Mantle
prices[21695] = {80,"T2.5"} --Angelista's Touch
prices[21696] = {4,"T2.5"} --Robes of the Triumvirate
prices[21697] = {4,"T2.5"} --Cape of the Trinity
prices[21698] = {40,"T2.5"} --Leggings of Immersion
prices[21699] = {36,"T2.5"} --Barrage Shoulders
prices[21700] = {24,"T2.5"} --Pendant of the Qiraji Guardian
prices[21701] = {88,"T2.5"} --Cloak of the Concentrated Hatred
prices[21702] = {4,"T2.5"} --Amulet of Foul Warding
prices[21703] = {24,"T2.5"} --Hammer of Ji'zhi
prices[21704] = {70,"T2.5"} --Boots of the Redeemed Prophecy
prices[21705] = {12,"T2.5"} --Boots of the Fallen Prophet
prices[21706] = {28,"T2.5"} --Boots of the Unwavering Will
prices[21707] = {48,"T2.5"} --Ring of Swarming Thought
prices[21708] = {4,"T2.5"} --Beetle Scaled Wristguards
prices[21709] = {96,"T2.5"} --Eye of C'thun
prices[21710] = {96,"T2.5"} --Eye of C'thun
prices[21712] = {96,"T2.5"} --Eye of C'thun
prices[21814] = {92,"T2.5"} --Breastplate of Annihilation
prices[21836] = {44,"T2.5"} --Ritssyn's Ring of Chaos
prices[21837] = {40,"T2.5"} --Anubisath Warhammer
prices[21838] = {4,"T2.5"} --Garb of Royal Ascension
prices[21839] = {180,"T2.5"} --Scepter of the False Prophet
prices[21856] = {16,"T2.5"} --"Neretzek, The Blood Drinker"
prices[21888] = {8,"T2.5"} --Gloves of the Immortal
prices[21889] = {70,"T2.5"} --Gloves of the Redeemed Prophet
prices[21891] = {64,"T2.5"} --Shard of the Fallen Star
prices[22396] = {4,"T2.5"} --Totem of Life
prices[22399] = {68,"T2.5"} --Idol of Health
prices[22402] = {4,"T2.5"} --Libram of Grace
prices[22730] = {124,"T2.5"} --Eyestalk Waist Cord
prices[22731] = {116,"T2.5"} --Cloak of the Devoured
prices[22732] = {116,"T2.5"} --Mark of C'thun
prices[23557] = {128,"T2.5"} --Larvae of the Great Worm
prices[23558] = {24,"T2.5"} --The Burrower's Shell
prices[23570] = {80,"T2.5"} --Jom Gabbar

    ----------------------
    --- Blackwing Lair ---
    ----------------------
prices[16818] = {32,"T2"} --Netherwind Regalia
prices[16832] = {40,"T2"} --Bloodfang Armor
prices[16897] = {48,"T2"} --Stormrage Raiment
prices[16898] = {32,"T2"} --Stormrage Raiment
prices[16899] = {32,"T2"} --Stormrage Raiment
prices[16900] = {40,"T2"} --Stormrage Raiment
prices[16901] = {32,"T2"} --Stormrage Raiment
prices[16902] = {40,"T2"} --Stormrage Raiment
prices[16903] = {32,"T2"} --Stormrage Raiment
prices[16904] = {28,"T2"} --Stormrage Raiment
prices[16905] = {48,"T2"} --Bloodfang Armor
prices[16906] = {32,"T2"} --Bloodfang Armor
prices[16907] = {32,"T2"} --Bloodfang Armor
prices[16908] = {40,"T2"} --Bloodfang Armor
prices[16909] = {32,"T2"} --Bloodfang Armor
prices[16910] = {32,"T2"} --Bloodfang Armor
prices[16911] = {28,"T2"} --Bloodfang Armor
prices[16912] = {32,"T2"} --Netherwind Regalia
prices[16913] = {32,"T2"} --Netherwind Regalia
prices[16914] = {40,"T2"} --Netherwind Regalia
prices[16915] = {32,"T2"} --Netherwind Regalia
prices[16916] = {48,"T2"} --Netherwind Regalia
prices[16917] = {40,"T2"} --Netherwind Regalia
prices[16918] = {28,"T2"} --Netherwind Regalia
prices[16919] = {32,"T2"} --Vestments of Transcendence
prices[16920] = {32,"T2"} --Vestments of Transcendence
prices[16921] = {40,"T2"} --Vestments of Transcendence
prices[16922] = {32,"T2"} --Vestments of Transcendence
prices[16923] = {48,"T2"} --Vestments of Transcendence
prices[16924] = {40,"T2"} --Vestments of Transcendence
prices[16925] = {32,"T2"} --Vestments of Transcendence
prices[16926] = {28,"T2"} --Vestments of Transcendence
prices[16927] = {32,"T2"} --Nemesis Raiment
prices[16928] = {32,"T2"} --Nemesis Raiment
prices[16929] = {40,"T2"} --Nemesis Raiment
prices[16930] = {32,"T2"} --Nemesis Raiment
prices[16931] = {48,"T2"} --Nemesis Raiment
prices[16932] = {40,"T2"} --Nemesis Raiment
prices[16933] = {32,"T2"} --Nemesis Raiment
prices[16934] = {28,"T2"} --Nemesis Raiment
prices[16935] = {28,"T2"} --Dragonstalker Armor
prices[16936] = {32,"T2"} --Dragonstalker Armor
prices[16937] = {40,"T2"} --Dragonstalker Armor
prices[16938] = {32,"T2"} --Dragonstalker Armor
prices[16939] = {40,"T2"} --Dragonstalker Armor
prices[16940] = {32,"T2"} --Dragonstalker Armor
prices[16941] = {32,"T2"} --Dragonstalker Armor
prices[16942] = {48,"T2"} --Dragonstalker Armor
prices[16943] = {28,"T2"} --The Ten Storms
prices[16944] = {32,"T2"} --The Ten Storms
prices[16945] = {40,"T2"} --The Ten Storms
prices[16946] = {32,"T2"} --The Ten Storms
prices[16947] = {40,"T2"} --The Ten Storms
prices[16948] = {32,"T2"} --The Ten Storms
prices[16949] = {32,"T2"} --The Ten Storms
prices[16950] = {48,"T2"} --The Ten Storms
prices[16951] = {28,"T2"} --Judgement Armor
prices[16952] = {32,"T2"} --Judgement Armor
prices[16953] = {40,"T2"} --Judgement Armor
prices[16954] = {32,"T2"} --Judgement Armor
prices[16955] = {40,"T2"} --Judgement Armor
prices[16956] = {32,"T2"} --Judgement Armor
prices[16957] = {32,"T2"} --Judgement Armor
prices[16958] = {48,"T2"} --Judgement Armor
prices[16959] = {28,"T2"} --Battlegear of Wrath
prices[16960] = {32,"T2"} --Battlegear of Wrath
prices[16961] = {40,"T2"} --Battlegear of Wrath
prices[16962] = {32,"T2"} --Battlegear of Wrath
prices[16963] = {40,"T2"} --Battlegear of Wrath
prices[16964] = {32,"T2"} --Battlegear of Wrath
prices[16965] = {32,"T2"} --Battlegear of Wrath
prices[16966] = {48,"T2"} --Battlegear of Wrath
prices[19002] = {48,"T2"} --Head of Nefarian (horde)
prices[19003] = {52,"T2"} --Head of Nefarian (alliance)
prices[19334] = {32,"T2"} --The Untamed Blade
prices[19335] = {20,"T2"} --Spineshatter
prices[19336] = {16,"T2"} --Arcane Infused Gem
prices[19337] = {16,"T2"} --The Black Book
prices[19339] = {40,"T2"} --Mind Quickening Gem
prices[19340] = {16,"T2"} --Rune of Metamorphosis
prices[19341] = {68,"T2"} --Lifegiving Gem
prices[19342] = {16,"T2"} --Venomous Totem
prices[19343] = {20,"T2"} --Scrolls of Blinding Light
prices[19344] = {20,"T2"} --Natural Alignment Crystal
prices[19345] = {20,"T2"} --Aegis of Preservation
prices[19346] = {48,"T2"} --Dragonfang Blade
prices[19347] = {72,"T2"} --Claw of Chromaggus
prices[19348] = {28,"T2"} --Red Dragonscale Protector
prices[19349] = {76,"T2"} --Elementium Reinforced Bulwark
prices[19350] = {40,"T2"} --Heartstriker
prices[19351] = {92,"T2"} --"Maladath, Runed Blade of the.."
prices[19352] = {76,"T2"} --Chromatically Tempered Sword
prices[19353] = {32,"T2"} --Drake Talon Cleaver
prices[19354] = {16,"T2"} --Draconic Avenger
prices[19355] = {48,"T2"} --Shadow Wing Focus Staff
prices[19356] = {80,"T2"} --Staff of the Shadow Flame
prices[19357] = {32,"T2"} --Herald of Woe
prices[19358] = {12,"T2"} --Draconic Maul
prices[19360] = {60,"T2"} --Lok'amir il Romathis
prices[19361] = {124,"T2"} --"Ashjre'thul, Crossbow of Smiting"
prices[19362] = {32,"T2"} --Doom's Edge
prices[19363] = {100,"T2"} --"Crul'shoruk, Edge of Chaos"
prices[19364] = {64,"T2"} --"Ashkandi, Greatsword of the Bro.."
prices[19365] = {52,"T2"} --Claw of the Black Drake
prices[19366] = {52,"T2"} --Head of Nefarian
prices[19367] = {32,"T2"} --Dragon's Touch
prices[19368] = {52,"T2"} --Dragonbreath Hand Cannon
prices[19369] = {16,"T2"} --Gloves of Rapid Evolution
prices[19370] = {72,"T2"} --Mantle of the Blackwing Cabal
prices[19371] = {28,"T2"} --Pendant of the Fallen Dragon
prices[19372] = {44,"T2"} --Helm of Endless Rage
prices[19373] = {40,"T2"} --Black Brood Pauldrons
prices[19374] = {72,"T2"} --Bracers of Arcane Accuracy
prices[19375] = {96,"T2"} --"Mish'undare, Circlet of the Mind…"
prices[19376] = {20,"T2"} --Archimtiros' Ring of Reckoning
prices[19377] = {76,"T2"} --Prestor's Talisman of Connivery
prices[19378] = {20,"T2"} --Cloak of the Brood Lord
prices[19379] = {116,"T2"} --Neltharion's Tear
prices[19380] = {36,"T2"} --Therazane's Link
prices[19381] = {84,"T2"} --Boots of the Shadow Flame
prices[19382] = {76,"T2"} --Pure Elementium Band
prices[19383] = {52,"T2"} --Head of Nefarian
prices[19384] = {52,"T2"} --Head of Nefarian
prices[19385] = {100,"T2"} --Empowered Leggings
prices[19386] = {32,"T2"} --Elementium Threaded Cloak
prices[19387] = {84,"T2"} --Chromatic Boots
prices[19388] = {36,"T2"} --Angelista's Grasp
prices[19389] = {44,"T2"} --Taut Dragonhide Shoulderpads
prices[19390] = {24,"T2"} --Taut Dragonhide Gloves
prices[19391] = {40,"T2"} --Shimmering Geta
prices[19392] = {22,"T2"} --Girdle of the Fallen Crusader
prices[19393] = {16,"T2"} --Primalist's Linked Waistguard
prices[19394] = {52,"T2"} --Drake Talon Pauldrons
prices[19395] = {116,"T2"} --Rejuvenating Gem
prices[19396] = {36,"T2"} --Taut Dragonhide Belt
prices[19397] = {52,"T2"} --Ring of Blackrock
prices[19398] = {32,"T2"} --Cloak of Firemaw
prices[19399] = {12,"T2"} --Black Ash Robe
prices[19400] = {44,"T2"} --Firemaw's Clutch
prices[19401] = {20,"T2"} --Primalist's Linked Legguards
prices[19402] = {24,"T2"} --Legguards of the Fallen Crusader
prices[19403] = {52,"T2"} --Band of Forced Concentration
prices[19405] = {60,"T2"} --Malfurion's Blessed Bulwark
prices[19406] = {116,"T2"} --Drake Fang Talisman
prices[19407] = {40,"T2"} --Ebony Flame Gloves
prices[19430] = {64,"T2"} --Shroud of Pure Thought
prices[19431] = {116,"T2"} --Styleen's Impeding Scarab
prices[19432] = {32,"T2"} --Circle of Applied Force
prices[19433] = {12,"T2"} --Emberweave Leggings
prices[19434] = {40,"T2"} --Band of Dark Dominion
prices[19435] = {8,"T2"} --Essence Gatherer
prices[19436] = {16,"T2"} --Cloak of Draconic Might
prices[19437] = {48,"T2"} --Boots of Pure Thought
prices[19438] = {48,"T2"} --Ringo's Blizzard Boots
prices[19439] = {4,"T2"} --Interlaced Shadow Jerkin
prices[20383] = {40,"T2"} --Head of Broodlord Lashlayer

    -------------------
    --- Molten Core ---
    -------------------
prices[16665] = {0,"T1"} --Tome of Tranquilizing Shot
prices[16795] = {12,"T1"} --Arcanist Regalia
prices[16796] = {12,"T1"} --Arcanist Regalia
prices[16797] = {12,"T1"} --Arcanist Regalia
prices[16798] = {16,"T1"} --Arcanist Regalia
prices[16799] = {8,"T1"} --Arcanist Regalia
prices[16800] = {12,"T1"} --Arcanist Regalia
prices[16801] = {12,"T1"} --Arcanist Regalia
prices[16802] = {8,"T1"} --Arcanist Regalia
prices[16803] = {12,"T1"} --Felheart Raiment
prices[16804] = {8,"T1"} --Felheart Raiment
prices[16805] = {12,"T1"} --Felheart Raiment
prices[16806] = {8,"T1"} --Felheart Raiment
prices[16807] = {12,"T1"} --Felheart Raiment
prices[16808] = {12,"T1"} --Felheart Raiment
prices[16809] = {16,"T1"} --Felheart Raiment
prices[16810] = {12,"T1"} --Felheart Raiment
prices[16811] = {12,"T1"} --Vestments of Prophecy
prices[16812] = {12,"T1"} --Vestments of Prophecy
prices[16813] = {12,"T1"} --Vestments of Prophecy
prices[16814] = {12,"T1"} --Vestments of Prophecy
prices[16815] = {16,"T1"} --Vestments of Prophecy
prices[16816] = {12,"T1"} --Vestments of Prophecy
prices[16817] = {8,"T1"} --Vestments of Prophecy
prices[16819] = {8,"T1"} --Vestments of Prophecy
prices[16820] = {16,"T1"} --Nightslayer Armor
prices[16821] = {12,"T1"} --Nightslayer Armor
prices[16822] = {12,"T1"} --Nightslayer Armor
prices[16823] = {12,"T1"} --Nightslayer Armor
prices[16824] = {12,"T1"} --Nightslayer Armor
prices[16825] = {8,"T1"} --Nightslayer Armor
prices[16826] = {12,"T1"} --Nightslayer Armor
prices[16827] = {8,"T1"} --Nightslayer Armor
prices[16828] = {8,"T1"} --Cenarion Raiment
prices[16829] = {12,"T1"} --Cenarion Raiment
prices[16830] = {8,"T1"} --Cenarion Raiment
prices[16831] = {12,"T1"} --Cenarion Raiment
prices[16833] = {16,"T1"} --Cenarion Raiment
prices[16834] = {12,"T1"} --Cenarion Raiment
prices[16835] = {12,"T1"} --Cenarion Raiment
prices[16836] = {12,"T1"} --Cenarion Raiment
prices[16837] = {12,"T1"} --The Earthfury
prices[16838] = {8,"T1"} --The Earthfury
prices[16839] = {12,"T1"} --The Earthfury
prices[16840] = {8,"T1"} --The Earthfury
prices[16841] = {16,"T1"} --The Earthfury
prices[16842] = {12,"T1"} --The Earthfury
prices[16843] = {12,"T1"} --The Earthfury
prices[16844] = {12,"T1"} --The Earthfury
prices[16845] = {16,"T1"} --Giantstalker Armor
prices[16846] = {12,"T1"} --Giantstalker Armor
prices[16847] = {12,"T1"} --Giantstalker Armor
prices[16848] = {12,"T1"} --Giantstalker Armor
prices[16849] = {12,"T1"} --Giantstalker Armor
prices[16850] = {8,"T1"} --Giantstalker Armor
prices[16851] = {8,"T1"} --Giantstalker Armor
prices[16852] = {12,"T1"} --Giantstalker Armor
prices[16853] = {16,"T1"} --Lawbringer Armor
prices[16854] = {12,"T1"} --Lawbringer Armor
prices[16855] = {12,"T1"} --Lawbringer Armor
prices[16856] = {12,"T1"} --Lawbringer Armor
prices[16857] = {8,"T1"} --Lawbringer Armor
prices[16858] = {8,"T1"} --Lawbringer Armor
prices[16859] = {12,"T1"} --Lawbringer Armor
prices[16860] = {12,"T1"} --Lawbringer Armor
prices[16861] = {8,"T1"} --Battlegear of Might
prices[16862] = {12,"T1"} --Battlegear of Might
prices[16863] = {12,"T1"} --Battlegear of Might
prices[16864] = {8,"T1"} --Battlegear of Might
prices[16865] = {16,"T1"} --Battlegear of Might
prices[16866] = {12,"T1"} --Battlegear of Might
prices[16867] = {12,"T1"} --Battlegear of Might
prices[16868] = {12,"T1"} --Battlegear of Might
prices[17063] = {48,"T1"} --Band of Accuria
prices[17065] = {36,"T1"} --Medallion of Steadfast Might
prices[17066] = {24,"T1"} --Drillborer Disk
prices[17069] = {40,"T1"} --Striker's Mark
prices[17071] = {12,"T1"} --Gutgore Ripper
prices[17072] = {22,"T1"} --Blastershot Launcher
prices[17073] = {12,"T1"} --Earthshaker
prices[17074] = {4,"T1"} --Shadowstrike
prices[17076] = {22,"T1"} --Bonereaver's Edge
prices[17077] = {4,"T1"} --Crimson Shocker
prices[17082] = {12,"T1"} --Shard of the Flame
prices[17102] = {20,"T1"} --Cloak of the Shrouded Mists
prices[17103] = {28,"T1"} --Azuresong Mageblade
prices[17104] = {20,"T1"} --Spinal Reaper
prices[17105] = {22,"T1"} --Aurastone Hammer
prices[17106] = {16,"T1"} --Malistar's Defender
prices[17107] = {16,"T1"} --Dragon's Blood Cape
prices[17109] = {8,"T1"} --Choker of Enlightenment
prices[17110] = {8,"T1"} --Seal of the Archmagus
prices[17204] = {0,"T1"} --Eye of Sulfuras
prices[18203] = {16,"T1"} --Eskhandar's Right Claw
prices[18563] = {0,"T1"} --Bindings of the Windseeker
prices[18564] = {0,"T1"} --Bindings of the Windseeker
prices[18646] = {0,"T1"} --The Eye of Divinity
prices[18703] = {0,"T1"} --Ancient Petrified Leaf
prices[18803] = {12,"T1"} --Finkle's Lava Dredger
prices[18805] = {32,"T1"} --Core Hound Tooth
prices[18806] = {4,"T1"} --Core Forged Greaves
prices[18808] = {16,"T1"} --Gloves of the Hypnotic Flame
prices[18809] = {16,"T1"} --Sash of Whispered Secrets
prices[18810] = {36,"T1"} --Wild Growth Spaulders
prices[18811] = {4,"T1"} --Fireproof Cloak
prices[18812] = {28,"T1"} --Wristguards of True Flight
prices[18814] = {42,"T1"} --Choker of the Firelord
prices[18815] = {12,"T1"} --Essence of the Pure Flame
prices[18816] = {40,"T1"} --Perdition's Blade
prices[18817] = {40,"T1"} --Crown of Destruction
prices[18820] = {36,"T1"} --Talisman of Ephemeral Power
prices[18821] = {36,"T1"} --Quick Strike Ring
prices[18822] = {12,"T1"} --Obsidian Edged Blade
prices[18823] = {12,"T1"} --Aged Core Leather Gloves
prices[18824] = {8,"T1"} --Magma Tempered Boots
prices[18829] = {20,"T1"} --Deep Earth Spaulders
prices[18832] = {24,"T1"} --Brutality Blade
prices[18842] = {24,"T1"} --Staff of Dominance
prices[18861] = {4,"T1"} --Flamewalker Legplates
prices[18870] = {8,"T1"} --Helm of the Lifegiver
prices[18872] = {8,"T1"} --Manastorm Leggings
prices[18875] = {42,"T1"} --Salamander Scale Pants
prices[18878] = {16,"T1"} --Sorcerous Dagger
prices[18879] = {30,"T1"} --Heavy Dark Iron Ring
prices[19136] = {28,"T1"} --Mana Igniting Cord
prices[19137] = {48,"T1"} --Onslaught Girdle
prices[19138] = {24,"T1"} --Band of Sulfuras
prices[19139] = {4,"T1"} --Fireguard Shoulders
prices[19140] = {28,"T1"} --Cauterizing Band
prices[19142] = {12,"T1"} --Fire Runed Grimoire
prices[19143] = {14,"T1"} --Flameguard Gauntlets
prices[19144] = {12,"T1"} --Sabatons of the Flamewalker
prices[19145] = {42,"T1"} --Robe of Volatile Power
prices[19146] = {8,"T1"} --Wristguards of Stability
prices[19147] = {8,"T1"} --Ring of Spell Power

    ---------------------
    --- Single Bosses ---
    ---------------------
prices[17064] = {52,"T1.5"} --Shard of the Scale
prices[17067] = {12,"T1.5"} --Ancient Cornerstone Grimoire
prices[17068] = {32,"T1.5"} --Deathbringer
prices[17070] = {36,"T1.5"} --Fang of the Mystics
prices[17075] = {24,"T1.5"} --Vis'kag the Bloodletter
prices[17078] = {20,"T1.5"} --Sapphiron Drape
prices[17111] = {16,"T1.5"} --Blazefury Medallion
prices[17112] = {20,"T1.5"} --Empyrean Demolisher
prices[17113] = {24,"T1.5"} --Amberseal Keeper
prices[18202] = {20,"T1.5"} --Eskhandar's Left Claw
prices[18204] = {12,"T1.5"} --Eskhandar's Pelt
prices[18205] = {16,"T1.5"} --Eskhandar's Collar
prices[18208] = {12,"T1.5"} --Drape of Benediction
prices[18403] = {48,"T1.5"} --Head of Onyxia
prices[18404] = {48,"T1.5"} --Head of Onyxia
prices[18406] = {48,"T1.5"} --Head of Onyxia
prices[18422] = {48,"T1.5"} --Head of Onyxia // Horde
prices[18423] = {48,"T1.5"} --Head of Onyxia // Alliance
prices[18541] = {52,"T1.5"} --Puissant Cape
prices[18542] = {12,"T1.5"} --Typhoon
prices[18543] = {12,"T1.5"} --Ring of Entropy
prices[18544] = {20,"T1.5"} --Doomhide Gauntlets
prices[18545] = {4,"T1.5"} --Leggings of Arcane Supremacy
prices[18546] = {24,"T1.5"} --Infernal Headcage
prices[18547] = {4,"T1.5"} --Unmelting Ice Girdle
prices[18665] = {0,"T1.5"} --The Eye of Shadow
prices[18704] = {0,"T1.5"} --Mature Blue Dragon Sinew
prices[18705] = {0,"T1.5"} --Mature Black Dragon Sinew
prices[18813] = {4,"T1.5"} --Ring of Binding
prices[19130] = {46,"T1.5"} --Cold Snap
prices[19131] = {56,"T1.5"} --Snowblind Shoes
prices[19132] = {60,"T1.5"} --Crystal Adorned Crown
prices[19133] = {54,"T1.5"} --Fel Infused Leggings
prices[19134] = {16,"T1.5"} --Flayed Doomguard Belt
prices[19135] = {12,"T1.5"} --Blacklight Bracer
prices[20577] = {36,"T1.5"} --Nightmare Blade
prices[20578] = {36,"T1.5"} --Emerald Dragonfang
prices[20579] = {4,"T1.5"} --Green Dragonskin Cloak
prices[20580] = {32,"T1.5"} --Hammer of Bestial Fury
prices[20581] = {40,"T1.5"} --Staff of Rampant Growth
prices[20582] = {20,"T1.5"} --Trance Stone
prices[20599] = {28,"T1.5"} --Polished Ironwood Crossbow
prices[20600] = {4,"T1.5"} --Nightmare Engulfed Object
prices[20615] = {16,"T1.5"} --Dragonspur Wraps
prices[20616] = {16,"T1.5"} --Dragonbone Wristguards
prices[20617] = {28,"T1.5"} --Ancient Corroded Leggings
prices[20618] = {40,"T1.5"} --Gloves of Delusional Power
prices[20619] = {4,"T1.5"} --Acid Inscribed Greaves
prices[20621] = {24,"T1.5"} --Boots of the Endless Moor
prices[20622] = {20,"T1.5"} --Dragonheart Necklace
prices[20623] = {32,"T1.5"} --Circlet of Restless Dreams
prices[20624] = {24,"T1.5"} --Ring of the Unliving
prices[20625] = {4,"T1.5"} --Belt of the Dark Bog
prices[20626] = {20,"T1.5"} --Black Bark Wristbands
prices[20627] = {50,"T1.5"} --Dark Heart Pants
prices[20628] = {54,"T1.5"} --Deviate Growth Cap
prices[20629] = {12,"T1.5"} --Malignant Footguards
prices[20630] = {10,"T1.5"} --Gauntlets of the Shining Light
prices[20631] = {40,"T1.5"} --Mendicant's Slippers
prices[20632] = {20,"T1.5"} --Mindtear Band
prices[20633] = {4,"T1.5"} --Unnatural Leather Spaulders
prices[20634] = {24,"T1.5"} --Boots of Fright
prices[20635] = {36,"T1.5"} --Jade Inlaid Vestments
prices[20636] = {52,"T1.5"} --Hibernating Crystal
prices[20637] = {4,"T1.5"} --Acid Inscribed Pauldrons
prices[20638] = {32,"T1.5"} --Leggings of the Demented Mind
prices[20639] = {12,"T1.5"} --Strangely Glyphed Legplates
prices[20644] = {4,"T1.5"} --Nightmare Engulfed Object

local progress_scaling = {
  ["T3"] =   {["T3"]=1,  ["T2.5"]=1,  ["T2"]=1,  ["T1.5"]=1,["T1"]=1},
  ["T2.5"] = {["T3"]=1.5,["T2.5"]=1.5,["T2"]=2,  ["T1.5"]=2,["T1"]=2},
  ["T2"] =   {["T3"]=2,  ["T2.5"]=2,  ["T2"]=3,  ["T1.5"]=3,["T1"]=3},
  ["T1"] =   {["T3"]=4.5,["T2.5"]=4.5,["T2"]=4.5,["T1.5"]=6,["T1"]=9}
}
-- supporting methods and data that are local to this addon
local function get_adjusted_price(price,tier,progress)
  if not progress_scaling[progress] then return price end
  if not progress_scaling[progress][tier] then return price end
  return math.floor(progress_scaling[progress][tier] * price)
end

---------------------------------------------------
--- function plugin:GetPrice(item, [progress])  ---
-- out: gearpoint price
---------------------------------------------------
-- supporting local functions that do not get
-- exported to the core addon or arrays etc can
-- also be written as needed
-- The following section is how the built-in
-- classic pricelist in the core addon does it
-- but it could be any implementation as long as it
-- accepts itemid as input and returns gearpoints
---------------------------------------------------
function plugin:GetPrice(item,progress)
  -- check our input
  if not (type(item)=="number" or type(item)=="string") then return end
  -- supplement optional arguments
  if not progress then progress = "T3" end
  local price,itemID,data,tier

  itemID = GetItemInfoInstant(item)
  -- make sure a valid itemid or itemstring/itemlink was passed in
  if (itemID) then
    data = prices[itemID]
    if (data) then
      price, tier = data[1], data[2]
      price = get_adjusted_price(price,tier,progress)
    else
      return
    end
  end
  -- return the computed gearpoints value (optionally the tier of content)
  return price, tier
end
