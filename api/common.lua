-- Native types

---@class handle
---@class integer:number
---@class real:number

---@param value string
---@return integer
function FourCC(value) end

--============================================================================
-- Native types. All  functions take extended handle types when
-- possible to help prevent passing bad values to  functions
--
---@class  agent:handle -- all reference counted objects
---@class  event:agent -- a reference to an event registration
---@class  player:agent -- a single player reference
---@class  widget:agent -- an interactive game object with life
---@class  unit:widget -- a single unit reference
---@class  destructable:widget
---@class  item:widget
---@class  ability:agent
---@class  buff:ability
---@class  force:agent
---@class  group:agent
---@class  trigger:agent
---@class  triggercondition:agent
---@class  triggeraction:handle
---@class  timer:agent
---@class  location:agent
---@class  region:agent
---@class  rect:agent
---@class  boolexpr:agent
---@class  sound:agent
---@class  conditionfunc:boolexpr
---@class  filterfunc:boolexpr
---@class  unitpool:handle
---@class  itempool:handle
---@class  race:handle
---@class  alliancetype:handle
---@class  racepreference:handle
---@class  gamestate:handle
---@class  igamestate:gamestate
---@class  fgamestate:gamestate
---@class  playerstate:handle
---@class  playerscore:handle
---@class  playergameresult:handle
---@class  unitstate:handle
---@class  aidifficulty:handle

---@class  eventid:handle
---@class  gameevent:eventid
---@class  playerevent:eventid
---@class  playerunitevent:eventid
---@class  unitevent:eventid
---@class  limitop:eventid
---@class  widgetevent:eventid
---@class  dialogevent:eventid
---@class  unittype:handle

---@class  gamespeed:handle
---@class  gamedifficulty:handle
---@class  gametype:handle
---@class  mapflag:handle
---@class  mapvisibility:handle
---@class  mapsetting:handle
---@class  mapdensity:handle
---@class  mapcontrol:handle
---@class  playerslotstate:handle
---@class  volumegroup:handle
---@class  camerafield:handle
---@class  camerasetup:handle
---@class  playercolor:handle
---@class  placement:handle
---@class  startlocprio:handle
---@class  raritycontrol:handle
---@class  blendmode:handle
---@class  texmapflags:handle
---@class  effect:agent
---@class  effecttype:handle
---@class  weathereffect:handle
---@class  terraindeformation:handle
---@class  fogstate:handle
---@class  fogmodifier:agent
---@class  dialog:agent
---@class  button:agent
---@class  quest:agent
---@class  questitem:agent
---@class  defeatcondition:agent
---@class  timerdialog:agent
---@class  leaderboard:agent
---@class  multiboard:agent
---@class  multiboarditem:agent
---@class  trackable:agent
---@class  gamecache:agent
---@class  version:handle
---@class  itemtype:handle
---@class  texttag:handle
---@class  attacktype:handle
---@class  damagetype:handle
---@class  weapontype:handle
---@class  soundtype:handle
---@class  lightning:handle
---@class  pathingtype:handle
---@class  mousebuttontype:handle
---@class  animtype:handle
---@class  subanimtype:handle
---@class  image:handle
---@class  ubersplat:handle
---@class  hashtable:agent
---@class  framehandle:handle
---@class  originframetype:handle
---@class  framepointtype:handle
---@class  textaligntype:handle
---@class  frameeventtype:handle
---@class  oskeytype:handle
---@class  abilityintegerfield:handle
---@class  abilityrealfield:handle
---@class  abilitybooleanfield:handle
---@class  abilitystringfield:handle
---@class  abilityintegerlevelfield:handle
---@class  abilityreallevelfield:handle
---@class  abilitybooleanlevelfield:handle
---@class  abilitystringlevelfield:handle
---@class  abilityintegerlevelarrayfield:handle
---@class  abilityreallevelarrayfield:handle
---@class  abilitybooleanlevelarrayfield:handle
---@class  abilitystringlevelarrayfield:handle
---@class  unitintegerfield:handle
---@class  unitrealfield:handle
---@class  unitbooleanfield:handle
---@class  unitstringfield:handle
---@class  unitweaponintegerfield:handle
---@class  unitweaponrealfield:handle
---@class  unitweaponbooleanfield:handle
---@class  unitweaponstringfield:handle
---@class  itemintegerfield:handle
---@class  itemrealfield:handle
---@class  itembooleanfield:handle
---@class  itemstringfield:handle
---@class  movetype:handle
---@class  targetflag:handle
---@class  armortype:handle
---@class  heroattribute:handle
---@class  defensetype:handle
---@class  regentype:handle
---@class  unitcategory:handle
---@class  pathingflag:handle


---@param i integer
---@return race
function ConvertRace(i) end

---@param i integer
---@return alliancetype
function ConvertAllianceType(i) end

---@param i integer
---@return racepreference
function ConvertRacePref(i) end

---@param i integer
---@return igamestate
function ConvertIGameState(i) end

---@param i integer
---@return fgamestate
function ConvertFGameState(i) end

---@param i integer
---@return playerstate
function ConvertPlayerState(i) end

---@param i integer
---@return playerscore
function ConvertPlayerScore(i) end

---@param i integer
---@return playergameresult
function ConvertPlayerGameResult(i) end

---@param i integer
---@return unitstate
function ConvertUnitState(i) end

---@param i integer
---@return aidifficulty
function ConvertAIDifficulty(i) end

---@param i integer
---@return gameevent
function ConvertGameEvent(i) end

---@param i integer
---@return playerevent
function ConvertPlayerEvent(i) end

---@param i integer
---@return playerunitevent
function ConvertPlayerUnitEvent(i) end

---@param i integer
---@return widgetevent
function ConvertWidgetEvent(i) end

---@param i integer
---@return dialogevent
function ConvertDialogEvent(i) end

---@param i integer
---@return unitevent
function ConvertUnitEvent(i) end

---@param i integer
---@return limitop
function ConvertLimitOp(i) end

---@param i integer
---@return unittype
function ConvertUnitType(i) end

---@param i integer
---@return gamespeed
function ConvertGameSpeed(i) end

---@param i integer
---@return placement
function ConvertPlacement(i) end

---@param i integer
---@return startlocprio
function ConvertStartLocPrio(i) end

---@param i integer
---@return gamedifficulty
function ConvertGameDifficulty(i) end

---@param i integer
---@return gametype
function ConvertGameType(i) end

---@param i integer
---@return mapflag
function ConvertMapFlag(i) end

---@param i integer
---@return mapvisibility
function ConvertMapVisibility(i) end

---@param i integer
---@return mapsetting
function ConvertMapSetting(i) end

---@param i integer
---@return mapdensity
function ConvertMapDensity(i) end

---@param i integer
---@return mapcontrol
function ConvertMapControl(i) end

---@param i integer
---@return playercolor
function ConvertPlayerColor(i) end

---@param i integer
---@return playerslotstate
function ConvertPlayerSlotState(i) end

---@param i integer
---@return volumegroup
function ConvertVolumeGroup(i) end

---@param i integer
---@return camerafield
function ConvertCameraField(i) end

---@param i integer
---@return blendmode
function ConvertBlendMode(i) end

---@param i integer
---@return raritycontrol
function ConvertRarityControl(i) end

---@param i integer
---@return texmapflags
function ConvertTexMapFlags(i) end

---@param i integer
---@return fogstate
function ConvertFogState(i) end

---@param i integer
---@return effecttype
function ConvertEffectType(i) end

---@param i integer
---@return version
function ConvertVersion(i) end

---@param i integer
---@return itemtype
function ConvertItemType(i) end

---@param i integer
---@return attacktype
function ConvertAttackType(i) end

---@param i integer
---@return damagetype
function ConvertDamageType(i) end

---@param i integer
---@return weapontype
function ConvertWeaponType(i) end

---@param i integer
---@return soundtype
function ConvertSoundType(i) end

---@param i integer
---@return pathingtype
function ConvertPathingType(i) end

---@param i integer
---@return mousebuttontype
function ConvertMouseButtonType(i) end

---@param i integer
---@return animtype
function ConvertAnimType(i) end

---@param i integer
---@return subanimtype
function ConvertSubAnimType(i) end

---@param i integer
---@return originframetype
function ConvertOriginFrameType(i) end

---@param i integer
---@return framepointtype
function ConvertFramePointType(i) end

---@param i integer
---@return textaligntype
function ConvertTextAlignType(i) end

---@param i integer
---@return frameeventtype
function ConvertFrameEventType(i) end

---@param i integer
---@return oskeytype
function ConvertOsKeyType(i) end

---@param i integer
---@return abilityintegerfield
function ConvertAbilityIntegerField(i) end

---@param i integer
---@return abilityrealfield
function ConvertAbilityRealField(i) end

---@param i integer
---@return abilitybooleanfield
function ConvertAbilityBooleanField(i) end

---@param i integer
---@return abilitystringfield
function ConvertAbilityStringField(i) end

---@param i integer
---@return abilityintegerlevelfield
function ConvertAbilityIntegerLevelField(i) end

---@param i integer
---@return abilityreallevelfield
function ConvertAbilityRealLevelField(i) end

---@param i integer
---@return abilitybooleanlevelfield
function ConvertAbilityBooleanLevelField(i) end

---@param i integer
---@return abilitystringlevelfield
function ConvertAbilityStringLevelField(i) end

---@param i integer
---@return abilityintegerlevelarrayfield
function ConvertAbilityIntegerLevelArrayField(i) end

---@param i integer
---@return abilityreallevelarrayfield
function ConvertAbilityRealLevelArrayField(i) end

---@param i integer
---@return abilitybooleanlevelarrayfield
function ConvertAbilityBooleanLevelArrayField(i) end

---@param i integer
---@return abilitystringlevelarrayfield
function ConvertAbilityStringLevelArrayField(i) end

---@param i integer
---@return unitintegerfield
function ConvertUnitIntegerField(i) end

---@param i integer
---@return unitrealfield
function ConvertUnitRealField(i) end

---@param i integer
---@return unitbooleanfield
function ConvertUnitBooleanField(i) end

---@param i integer
---@return unitstringfield
function ConvertUnitStringField(i) end

---@param i integer
---@return unitweaponintegerfield
function ConvertUnitWeaponIntegerField(i) end

---@param i integer
---@return unitweaponrealfield
function ConvertUnitWeaponRealField(i) end

---@param i integer
---@return unitweaponbooleanfield
function ConvertUnitWeaponBooleanField(i) end

---@param i integer
---@return unitweaponstringfield
function ConvertUnitWeaponStringField(i) end

---@param i integer
---@return itemintegerfield
function ConvertItemIntegerField(i) end

---@param i integer
---@return itemrealfield
function ConvertItemRealField(i) end

---@param i integer
---@return itembooleanfield
function ConvertItemBooleanField(i) end

---@param i integer
---@return itemstringfield
function ConvertItemStringField(i) end

---@param i integer
---@return movetype
function ConvertMoveType(i) end

---@param i integer
---@return targetflag
function ConvertTargetFlag(i) end

---@param i integer
---@return armortype
function ConvertArmorType(i) end

---@param i integer
---@return heroattribute
function ConvertHeroAttribute(i) end

---@param i integer
---@return defensetype
function ConvertDefenseType(i) end

---@param i integer
---@return regentype
function ConvertRegenType(i) end

---@param i integer
---@return unitcategory
function ConvertUnitCategory(i) end

---@param i integer
---@return pathingflag
function ConvertPathingFlag(i) end


---@param orderIdString string
---@return integer
function OrderId(orderIdString) end

---@param orderId integer
---@return string
function OrderId2String(orderId) end

---@param unitIdString string
---@return integer
function UnitId(unitIdString) end

---@param unitId integer
---@return string
function UnitId2String(unitId) end


-- Not currently working correctly...
---@param abilityIdString string
---@return integer
function AbilityId(abilityIdString) end

---@param abilityId integer
---@return string
function AbilityId2String(abilityId) end


-- Looks up the "name" field for any object (unit, item, ability)
---@param objectId integer
---@return string
function GetObjectName(objectId) end


---@return integer
function GetBJMaxPlayers() end

---@return integer
function GetBJPlayerNeutralVictim() end

---@return integer
function GetBJPlayerNeutralExtra() end

---@return integer
function GetBJMaxPlayerSlots() end

---@return integer
function GetPlayerNeutralPassive() end

---@return integer
function GetPlayerNeutralAggressive() end




--===================================================
-- Game Constants
--===================================================

-- pfff
FALSE                           = false ---@type boolean
TRUE                            = true ---@type boolean
JASS_MAX_ARRAY_SIZE             = 32768 ---@type integer

PLAYER_NEUTRAL_PASSIVE          = GetPlayerNeutralPassive() ---@type integer
PLAYER_NEUTRAL_AGGRESSIVE       = GetPlayerNeutralAggressive() ---@type integer

PLAYER_COLOR_RED                = ConvertPlayerColor(0) ---@type playercolor
PLAYER_COLOR_BLUE               = ConvertPlayerColor(1) ---@type playercolor
PLAYER_COLOR_CYAN               = ConvertPlayerColor(2) ---@type playercolor
PLAYER_COLOR_PURPLE             = ConvertPlayerColor(3) ---@type playercolor
PLAYER_COLOR_YELLOW             = ConvertPlayerColor(4) ---@type playercolor
PLAYER_COLOR_ORANGE             = ConvertPlayerColor(5) ---@type playercolor
PLAYER_COLOR_GREEN              = ConvertPlayerColor(6) ---@type playercolor
PLAYER_COLOR_PINK               = ConvertPlayerColor(7) ---@type playercolor
PLAYER_COLOR_LIGHT_GRAY         = ConvertPlayerColor(8) ---@type playercolor
PLAYER_COLOR_LIGHT_BLUE         = ConvertPlayerColor(9) ---@type playercolor
PLAYER_COLOR_AQUA               = ConvertPlayerColor(10) ---@type playercolor
PLAYER_COLOR_BROWN              = ConvertPlayerColor(11) ---@type playercolor
PLAYER_COLOR_MAROON             = ConvertPlayerColor(12) ---@type playercolor
PLAYER_COLOR_NAVY               = ConvertPlayerColor(13) ---@type playercolor
PLAYER_COLOR_TURQUOISE          = ConvertPlayerColor(14) ---@type playercolor
PLAYER_COLOR_VIOLET             = ConvertPlayerColor(15) ---@type playercolor
PLAYER_COLOR_WHEAT              = ConvertPlayerColor(16) ---@type playercolor
PLAYER_COLOR_PEACH              = ConvertPlayerColor(17) ---@type playercolor
PLAYER_COLOR_MINT               = ConvertPlayerColor(18) ---@type playercolor
PLAYER_COLOR_LAVENDER           = ConvertPlayerColor(19) ---@type playercolor
PLAYER_COLOR_COAL               = ConvertPlayerColor(20) ---@type playercolor
PLAYER_COLOR_SNOW               = ConvertPlayerColor(21) ---@type playercolor
PLAYER_COLOR_EMERALD            = ConvertPlayerColor(22) ---@type playercolor
PLAYER_COLOR_PEANUT             = ConvertPlayerColor(23) ---@type playercolor

RACE_HUMAN                      = ConvertRace(1) ---@type race
RACE_ORC                        = ConvertRace(2) ---@type race
RACE_UNDEAD                     = ConvertRace(3) ---@type race
RACE_NIGHTELF                   = ConvertRace(4) ---@type race
RACE_DEMON                      = ConvertRace(5) ---@type race
RACE_OTHER                      = ConvertRace(7) ---@type race

PLAYER_GAME_RESULT_VICTORY      = ConvertPlayerGameResult(0) ---@type playergameresult
PLAYER_GAME_RESULT_DEFEAT       = ConvertPlayerGameResult(1) ---@type playergameresult
PLAYER_GAME_RESULT_TIE          = ConvertPlayerGameResult(2) ---@type playergameresult
PLAYER_GAME_RESULT_NEUTRAL      = ConvertPlayerGameResult(3) ---@type playergameresult

ALLIANCE_PASSIVE                = ConvertAllianceType(0) ---@type alliancetype
ALLIANCE_HELP_REQUEST           = ConvertAllianceType(1) ---@type alliancetype
ALLIANCE_HELP_RESPONSE          = ConvertAllianceType(2) ---@type alliancetype
ALLIANCE_SHARED_XP              = ConvertAllianceType(3) ---@type alliancetype
ALLIANCE_SHARED_SPELLS          = ConvertAllianceType(4) ---@type alliancetype
ALLIANCE_SHARED_VISION          = ConvertAllianceType(5) ---@type alliancetype
ALLIANCE_SHARED_CONTROL         = ConvertAllianceType(6) ---@type alliancetype
ALLIANCE_SHARED_ADVANCED_CONTROL= ConvertAllianceType(7) ---@type alliancetype
ALLIANCE_RESCUABLE              = ConvertAllianceType(8) ---@type alliancetype
ALLIANCE_SHARED_VISION_FORCED   = ConvertAllianceType(9) ---@type alliancetype

VERSION_REIGN_OF_CHAOS          = ConvertVersion(0) ---@type version
VERSION_FROZEN_THRONE           = ConvertVersion(1) ---@type version

ATTACK_TYPE_NORMAL              = ConvertAttackType(0) ---@type attacktype
ATTACK_TYPE_MELEE               = ConvertAttackType(1) ---@type attacktype
ATTACK_TYPE_PIERCE              = ConvertAttackType(2) ---@type attacktype
ATTACK_TYPE_SIEGE               = ConvertAttackType(3) ---@type attacktype
ATTACK_TYPE_MAGIC               = ConvertAttackType(4) ---@type attacktype
ATTACK_TYPE_CHAOS               = ConvertAttackType(5) ---@type attacktype
ATTACK_TYPE_HERO                = ConvertAttackType(6) ---@type attacktype

DAMAGE_TYPE_UNKNOWN             = ConvertDamageType(0) ---@type damagetype
DAMAGE_TYPE_NORMAL              = ConvertDamageType(4) ---@type damagetype
DAMAGE_TYPE_ENHANCED            = ConvertDamageType(5) ---@type damagetype
DAMAGE_TYPE_FIRE                = ConvertDamageType(8) ---@type damagetype
DAMAGE_TYPE_COLD                = ConvertDamageType(9) ---@type damagetype
DAMAGE_TYPE_LIGHTNING           = ConvertDamageType(10) ---@type damagetype
DAMAGE_TYPE_POISON              = ConvertDamageType(11) ---@type damagetype
DAMAGE_TYPE_DISEASE             = ConvertDamageType(12) ---@type damagetype
DAMAGE_TYPE_DIVINE              = ConvertDamageType(13) ---@type damagetype
DAMAGE_TYPE_MAGIC               = ConvertDamageType(14) ---@type damagetype
DAMAGE_TYPE_SONIC               = ConvertDamageType(15) ---@type damagetype
DAMAGE_TYPE_ACID                = ConvertDamageType(16) ---@type damagetype
DAMAGE_TYPE_FORCE               = ConvertDamageType(17) ---@type damagetype
DAMAGE_TYPE_DEATH               = ConvertDamageType(18) ---@type damagetype
DAMAGE_TYPE_MIND                = ConvertDamageType(19) ---@type damagetype
DAMAGE_TYPE_PLANT               = ConvertDamageType(20) ---@type damagetype
DAMAGE_TYPE_DEFENSIVE           = ConvertDamageType(21) ---@type damagetype
DAMAGE_TYPE_DEMOLITION          = ConvertDamageType(22) ---@type damagetype
DAMAGE_TYPE_SLOW_POISON         = ConvertDamageType(23) ---@type damagetype
DAMAGE_TYPE_SPIRIT_LINK         = ConvertDamageType(24) ---@type damagetype
DAMAGE_TYPE_SHADOW_STRIKE       = ConvertDamageType(25) ---@type damagetype
DAMAGE_TYPE_UNIVERSAL           = ConvertDamageType(26) ---@type damagetype

WEAPON_TYPE_WHOKNOWS            = ConvertWeaponType(0) ---@type weapontype
WEAPON_TYPE_METAL_LIGHT_CHOP    = ConvertWeaponType(1) ---@type weapontype
WEAPON_TYPE_METAL_MEDIUM_CHOP   = ConvertWeaponType(2) ---@type weapontype
WEAPON_TYPE_METAL_HEAVY_CHOP    = ConvertWeaponType(3) ---@type weapontype
WEAPON_TYPE_METAL_LIGHT_SLICE   = ConvertWeaponType(4) ---@type weapontype
WEAPON_TYPE_METAL_MEDIUM_SLICE  = ConvertWeaponType(5) ---@type weapontype
WEAPON_TYPE_METAL_HEAVY_SLICE   = ConvertWeaponType(6) ---@type weapontype
WEAPON_TYPE_METAL_MEDIUM_BASH   = ConvertWeaponType(7) ---@type weapontype
WEAPON_TYPE_METAL_HEAVY_BASH    = ConvertWeaponType(8) ---@type weapontype
WEAPON_TYPE_METAL_MEDIUM_STAB   = ConvertWeaponType(9) ---@type weapontype
WEAPON_TYPE_METAL_HEAVY_STAB    = ConvertWeaponType(10) ---@type weapontype
WEAPON_TYPE_WOOD_LIGHT_SLICE    = ConvertWeaponType(11) ---@type weapontype
WEAPON_TYPE_WOOD_MEDIUM_SLICE   = ConvertWeaponType(12) ---@type weapontype
WEAPON_TYPE_WOOD_HEAVY_SLICE    = ConvertWeaponType(13) ---@type weapontype
WEAPON_TYPE_WOOD_LIGHT_BASH     = ConvertWeaponType(14) ---@type weapontype
WEAPON_TYPE_WOOD_MEDIUM_BASH    = ConvertWeaponType(15) ---@type weapontype
WEAPON_TYPE_WOOD_HEAVY_BASH     = ConvertWeaponType(16) ---@type weapontype
WEAPON_TYPE_WOOD_LIGHT_STAB     = ConvertWeaponType(17) ---@type weapontype
WEAPON_TYPE_WOOD_MEDIUM_STAB    = ConvertWeaponType(18) ---@type weapontype
WEAPON_TYPE_CLAW_LIGHT_SLICE    = ConvertWeaponType(19) ---@type weapontype
WEAPON_TYPE_CLAW_MEDIUM_SLICE   = ConvertWeaponType(20) ---@type weapontype
WEAPON_TYPE_CLAW_HEAVY_SLICE    = ConvertWeaponType(21) ---@type weapontype
WEAPON_TYPE_AXE_MEDIUM_CHOP     = ConvertWeaponType(22) ---@type weapontype
WEAPON_TYPE_ROCK_HEAVY_BASH     = ConvertWeaponType(23) ---@type weapontype

PATHING_TYPE_ANY                = ConvertPathingType(0) ---@type pathingtype
PATHING_TYPE_WALKABILITY        = ConvertPathingType(1) ---@type pathingtype
PATHING_TYPE_FLYABILITY         = ConvertPathingType(2) ---@type pathingtype
PATHING_TYPE_BUILDABILITY       = ConvertPathingType(3) ---@type pathingtype
PATHING_TYPE_PEONHARVESTPATHING = ConvertPathingType(4) ---@type pathingtype
PATHING_TYPE_BLIGHTPATHING      = ConvertPathingType(5) ---@type pathingtype
PATHING_TYPE_FLOATABILITY       = ConvertPathingType(6) ---@type pathingtype
PATHING_TYPE_AMPHIBIOUSPATHING  = ConvertPathingType(7) ---@type pathingtype

MOUSE_BUTTON_TYPE_LEFT          = ConvertMouseButtonType(1) ---@type mousebuttontype
MOUSE_BUTTON_TYPE_MIDDLE        = ConvertMouseButtonType(2) ---@type mousebuttontype
MOUSE_BUTTON_TYPE_RIGHT         = ConvertMouseButtonType(3) ---@type mousebuttontype

ANIM_TYPE_BIRTH                 = ConvertAnimType(0) ---@type animtype
ANIM_TYPE_DEATH                 = ConvertAnimType(1) ---@type animtype
ANIM_TYPE_DECAY                 = ConvertAnimType(2) ---@type animtype
ANIM_TYPE_DISSIPATE             = ConvertAnimType(3) ---@type animtype
ANIM_TYPE_STAND                 = ConvertAnimType(4) ---@type animtype
ANIM_TYPE_WALK                  = ConvertAnimType(5) ---@type animtype
ANIM_TYPE_ATTACK                = ConvertAnimType(6) ---@type animtype
ANIM_TYPE_MORPH                 = ConvertAnimType(7) ---@type animtype
ANIM_TYPE_SLEEP                 = ConvertAnimType(8) ---@type animtype
ANIM_TYPE_SPELL                 = ConvertAnimType(9) ---@type animtype
ANIM_TYPE_PORTRAIT              = ConvertAnimType(10) ---@type animtype

SUBANIM_TYPE_ROOTED             = ConvertSubAnimType(11) ---@type subanimtype
SUBANIM_TYPE_ALTERNATE_EX       = ConvertSubAnimType(12) ---@type subanimtype
SUBANIM_TYPE_LOOPING            = ConvertSubAnimType(13) ---@type subanimtype
SUBANIM_TYPE_SLAM               = ConvertSubAnimType(14) ---@type subanimtype
SUBANIM_TYPE_THROW              = ConvertSubAnimType(15) ---@type subanimtype
SUBANIM_TYPE_SPIKED             = ConvertSubAnimType(16) ---@type subanimtype
SUBANIM_TYPE_FAST               = ConvertSubAnimType(17) ---@type subanimtype
SUBANIM_TYPE_SPIN               = ConvertSubAnimType(18) ---@type subanimtype
SUBANIM_TYPE_READY              = ConvertSubAnimType(19) ---@type subanimtype
SUBANIM_TYPE_CHANNEL            = ConvertSubAnimType(20) ---@type subanimtype
SUBANIM_TYPE_DEFEND             = ConvertSubAnimType(21) ---@type subanimtype
SUBANIM_TYPE_VICTORY            = ConvertSubAnimType(22) ---@type subanimtype
SUBANIM_TYPE_TURN               = ConvertSubAnimType(23) ---@type subanimtype
SUBANIM_TYPE_LEFT               = ConvertSubAnimType(24) ---@type subanimtype
SUBANIM_TYPE_RIGHT              = ConvertSubAnimType(25) ---@type subanimtype
SUBANIM_TYPE_FIRE               = ConvertSubAnimType(26) ---@type subanimtype
SUBANIM_TYPE_FLESH              = ConvertSubAnimType(27) ---@type subanimtype
SUBANIM_TYPE_HIT                = ConvertSubAnimType(28) ---@type subanimtype
SUBANIM_TYPE_WOUNDED            = ConvertSubAnimType(29) ---@type subanimtype
SUBANIM_TYPE_LIGHT              = ConvertSubAnimType(30) ---@type subanimtype
SUBANIM_TYPE_MODERATE           = ConvertSubAnimType(31) ---@type subanimtype
SUBANIM_TYPE_SEVERE             = ConvertSubAnimType(32) ---@type subanimtype
SUBANIM_TYPE_CRITICAL           = ConvertSubAnimType(33) ---@type subanimtype
SUBANIM_TYPE_COMPLETE           = ConvertSubAnimType(34) ---@type subanimtype
SUBANIM_TYPE_GOLD               = ConvertSubAnimType(35) ---@type subanimtype
SUBANIM_TYPE_LUMBER             = ConvertSubAnimType(36) ---@type subanimtype
SUBANIM_TYPE_WORK               = ConvertSubAnimType(37) ---@type subanimtype
SUBANIM_TYPE_TALK               = ConvertSubAnimType(38) ---@type subanimtype
SUBANIM_TYPE_FIRST              = ConvertSubAnimType(39) ---@type subanimtype
SUBANIM_TYPE_SECOND             = ConvertSubAnimType(40) ---@type subanimtype
SUBANIM_TYPE_THIRD              = ConvertSubAnimType(41) ---@type subanimtype
SUBANIM_TYPE_FOURTH             = ConvertSubAnimType(42) ---@type subanimtype
SUBANIM_TYPE_FIFTH              = ConvertSubAnimType(43) ---@type subanimtype
SUBANIM_TYPE_ONE                = ConvertSubAnimType(44) ---@type subanimtype
SUBANIM_TYPE_TWO                = ConvertSubAnimType(45) ---@type subanimtype
SUBANIM_TYPE_THREE              = ConvertSubAnimType(46) ---@type subanimtype
SUBANIM_TYPE_FOUR               = ConvertSubAnimType(47) ---@type subanimtype
SUBANIM_TYPE_FIVE               = ConvertSubAnimType(48) ---@type subanimtype
SUBANIM_TYPE_SMALL              = ConvertSubAnimType(49) ---@type subanimtype
SUBANIM_TYPE_MEDIUM             = ConvertSubAnimType(50) ---@type subanimtype
SUBANIM_TYPE_LARGE              = ConvertSubAnimType(51) ---@type subanimtype
SUBANIM_TYPE_UPGRADE            = ConvertSubAnimType(52) ---@type subanimtype
SUBANIM_TYPE_DRAIN              = ConvertSubAnimType(53) ---@type subanimtype
SUBANIM_TYPE_FILL               = ConvertSubAnimType(54) ---@type subanimtype
SUBANIM_TYPE_CHAINLIGHTNING     = ConvertSubAnimType(55) ---@type subanimtype
SUBANIM_TYPE_EATTREE            = ConvertSubAnimType(56) ---@type subanimtype
SUBANIM_TYPE_PUKE               = ConvertSubAnimType(57) ---@type subanimtype
SUBANIM_TYPE_FLAIL              = ConvertSubAnimType(58) ---@type subanimtype
SUBANIM_TYPE_OFF                = ConvertSubAnimType(59) ---@type subanimtype
SUBANIM_TYPE_SWIM               = ConvertSubAnimType(60) ---@type subanimtype
SUBANIM_TYPE_ENTANGLE           = ConvertSubAnimType(61) ---@type subanimtype
SUBANIM_TYPE_BERSERK            = ConvertSubAnimType(62) ---@type subanimtype

--===================================================
-- Map Setup Constants
--===================================================

RACE_PREF_HUMAN                     = ConvertRacePref(1) ---@type racepreference
RACE_PREF_ORC                       = ConvertRacePref(2) ---@type racepreference
RACE_PREF_NIGHTELF                  = ConvertRacePref(4) ---@type racepreference
RACE_PREF_UNDEAD                    = ConvertRacePref(8) ---@type racepreference
RACE_PREF_DEMON                     = ConvertRacePref(16) ---@type racepreference
RACE_PREF_RANDOM                    = ConvertRacePref(32) ---@type racepreference
RACE_PREF_USER_SELECTABLE           = ConvertRacePref(64) ---@type racepreference

MAP_CONTROL_USER                    = ConvertMapControl(0) ---@type mapcontrol
MAP_CONTROL_COMPUTER                = ConvertMapControl(1) ---@type mapcontrol
MAP_CONTROL_RESCUABLE               = ConvertMapControl(2) ---@type mapcontrol
MAP_CONTROL_NEUTRAL                 = ConvertMapControl(3) ---@type mapcontrol
MAP_CONTROL_CREEP                   = ConvertMapControl(4) ---@type mapcontrol
MAP_CONTROL_NONE                    = ConvertMapControl(5) ---@type mapcontrol

GAME_TYPE_MELEE                     = ConvertGameType(1) ---@type gametype
GAME_TYPE_FFA                       = ConvertGameType(2) ---@type gametype
GAME_TYPE_USE_MAP_SETTINGS          = ConvertGameType(4) ---@type gametype
GAME_TYPE_BLIZ                      = ConvertGameType(8) ---@type gametype
GAME_TYPE_ONE_ON_ONE                = ConvertGameType(16) ---@type gametype
GAME_TYPE_TWO_TEAM_PLAY             = ConvertGameType(32) ---@type gametype
GAME_TYPE_THREE_TEAM_PLAY           = ConvertGameType(64) ---@type gametype
GAME_TYPE_FOUR_TEAM_PLAY            = ConvertGameType(128) ---@type gametype

MAP_FOG_HIDE_TERRAIN                = ConvertMapFlag(1) ---@type mapflag
MAP_FOG_MAP_EXPLORED                = ConvertMapFlag(2) ---@type mapflag
MAP_FOG_ALWAYS_VISIBLE              = ConvertMapFlag(4) ---@type mapflag

MAP_USE_HANDICAPS                   = ConvertMapFlag(8) ---@type mapflag
MAP_OBSERVERS                       = ConvertMapFlag(16) ---@type mapflag
MAP_OBSERVERS_ON_DEATH              = ConvertMapFlag(32) ---@type mapflag

MAP_FIXED_COLORS                    = ConvertMapFlag(128) ---@type mapflag

MAP_LOCK_RESOURCE_TRADING           = ConvertMapFlag(256) ---@type mapflag
MAP_RESOURCE_TRADING_ALLIES_ONLY    = ConvertMapFlag(512) ---@type mapflag

MAP_LOCK_ALLIANCE_CHANGES           = ConvertMapFlag(1024) ---@type mapflag
MAP_ALLIANCE_CHANGES_HIDDEN         = ConvertMapFlag(2048) ---@type mapflag

MAP_CHEATS                          = ConvertMapFlag(4096) ---@type mapflag
MAP_CHEATS_HIDDEN                   = ConvertMapFlag(8192) ---@type mapflag

MAP_LOCK_SPEED                      = ConvertMapFlag(8192*2) ---@type mapflag
MAP_LOCK_RANDOM_SEED                = ConvertMapFlag(8192*4) ---@type mapflag
MAP_SHARED_ADVANCED_CONTROL         = ConvertMapFlag(8192*8) ---@type mapflag
MAP_RANDOM_HERO                     = ConvertMapFlag(8192*16) ---@type mapflag
MAP_RANDOM_RACES                    = ConvertMapFlag(8192*32) ---@type mapflag
MAP_RELOADED                        = ConvertMapFlag(8192*64) ---@type mapflag

MAP_PLACEMENT_RANDOM                = ConvertPlacement(0)   ---@type placement -- random among all slots
MAP_PLACEMENT_FIXED                 = ConvertPlacement(1)   ---@type placement -- player 0 in start loc 0...
MAP_PLACEMENT_USE_MAP_SETTINGS      = ConvertPlacement(2)   ---@type placement -- whatever was specified by the script
MAP_PLACEMENT_TEAMS_TOGETHER        = ConvertPlacement(3)   ---@type placement -- random with allies next to each other

MAP_LOC_PRIO_LOW                    = ConvertStartLocPrio(0) ---@type startlocprio
MAP_LOC_PRIO_HIGH                   = ConvertStartLocPrio(1) ---@type startlocprio
MAP_LOC_PRIO_NOT                    = ConvertStartLocPrio(2) ---@type startlocprio

MAP_DENSITY_NONE                    = ConvertMapDensity(0) ---@type mapdensity
MAP_DENSITY_LIGHT                   = ConvertMapDensity(1) ---@type mapdensity
MAP_DENSITY_MEDIUM                  = ConvertMapDensity(2) ---@type mapdensity
MAP_DENSITY_HEAVY                   = ConvertMapDensity(3) ---@type mapdensity

MAP_DIFFICULTY_EASY                 = ConvertGameDifficulty(0) ---@type gamedifficulty
MAP_DIFFICULTY_NORMAL               = ConvertGameDifficulty(1) ---@type gamedifficulty
MAP_DIFFICULTY_HARD                 = ConvertGameDifficulty(2) ---@type gamedifficulty
MAP_DIFFICULTY_INSANE               = ConvertGameDifficulty(3) ---@type gamedifficulty

MAP_SPEED_SLOWEST                   = ConvertGameSpeed(0) ---@type gamespeed
MAP_SPEED_SLOW                      = ConvertGameSpeed(1) ---@type gamespeed
MAP_SPEED_NORMAL                    = ConvertGameSpeed(2) ---@type gamespeed
MAP_SPEED_FAST                      = ConvertGameSpeed(3) ---@type gamespeed
MAP_SPEED_FASTEST                   = ConvertGameSpeed(4) ---@type gamespeed

PLAYER_SLOT_STATE_EMPTY             = ConvertPlayerSlotState(0) ---@type playerslotstate
PLAYER_SLOT_STATE_PLAYING           = ConvertPlayerSlotState(1) ---@type playerslotstate
PLAYER_SLOT_STATE_LEFT              = ConvertPlayerSlotState(2) ---@type playerslotstate

--===================================================
-- Sound Constants
--===================================================
SOUND_VOLUMEGROUP_UNITMOVEMENT      = ConvertVolumeGroup(0) ---@type volumegroup
SOUND_VOLUMEGROUP_UNITSOUNDS        = ConvertVolumeGroup(1) ---@type volumegroup
SOUND_VOLUMEGROUP_COMBAT            = ConvertVolumeGroup(2) ---@type volumegroup
SOUND_VOLUMEGROUP_SPELLS            = ConvertVolumeGroup(3) ---@type volumegroup
SOUND_VOLUMEGROUP_UI                = ConvertVolumeGroup(4) ---@type volumegroup
SOUND_VOLUMEGROUP_MUSIC             = ConvertVolumeGroup(5) ---@type volumegroup
SOUND_VOLUMEGROUP_AMBIENTSOUNDS     = ConvertVolumeGroup(6) ---@type volumegroup
SOUND_VOLUMEGROUP_FIRE              = ConvertVolumeGroup(7) ---@type volumegroup


--===================================================
-- Game, Player, and Unit States
--
-- For use with TriggerRegisterStateEvent
--
--===================================================

GAME_STATE_DIVINE_INTERVENTION          = ConvertIGameState(0) ---@type igamestate
GAME_STATE_DISCONNECTED                 = ConvertIGameState(1) ---@type igamestate
GAME_STATE_TIME_OF_DAY                  = ConvertFGameState(2) ---@type fgamestate

PLAYER_STATE_GAME_RESULT               = ConvertPlayerState(0) ---@type playerstate

-- current resource levels
--
PLAYER_STATE_RESOURCE_GOLD             = ConvertPlayerState(1) ---@type playerstate
PLAYER_STATE_RESOURCE_LUMBER           = ConvertPlayerState(2) ---@type playerstate
PLAYER_STATE_RESOURCE_HERO_TOKENS      = ConvertPlayerState(3) ---@type playerstate
PLAYER_STATE_RESOURCE_FOOD_CAP         = ConvertPlayerState(4) ---@type playerstate
PLAYER_STATE_RESOURCE_FOOD_USED        = ConvertPlayerState(5) ---@type playerstate
PLAYER_STATE_FOOD_CAP_CEILING          = ConvertPlayerState(6) ---@type playerstate

PLAYER_STATE_GIVES_BOUNTY              = ConvertPlayerState(7) ---@type playerstate
PLAYER_STATE_ALLIED_VICTORY            = ConvertPlayerState(8) ---@type playerstate
PLAYER_STATE_PLACED                    = ConvertPlayerState(9) ---@type playerstate
PLAYER_STATE_OBSERVER_ON_DEATH         = ConvertPlayerState(10) ---@type playerstate
PLAYER_STATE_OBSERVER                  = ConvertPlayerState(11) ---@type playerstate
PLAYER_STATE_UNFOLLOWABLE              = ConvertPlayerState(12) ---@type playerstate

-- taxation rate for each resource
--
PLAYER_STATE_GOLD_UPKEEP_RATE          = ConvertPlayerState(13) ---@type playerstate
PLAYER_STATE_LUMBER_UPKEEP_RATE        = ConvertPlayerState(14) ---@type playerstate

-- cumulative resources collected by the player during the mission
--
PLAYER_STATE_GOLD_GATHERED             = ConvertPlayerState(15) ---@type playerstate
PLAYER_STATE_LUMBER_GATHERED           = ConvertPlayerState(16) ---@type playerstate

PLAYER_STATE_NO_CREEP_SLEEP            = ConvertPlayerState(25) ---@type playerstate

UNIT_STATE_LIFE                          = ConvertUnitState(0) ---@type unitstate
UNIT_STATE_MAX_LIFE                      = ConvertUnitState(1) ---@type unitstate
UNIT_STATE_MANA                          = ConvertUnitState(2) ---@type unitstate
UNIT_STATE_MAX_MANA                      = ConvertUnitState(3) ---@type unitstate

AI_DIFFICULTY_NEWBIE                  = ConvertAIDifficulty(0) ---@type aidifficulty
AI_DIFFICULTY_NORMAL                  = ConvertAIDifficulty(1) ---@type aidifficulty
AI_DIFFICULTY_INSANE                  = ConvertAIDifficulty(2) ---@type aidifficulty

-- player score values
PLAYER_SCORE_UNITS_TRAINED             = ConvertPlayerScore(0) ---@type playerscore
PLAYER_SCORE_UNITS_KILLED              = ConvertPlayerScore(1) ---@type playerscore
PLAYER_SCORE_STRUCT_BUILT              = ConvertPlayerScore(2) ---@type playerscore
PLAYER_SCORE_STRUCT_RAZED              = ConvertPlayerScore(3) ---@type playerscore
PLAYER_SCORE_TECH_PERCENT              = ConvertPlayerScore(4) ---@type playerscore
PLAYER_SCORE_FOOD_MAXPROD              = ConvertPlayerScore(5) ---@type playerscore
PLAYER_SCORE_FOOD_MAXUSED              = ConvertPlayerScore(6) ---@type playerscore
PLAYER_SCORE_HEROES_KILLED             = ConvertPlayerScore(7) ---@type playerscore
PLAYER_SCORE_ITEMS_GAINED              = ConvertPlayerScore(8) ---@type playerscore
PLAYER_SCORE_MERCS_HIRED               = ConvertPlayerScore(9) ---@type playerscore
PLAYER_SCORE_GOLD_MINED_TOTAL          = ConvertPlayerScore(10) ---@type playerscore
PLAYER_SCORE_GOLD_MINED_UPKEEP         = ConvertPlayerScore(11) ---@type playerscore
PLAYER_SCORE_GOLD_LOST_UPKEEP          = ConvertPlayerScore(12) ---@type playerscore
PLAYER_SCORE_GOLD_LOST_TAX             = ConvertPlayerScore(13) ---@type playerscore
PLAYER_SCORE_GOLD_GIVEN                = ConvertPlayerScore(14) ---@type playerscore
PLAYER_SCORE_GOLD_RECEIVED             = ConvertPlayerScore(15) ---@type playerscore
PLAYER_SCORE_LUMBER_TOTAL              = ConvertPlayerScore(16) ---@type playerscore
PLAYER_SCORE_LUMBER_LOST_UPKEEP        = ConvertPlayerScore(17) ---@type playerscore
PLAYER_SCORE_LUMBER_LOST_TAX           = ConvertPlayerScore(18) ---@type playerscore
PLAYER_SCORE_LUMBER_GIVEN              = ConvertPlayerScore(19) ---@type playerscore
PLAYER_SCORE_LUMBER_RECEIVED           = ConvertPlayerScore(20) ---@type playerscore
PLAYER_SCORE_UNIT_TOTAL                = ConvertPlayerScore(21) ---@type playerscore
PLAYER_SCORE_HERO_TOTAL                = ConvertPlayerScore(22) ---@type playerscore
PLAYER_SCORE_RESOURCE_TOTAL            = ConvertPlayerScore(23) ---@type playerscore
PLAYER_SCORE_TOTAL                     = ConvertPlayerScore(24) ---@type playerscore

--===================================================
-- Game, Player and Unit Events
--
--  When an event causes a trigger to fire these
--  values allow the action code to determine which
--  event was dispatched and therefore which set of
--   functions should be used to get information
--  about the event.
--
-- Do NOT change the order or value of these s
-- without insuring that the JASS_GAME_EVENTS_WAR3 enum
-- is changed to match.
--
--===================================================

--===================================================
-- For use with TriggerRegisterGameEvent
--===================================================

EVENT_GAME_VICTORY                       = ConvertGameEvent(0) ---@type gameevent
EVENT_GAME_END_LEVEL                     = ConvertGameEvent(1) ---@type gameevent

EVENT_GAME_VARIABLE_LIMIT                = ConvertGameEvent(2) ---@type gameevent
EVENT_GAME_STATE_LIMIT                   = ConvertGameEvent(3) ---@type gameevent

EVENT_GAME_TIMER_EXPIRED                 = ConvertGameEvent(4) ---@type gameevent

EVENT_GAME_ENTER_REGION                  = ConvertGameEvent(5) ---@type gameevent
EVENT_GAME_LEAVE_REGION                  = ConvertGameEvent(6) ---@type gameevent

EVENT_GAME_TRACKABLE_HIT                 = ConvertGameEvent(7) ---@type gameevent
EVENT_GAME_TRACKABLE_TRACK               = ConvertGameEvent(8) ---@type gameevent

EVENT_GAME_SHOW_SKILL                    = ConvertGameEvent(9) ---@type gameevent
EVENT_GAME_BUILD_SUBMENU                 = ConvertGameEvent(10) ---@type gameevent

--===================================================
-- For use with TriggerRegisterPlayerEvent
--===================================================
EVENT_PLAYER_STATE_LIMIT               = ConvertPlayerEvent(11) ---@type playerevent
EVENT_PLAYER_ALLIANCE_CHANGED          = ConvertPlayerEvent(12) ---@type playerevent

EVENT_PLAYER_DEFEAT                    = ConvertPlayerEvent(13) ---@type playerevent
EVENT_PLAYER_VICTORY                   = ConvertPlayerEvent(14) ---@type playerevent
EVENT_PLAYER_LEAVE                     = ConvertPlayerEvent(15) ---@type playerevent
EVENT_PLAYER_CHAT                      = ConvertPlayerEvent(16) ---@type playerevent
EVENT_PLAYER_END_CINEMATIC             = ConvertPlayerEvent(17) ---@type playerevent

--===================================================
-- For use with TriggerRegisterPlayerUnitEvent
--===================================================

EVENT_PLAYER_UNIT_ATTACKED                 = ConvertPlayerUnitEvent(18) ---@type playerunitevent
EVENT_PLAYER_UNIT_RESCUED                  = ConvertPlayerUnitEvent(19) ---@type playerunitevent

EVENT_PLAYER_UNIT_DEATH                    = ConvertPlayerUnitEvent(20) ---@type playerunitevent
EVENT_PLAYER_UNIT_DECAY                    = ConvertPlayerUnitEvent(21) ---@type playerunitevent

EVENT_PLAYER_UNIT_DETECTED                 = ConvertPlayerUnitEvent(22) ---@type playerunitevent
EVENT_PLAYER_UNIT_HIDDEN                   = ConvertPlayerUnitEvent(23) ---@type playerunitevent

EVENT_PLAYER_UNIT_SELECTED                 = ConvertPlayerUnitEvent(24) ---@type playerunitevent
EVENT_PLAYER_UNIT_DESELECTED               = ConvertPlayerUnitEvent(25) ---@type playerunitevent

EVENT_PLAYER_UNIT_CONSTRUCT_START          = ConvertPlayerUnitEvent(26) ---@type playerunitevent
EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL         = ConvertPlayerUnitEvent(27) ---@type playerunitevent
EVENT_PLAYER_UNIT_CONSTRUCT_FINISH         = ConvertPlayerUnitEvent(28) ---@type playerunitevent

EVENT_PLAYER_UNIT_UPGRADE_START            = ConvertPlayerUnitEvent(29) ---@type playerunitevent
EVENT_PLAYER_UNIT_UPGRADE_CANCEL           = ConvertPlayerUnitEvent(30) ---@type playerunitevent
EVENT_PLAYER_UNIT_UPGRADE_FINISH           = ConvertPlayerUnitEvent(31) ---@type playerunitevent

EVENT_PLAYER_UNIT_TRAIN_START              = ConvertPlayerUnitEvent(32) ---@type playerunitevent
EVENT_PLAYER_UNIT_TRAIN_CANCEL             = ConvertPlayerUnitEvent(33) ---@type playerunitevent
EVENT_PLAYER_UNIT_TRAIN_FINISH             = ConvertPlayerUnitEvent(34) ---@type playerunitevent

EVENT_PLAYER_UNIT_RESEARCH_START           = ConvertPlayerUnitEvent(35) ---@type playerunitevent
EVENT_PLAYER_UNIT_RESEARCH_CANCEL          = ConvertPlayerUnitEvent(36) ---@type playerunitevent
EVENT_PLAYER_UNIT_RESEARCH_FINISH          = ConvertPlayerUnitEvent(37) ---@type playerunitevent
EVENT_PLAYER_UNIT_ISSUED_ORDER             = ConvertPlayerUnitEvent(38) ---@type playerunitevent
EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER       = ConvertPlayerUnitEvent(39) ---@type playerunitevent
EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER      = ConvertPlayerUnitEvent(40) ---@type playerunitevent
EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER        = ConvertPlayerUnitEvent(40)    ---@type playerunitevent -- for compat

EVENT_PLAYER_HERO_LEVEL                    = ConvertPlayerUnitEvent(41) ---@type playerunitevent
EVENT_PLAYER_HERO_SKILL                    = ConvertPlayerUnitEvent(42) ---@type playerunitevent

EVENT_PLAYER_HERO_REVIVABLE                = ConvertPlayerUnitEvent(43) ---@type playerunitevent

EVENT_PLAYER_HERO_REVIVE_START             = ConvertPlayerUnitEvent(44) ---@type playerunitevent
EVENT_PLAYER_HERO_REVIVE_CANCEL            = ConvertPlayerUnitEvent(45) ---@type playerunitevent
EVENT_PLAYER_HERO_REVIVE_FINISH            = ConvertPlayerUnitEvent(46) ---@type playerunitevent
EVENT_PLAYER_UNIT_SUMMON                   = ConvertPlayerUnitEvent(47) ---@type playerunitevent
EVENT_PLAYER_UNIT_DROP_ITEM                = ConvertPlayerUnitEvent(48) ---@type playerunitevent
EVENT_PLAYER_UNIT_PICKUP_ITEM              = ConvertPlayerUnitEvent(49) ---@type playerunitevent
EVENT_PLAYER_UNIT_USE_ITEM                 = ConvertPlayerUnitEvent(50) ---@type playerunitevent

EVENT_PLAYER_UNIT_LOADED                   = ConvertPlayerUnitEvent(51) ---@type playerunitevent
EVENT_PLAYER_UNIT_DAMAGED                  = ConvertPlayerUnitEvent(308) ---@type playerunitevent
EVENT_PLAYER_UNIT_DAMAGING                 = ConvertPlayerUnitEvent(315) ---@type playerunitevent

--===================================================
-- For use with TriggerRegisterUnitEvent
--===================================================

EVENT_UNIT_DAMAGED                               = ConvertUnitEvent(52) ---@type unitevent
EVENT_UNIT_DAMAGING                              = ConvertUnitEvent(314) ---@type unitevent
EVENT_UNIT_DEATH                                 = ConvertUnitEvent(53) ---@type unitevent
EVENT_UNIT_DECAY                                 = ConvertUnitEvent(54) ---@type unitevent
EVENT_UNIT_DETECTED                              = ConvertUnitEvent(55) ---@type unitevent
EVENT_UNIT_HIDDEN                                = ConvertUnitEvent(56) ---@type unitevent
EVENT_UNIT_SELECTED                              = ConvertUnitEvent(57) ---@type unitevent
EVENT_UNIT_DESELECTED                            = ConvertUnitEvent(58) ---@type unitevent

EVENT_UNIT_STATE_LIMIT                           = ConvertUnitEvent(59) ---@type unitevent

-- Events which may have a filter for the "other unit"
--
EVENT_UNIT_ACQUIRED_TARGET                       = ConvertUnitEvent(60) ---@type unitevent
EVENT_UNIT_TARGET_IN_RANGE                       = ConvertUnitEvent(61) ---@type unitevent
EVENT_UNIT_ATTACKED                              = ConvertUnitEvent(62) ---@type unitevent
EVENT_UNIT_RESCUED                               = ConvertUnitEvent(63) ---@type unitevent

EVENT_UNIT_CONSTRUCT_CANCEL                      = ConvertUnitEvent(64) ---@type unitevent
EVENT_UNIT_CONSTRUCT_FINISH                      = ConvertUnitEvent(65) ---@type unitevent

EVENT_UNIT_UPGRADE_START                         = ConvertUnitEvent(66) ---@type unitevent
EVENT_UNIT_UPGRADE_CANCEL                        = ConvertUnitEvent(67) ---@type unitevent
EVENT_UNIT_UPGRADE_FINISH                        = ConvertUnitEvent(68) ---@type unitevent

-- Events which involve the specified unit performing
-- training of other units
--
EVENT_UNIT_TRAIN_START                           = ConvertUnitEvent(69) ---@type unitevent
EVENT_UNIT_TRAIN_CANCEL                          = ConvertUnitEvent(70) ---@type unitevent
EVENT_UNIT_TRAIN_FINISH                          = ConvertUnitEvent(71) ---@type unitevent

EVENT_UNIT_RESEARCH_START                        = ConvertUnitEvent(72) ---@type unitevent
EVENT_UNIT_RESEARCH_CANCEL                       = ConvertUnitEvent(73) ---@type unitevent
EVENT_UNIT_RESEARCH_FINISH                       = ConvertUnitEvent(74) ---@type unitevent

EVENT_UNIT_ISSUED_ORDER                          = ConvertUnitEvent(75) ---@type unitevent
EVENT_UNIT_ISSUED_POINT_ORDER                    = ConvertUnitEvent(76) ---@type unitevent
EVENT_UNIT_ISSUED_TARGET_ORDER                   = ConvertUnitEvent(77) ---@type unitevent

EVENT_UNIT_HERO_LEVEL                            = ConvertUnitEvent(78) ---@type unitevent
EVENT_UNIT_HERO_SKILL                            = ConvertUnitEvent(79) ---@type unitevent

EVENT_UNIT_HERO_REVIVABLE                        = ConvertUnitEvent(80) ---@type unitevent
EVENT_UNIT_HERO_REVIVE_START                     = ConvertUnitEvent(81) ---@type unitevent
EVENT_UNIT_HERO_REVIVE_CANCEL                    = ConvertUnitEvent(82) ---@type unitevent
EVENT_UNIT_HERO_REVIVE_FINISH                    = ConvertUnitEvent(83) ---@type unitevent

EVENT_UNIT_SUMMON                                = ConvertUnitEvent(84) ---@type unitevent

EVENT_UNIT_DROP_ITEM                             = ConvertUnitEvent(85) ---@type unitevent
EVENT_UNIT_PICKUP_ITEM                           = ConvertUnitEvent(86) ---@type unitevent
EVENT_UNIT_USE_ITEM                              = ConvertUnitEvent(87) ---@type unitevent

EVENT_UNIT_LOADED                                = ConvertUnitEvent(88) ---@type unitevent

EVENT_WIDGET_DEATH                             = ConvertWidgetEvent(89) ---@type widgetevent

EVENT_DIALOG_BUTTON_CLICK                      = ConvertDialogEvent(90) ---@type dialogevent
EVENT_DIALOG_CLICK                             = ConvertDialogEvent(91) ---@type dialogevent

--===================================================
-- Frozen Throne Expansion Events
-- Need to be added here to preserve compat
--===================================================

EVENT_GAME_LOADED                       = ConvertGameEvent(256) ---@type gameevent
EVENT_GAME_TOURNAMENT_FINISH_SOON       = ConvertGameEvent(257) ---@type gameevent
EVENT_GAME_TOURNAMENT_FINISH_NOW        = ConvertGameEvent(258) ---@type gameevent
EVENT_GAME_SAVE                         = ConvertGameEvent(259) ---@type gameevent
EVENT_GAME_CUSTOM_UI_FRAME              = ConvertGameEvent(310) ---@type gameevent

--===================================================
-- For use with TriggerRegisterPlayerEvent
--===================================================

EVENT_PLAYER_ARROW_LEFT_DOWN            = ConvertPlayerEvent(261) ---@type playerevent
EVENT_PLAYER_ARROW_LEFT_UP              = ConvertPlayerEvent(262) ---@type playerevent
EVENT_PLAYER_ARROW_RIGHT_DOWN           = ConvertPlayerEvent(263) ---@type playerevent
EVENT_PLAYER_ARROW_RIGHT_UP             = ConvertPlayerEvent(264) ---@type playerevent
EVENT_PLAYER_ARROW_DOWN_DOWN            = ConvertPlayerEvent(265) ---@type playerevent
EVENT_PLAYER_ARROW_DOWN_UP              = ConvertPlayerEvent(266) ---@type playerevent
EVENT_PLAYER_ARROW_UP_DOWN              = ConvertPlayerEvent(267) ---@type playerevent
EVENT_PLAYER_ARROW_UP_UP                = ConvertPlayerEvent(268) ---@type playerevent
EVENT_PLAYER_MOUSE_DOWN                 = ConvertPlayerEvent(305) ---@type playerevent
EVENT_PLAYER_MOUSE_UP                   = ConvertPlayerEvent(306) ---@type playerevent
EVENT_PLAYER_MOUSE_MOVE                 = ConvertPlayerEvent(307) ---@type playerevent
EVENT_PLAYER_SYNC_DATA                  = ConvertPlayerEvent(309) ---@type playerevent
EVENT_PLAYER_KEY                        = ConvertPlayerEvent(311) ---@type playerevent
EVENT_PLAYER_KEY_DOWN                   = ConvertPlayerEvent(312) ---@type playerevent
EVENT_PLAYER_KEY_UP                     = ConvertPlayerEvent(313) ---@type playerevent

--===================================================
-- For use with TriggerRegisterPlayerUnitEvent
--===================================================

EVENT_PLAYER_UNIT_SELL                  = ConvertPlayerUnitEvent(269) ---@type playerunitevent
EVENT_PLAYER_UNIT_CHANGE_OWNER          = ConvertPlayerUnitEvent(270) ---@type playerunitevent
EVENT_PLAYER_UNIT_SELL_ITEM             = ConvertPlayerUnitEvent(271) ---@type playerunitevent
EVENT_PLAYER_UNIT_SPELL_CHANNEL         = ConvertPlayerUnitEvent(272) ---@type playerunitevent
EVENT_PLAYER_UNIT_SPELL_CAST            = ConvertPlayerUnitEvent(273) ---@type playerunitevent
EVENT_PLAYER_UNIT_SPELL_EFFECT          = ConvertPlayerUnitEvent(274) ---@type playerunitevent
EVENT_PLAYER_UNIT_SPELL_FINISH          = ConvertPlayerUnitEvent(275) ---@type playerunitevent
EVENT_PLAYER_UNIT_SPELL_ENDCAST         = ConvertPlayerUnitEvent(276) ---@type playerunitevent
EVENT_PLAYER_UNIT_PAWN_ITEM             = ConvertPlayerUnitEvent(277) ---@type playerunitevent

--===================================================
-- For use with TriggerRegisterUnitEvent
--===================================================

EVENT_UNIT_SELL                         = ConvertUnitEvent(286) ---@type unitevent
EVENT_UNIT_CHANGE_OWNER                 = ConvertUnitEvent(287) ---@type unitevent
EVENT_UNIT_SELL_ITEM                    = ConvertUnitEvent(288) ---@type unitevent
EVENT_UNIT_SPELL_CHANNEL                = ConvertUnitEvent(289) ---@type unitevent
EVENT_UNIT_SPELL_CAST                   = ConvertUnitEvent(290) ---@type unitevent
EVENT_UNIT_SPELL_EFFECT                 = ConvertUnitEvent(291) ---@type unitevent
EVENT_UNIT_SPELL_FINISH                 = ConvertUnitEvent(292) ---@type unitevent
EVENT_UNIT_SPELL_ENDCAST                = ConvertUnitEvent(293) ---@type unitevent
EVENT_UNIT_PAWN_ITEM                    = ConvertUnitEvent(294) ---@type unitevent

--===================================================
-- Limit Event API s
-- variable, player state, game state, and unit state events
-- ( do NOT change the order of these... )
--===================================================
LESS_THAN                              = ConvertLimitOp(0) ---@type limitop
LESS_THAN_OR_EQUAL                     = ConvertLimitOp(1) ---@type limitop
EQUAL                                  = ConvertLimitOp(2) ---@type limitop
GREATER_THAN_OR_EQUAL                  = ConvertLimitOp(3) ---@type limitop
GREATER_THAN                           = ConvertLimitOp(4) ---@type limitop
NOT_EQUAL                              = ConvertLimitOp(5) ---@type limitop

--===================================================
-- Unit Type Constants for use with IsUnitType()
--===================================================

UNIT_TYPE_HERO                        = ConvertUnitType(0) ---@type unittype
UNIT_TYPE_DEAD                        = ConvertUnitType(1) ---@type unittype
UNIT_TYPE_STRUCTURE                   = ConvertUnitType(2) ---@type unittype

UNIT_TYPE_FLYING                      = ConvertUnitType(3) ---@type unittype
UNIT_TYPE_GROUND                      = ConvertUnitType(4) ---@type unittype

UNIT_TYPE_ATTACKS_FLYING              = ConvertUnitType(5) ---@type unittype
UNIT_TYPE_ATTACKS_GROUND              = ConvertUnitType(6) ---@type unittype

UNIT_TYPE_MELEE_ATTACKER              = ConvertUnitType(7) ---@type unittype
UNIT_TYPE_RANGED_ATTACKER             = ConvertUnitType(8) ---@type unittype

UNIT_TYPE_GIANT                       = ConvertUnitType(9) ---@type unittype
UNIT_TYPE_SUMMONED                    = ConvertUnitType(10) ---@type unittype
UNIT_TYPE_STUNNED                     = ConvertUnitType(11) ---@type unittype
UNIT_TYPE_PLAGUED                     = ConvertUnitType(12) ---@type unittype
UNIT_TYPE_SNARED                      = ConvertUnitType(13) ---@type unittype

UNIT_TYPE_UNDEAD                      = ConvertUnitType(14) ---@type unittype
UNIT_TYPE_MECHANICAL                  = ConvertUnitType(15) ---@type unittype
UNIT_TYPE_PEON                        = ConvertUnitType(16) ---@type unittype
UNIT_TYPE_SAPPER                      = ConvertUnitType(17) ---@type unittype
UNIT_TYPE_TOWNHALL                    = ConvertUnitType(18) ---@type unittype
UNIT_TYPE_ANCIENT                     = ConvertUnitType(19) ---@type unittype

UNIT_TYPE_TAUREN                      = ConvertUnitType(20) ---@type unittype
UNIT_TYPE_POISONED                    = ConvertUnitType(21) ---@type unittype
UNIT_TYPE_POLYMORPHED                 = ConvertUnitType(22) ---@type unittype
UNIT_TYPE_SLEEPING                    = ConvertUnitType(23) ---@type unittype
UNIT_TYPE_RESISTANT                   = ConvertUnitType(24) ---@type unittype
UNIT_TYPE_ETHEREAL                    = ConvertUnitType(25) ---@type unittype
UNIT_TYPE_MAGIC_IMMUNE                = ConvertUnitType(26) ---@type unittype

--===================================================
-- Unit Type Constants for use with ChooseRandomItemEx()
--===================================================

ITEM_TYPE_PERMANENT                   = ConvertItemType(0) ---@type itemtype
ITEM_TYPE_CHARGED                     = ConvertItemType(1) ---@type itemtype
ITEM_TYPE_POWERUP                     = ConvertItemType(2) ---@type itemtype
ITEM_TYPE_ARTIFACT                    = ConvertItemType(3) ---@type itemtype
ITEM_TYPE_PURCHASABLE                 = ConvertItemType(4) ---@type itemtype
ITEM_TYPE_CAMPAIGN                    = ConvertItemType(5) ---@type itemtype
ITEM_TYPE_MISCELLANEOUS               = ConvertItemType(6) ---@type itemtype
ITEM_TYPE_UNKNOWN                     = ConvertItemType(7) ---@type itemtype
ITEM_TYPE_ANY                         = ConvertItemType(8) ---@type itemtype

-- Deprecated, should use ITEM_TYPE_POWERUP
ITEM_TYPE_TOME                        = ConvertItemType(2) ---@type itemtype

--===================================================
-- Animatable Camera Fields
--===================================================

CAMERA_FIELD_TARGET_DISTANCE       = ConvertCameraField(0) ---@type camerafield
CAMERA_FIELD_FARZ                  = ConvertCameraField(1) ---@type camerafield
CAMERA_FIELD_ANGLE_OF_ATTACK       = ConvertCameraField(2) ---@type camerafield
CAMERA_FIELD_FIELD_OF_VIEW         = ConvertCameraField(3) ---@type camerafield
CAMERA_FIELD_ROLL                  = ConvertCameraField(4) ---@type camerafield
CAMERA_FIELD_ROTATION              = ConvertCameraField(5) ---@type camerafield
CAMERA_FIELD_ZOFFSET               = ConvertCameraField(6) ---@type camerafield
CAMERA_FIELD_NEARZ                 = ConvertCameraField(7) ---@type camerafield
CAMERA_FIELD_LOCAL_PITCH           = ConvertCameraField(8) ---@type camerafield
CAMERA_FIELD_LOCAL_YAW             = ConvertCameraField(9) ---@type camerafield
CAMERA_FIELD_LOCAL_ROLL            = ConvertCameraField(10) ---@type camerafield

BLEND_MODE_NONE                    = ConvertBlendMode(0) ---@type blendmode
BLEND_MODE_DONT_CARE               = ConvertBlendMode(0) ---@type blendmode
BLEND_MODE_KEYALPHA                = ConvertBlendMode(1) ---@type blendmode
BLEND_MODE_BLEND                   = ConvertBlendMode(2) ---@type blendmode
BLEND_MODE_ADDITIVE                = ConvertBlendMode(3) ---@type blendmode
BLEND_MODE_MODULATE                = ConvertBlendMode(4) ---@type blendmode
BLEND_MODE_MODULATE_2X             = ConvertBlendMode(5) ---@type blendmode

RARITY_FREQUENT                 = ConvertRarityControl(0) ---@type raritycontrol
RARITY_RARE                     = ConvertRarityControl(1) ---@type raritycontrol

TEXMAP_FLAG_NONE                = ConvertTexMapFlags(0) ---@type texmapflags
TEXMAP_FLAG_WRAP_U              = ConvertTexMapFlags(1) ---@type texmapflags
TEXMAP_FLAG_WRAP_V              = ConvertTexMapFlags(2) ---@type texmapflags
TEXMAP_FLAG_WRAP_UV             = ConvertTexMapFlags(3) ---@type texmapflags

FOG_OF_WAR_MASKED               = ConvertFogState(1) ---@type fogstate
FOG_OF_WAR_FOGGED               = ConvertFogState(2) ---@type fogstate
FOG_OF_WAR_VISIBLE              = ConvertFogState(4) ---@type fogstate

--===================================================
-- Camera Margin s for use with GetCameraMargin
--===================================================

CAMERA_MARGIN_LEFT              = 0 ---@type integer
CAMERA_MARGIN_RIGHT             = 1 ---@type integer
CAMERA_MARGIN_TOP               = 2 ---@type integer
CAMERA_MARGIN_BOTTOM            = 3 ---@type integer

--===================================================
-- Effect API s
--===================================================

EFFECT_TYPE_EFFECT              = ConvertEffectType(0) ---@type effecttype
EFFECT_TYPE_TARGET              = ConvertEffectType(1) ---@type effecttype
EFFECT_TYPE_CASTER              = ConvertEffectType(2) ---@type effecttype
EFFECT_TYPE_SPECIAL             = ConvertEffectType(3) ---@type effecttype
EFFECT_TYPE_AREA_EFFECT         = ConvertEffectType(4) ---@type effecttype
EFFECT_TYPE_MISSILE             = ConvertEffectType(5) ---@type effecttype
EFFECT_TYPE_LIGHTNING           = ConvertEffectType(6) ---@type effecttype

SOUND_TYPE_EFFECT               = ConvertSoundType(0) ---@type soundtype
SOUND_TYPE_EFFECT_LOOPED        = ConvertSoundType(1) ---@type soundtype

--===================================================
-- Custom UI API s
--===================================================

ORIGIN_FRAME_GAME_UI                 = ConvertOriginFrameType(0) ---@type originframetype
ORIGIN_FRAME_COMMAND_BUTTON          = ConvertOriginFrameType(1) ---@type originframetype
ORIGIN_FRAME_HERO_BAR                = ConvertOriginFrameType(2) ---@type originframetype
ORIGIN_FRAME_HERO_BUTTON             = ConvertOriginFrameType(3) ---@type originframetype
ORIGIN_FRAME_HERO_HP_BAR             = ConvertOriginFrameType(4) ---@type originframetype
ORIGIN_FRAME_HERO_MANA_BAR           = ConvertOriginFrameType(5) ---@type originframetype
ORIGIN_FRAME_HERO_BUTTON_INDICATOR   = ConvertOriginFrameType(6) ---@type originframetype
ORIGIN_FRAME_ITEM_BUTTON             = ConvertOriginFrameType(7) ---@type originframetype
ORIGIN_FRAME_MINIMAP                 = ConvertOriginFrameType(8) ---@type originframetype
ORIGIN_FRAME_MINIMAP_BUTTON          = ConvertOriginFrameType(9) ---@type originframetype
ORIGIN_FRAME_SYSTEM_BUTTON           = ConvertOriginFrameType(10) ---@type originframetype
ORIGIN_FRAME_TOOLTIP                 = ConvertOriginFrameType(11) ---@type originframetype
ORIGIN_FRAME_UBERTOOLTIP             = ConvertOriginFrameType(12) ---@type originframetype
ORIGIN_FRAME_CHAT_MSG                = ConvertOriginFrameType(13) ---@type originframetype
ORIGIN_FRAME_UNIT_MSG                = ConvertOriginFrameType(14) ---@type originframetype
ORIGIN_FRAME_TOP_MSG                 = ConvertOriginFrameType(15) ---@type originframetype
ORIGIN_FRAME_PORTRAIT                = ConvertOriginFrameType(16) ---@type originframetype
ORIGIN_FRAME_WORLD_FRAME             = ConvertOriginFrameType(17) ---@type originframetype

FRAMEPOINT_TOPLEFT                   = ConvertFramePointType(0) ---@type framepointtype
FRAMEPOINT_TOP                       = ConvertFramePointType(1) ---@type framepointtype
FRAMEPOINT_TOPRIGHT                  = ConvertFramePointType(2) ---@type framepointtype
FRAMEPOINT_LEFT                      = ConvertFramePointType(3) ---@type framepointtype
FRAMEPOINT_CENTER                    = ConvertFramePointType(4) ---@type framepointtype
FRAMEPOINT_RIGHT                     = ConvertFramePointType(5) ---@type framepointtype
FRAMEPOINT_BOTTOMLEFT                = ConvertFramePointType(6) ---@type framepointtype
FRAMEPOINT_BOTTOM                    = ConvertFramePointType(7) ---@type framepointtype
FRAMEPOINT_BOTTOMRIGHT               = ConvertFramePointType(8) ---@type framepointtype

TEXT_JUSTIFY_TOP                     = ConvertTextAlignType(0) ---@type textaligntype
TEXT_JUSTIFY_MIDDLE                  = ConvertTextAlignType(1) ---@type textaligntype
TEXT_JUSTIFY_BOTTOM                  = ConvertTextAlignType(2) ---@type textaligntype
TEXT_JUSTIFY_LEFT                    = ConvertTextAlignType(3) ---@type textaligntype
TEXT_JUSTIFY_CENTER                  = ConvertTextAlignType(4) ---@type textaligntype
TEXT_JUSTIFY_RIGHT                   = ConvertTextAlignType(5) ---@type textaligntype

FRAMEEVENT_CONTROL_CLICK             = ConvertFrameEventType(1) ---@type frameeventtype
FRAMEEVENT_MOUSE_ENTER               = ConvertFrameEventType(2) ---@type frameeventtype
FRAMEEVENT_MOUSE_LEAVE               = ConvertFrameEventType(3) ---@type frameeventtype
FRAMEEVENT_MOUSE_UP                  = ConvertFrameEventType(4) ---@type frameeventtype
FRAMEEVENT_MOUSE_DOWN                = ConvertFrameEventType(5) ---@type frameeventtype
FRAMEEVENT_MOUSE_WHEEL               = ConvertFrameEventType(6) ---@type frameeventtype
FRAMEEVENT_CHECKBOX_CHECKED          = ConvertFrameEventType(7) ---@type frameeventtype
FRAMEEVENT_CHECKBOX_UNCHECKED        = ConvertFrameEventType(8) ---@type frameeventtype
FRAMEEVENT_EDITBOX_TEXT_CHANGED      = ConvertFrameEventType(9) ---@type frameeventtype
FRAMEEVENT_POPUPMENU_ITEM_CHANGED    = ConvertFrameEventType(10) ---@type frameeventtype
FRAMEEVENT_MOUSE_DOUBLECLICK         = ConvertFrameEventType(11) ---@type frameeventtype
FRAMEEVENT_SPRITE_ANIM_UPDATE        = ConvertFrameEventType(12) ---@type frameeventtype
FRAMEEVENT_SLIDER_VALUE_CHANGED      = ConvertFrameEventType(13) ---@type frameeventtype
FRAMEEVENT_DIALOG_CANCEL             = ConvertFrameEventType(14) ---@type frameeventtype
FRAMEEVENT_DIALOG_ACCEPT             = ConvertFrameEventType(15) ---@type frameeventtype
FRAMEEVENT_EDITBOX_ENTER             = ConvertFrameEventType(16) ---@type frameeventtype

--===================================================
-- OS Key s
--===================================================

OSKEY_BACKSPACE                      = ConvertOsKeyType(0x08) ---@type oskeytype
OSKEY_TAB                            = ConvertOsKeyType(0x09) ---@type oskeytype
OSKEY_CLEAR                          = ConvertOsKeyType(0x0C) ---@type oskeytype
OSKEY_RETURN                         = ConvertOsKeyType(0x0D) ---@type oskeytype
OSKEY_SHIFT                          = ConvertOsKeyType(0x10) ---@type oskeytype
OSKEY_CONTROL                        = ConvertOsKeyType(0x11) ---@type oskeytype
OSKEY_ALT                            = ConvertOsKeyType(0x12) ---@type oskeytype
OSKEY_PAUSE                          = ConvertOsKeyType(0x13) ---@type oskeytype
OSKEY_CAPSLOCK                       = ConvertOsKeyType(0x14) ---@type oskeytype
OSKEY_KANA                           = ConvertOsKeyType(0x15) ---@type oskeytype
OSKEY_HANGUL                         = ConvertOsKeyType(0x15) ---@type oskeytype
OSKEY_JUNJA                          = ConvertOsKeyType(0x17) ---@type oskeytype
OSKEY_FINAL                          = ConvertOsKeyType(0x18) ---@type oskeytype
OSKEY_HANJA                          = ConvertOsKeyType(0x19) ---@type oskeytype
OSKEY_KANJI                          = ConvertOsKeyType(0x19) ---@type oskeytype
OSKEY_ESCAPE                         = ConvertOsKeyType(0x1B) ---@type oskeytype
OSKEY_CONVERT                        = ConvertOsKeyType(0x1C) ---@type oskeytype
OSKEY_NONCONVERT                     = ConvertOsKeyType(0x1D) ---@type oskeytype
OSKEY_ACCEPT                         = ConvertOsKeyType(0x1E) ---@type oskeytype
OSKEY_MODECHANGE                     = ConvertOsKeyType(0x1F) ---@type oskeytype
OSKEY_SPACE                          = ConvertOsKeyType(0x20) ---@type oskeytype
OSKEY_PAGEUP                         = ConvertOsKeyType(0x21) ---@type oskeytype
OSKEY_PAGEDOWN                       = ConvertOsKeyType(0x22) ---@type oskeytype
OSKEY_END                            = ConvertOsKeyType(0x23) ---@type oskeytype
OSKEY_HOME                           = ConvertOsKeyType(0x24) ---@type oskeytype
OSKEY_LEFT                           = ConvertOsKeyType(0x25) ---@type oskeytype
OSKEY_UP                             = ConvertOsKeyType(0x26) ---@type oskeytype
OSKEY_RIGHT                          = ConvertOsKeyType(0x27) ---@type oskeytype
OSKEY_DOWN                           = ConvertOsKeyType(0x28) ---@type oskeytype
OSKEY_SELECT                         = ConvertOsKeyType(0x29) ---@type oskeytype
OSKEY_PRINT                          = ConvertOsKeyType(0x2A) ---@type oskeytype
OSKEY_EXECUTE                        = ConvertOsKeyType(0x2B) ---@type oskeytype
OSKEY_PRINTSCREEN                    = ConvertOsKeyType(0x2C) ---@type oskeytype
OSKEY_INSERT                         = ConvertOsKeyType(0x2D) ---@type oskeytype
OSKEY_DELETE                         = ConvertOsKeyType(0x2E) ---@type oskeytype
OSKEY_HELP                           = ConvertOsKeyType(0x2F) ---@type oskeytype
OSKEY_0                              = ConvertOsKeyType(0x30) ---@type oskeytype
OSKEY_1                              = ConvertOsKeyType(0x31) ---@type oskeytype
OSKEY_2                              = ConvertOsKeyType(0x32) ---@type oskeytype
OSKEY_3                              = ConvertOsKeyType(0x33) ---@type oskeytype
OSKEY_4                              = ConvertOsKeyType(0x34) ---@type oskeytype
OSKEY_5                              = ConvertOsKeyType(0x35) ---@type oskeytype
OSKEY_6                              = ConvertOsKeyType(0x36) ---@type oskeytype
OSKEY_7                              = ConvertOsKeyType(0x37) ---@type oskeytype
OSKEY_8                              = ConvertOsKeyType(0x38) ---@type oskeytype
OSKEY_9                              = ConvertOsKeyType(0x39) ---@type oskeytype
OSKEY_A                              = ConvertOsKeyType(0x41) ---@type oskeytype
OSKEY_B                              = ConvertOsKeyType(0x42) ---@type oskeytype
OSKEY_C                              = ConvertOsKeyType(0x43) ---@type oskeytype
OSKEY_D                              = ConvertOsKeyType(0x44) ---@type oskeytype
OSKEY_E                              = ConvertOsKeyType(0x45) ---@type oskeytype
OSKEY_F                              = ConvertOsKeyType(0x46) ---@type oskeytype
OSKEY_G                              = ConvertOsKeyType(0x47) ---@type oskeytype
OSKEY_H                              = ConvertOsKeyType(0x48) ---@type oskeytype
OSKEY_I                              = ConvertOsKeyType(0x49) ---@type oskeytype
OSKEY_J                              = ConvertOsKeyType(0x4A) ---@type oskeytype
OSKEY_K                              = ConvertOsKeyType(0x4B) ---@type oskeytype
OSKEY_L                              = ConvertOsKeyType(0x4C) ---@type oskeytype
OSKEY_M                              = ConvertOsKeyType(0x4D) ---@type oskeytype
OSKEY_N                              = ConvertOsKeyType(0x4E) ---@type oskeytype
OSKEY_O                              = ConvertOsKeyType(0x4F) ---@type oskeytype
OSKEY_P                              = ConvertOsKeyType(0x50) ---@type oskeytype
OSKEY_Q                              = ConvertOsKeyType(0x51) ---@type oskeytype
OSKEY_R                              = ConvertOsKeyType(0x52) ---@type oskeytype
OSKEY_S                              = ConvertOsKeyType(0x53) ---@type oskeytype
OSKEY_T                              = ConvertOsKeyType(0x54) ---@type oskeytype
OSKEY_U                              = ConvertOsKeyType(0x55) ---@type oskeytype
OSKEY_V                              = ConvertOsKeyType(0x56) ---@type oskeytype
OSKEY_W                              = ConvertOsKeyType(0x57) ---@type oskeytype
OSKEY_X                              = ConvertOsKeyType(0x58) ---@type oskeytype
OSKEY_Y                              = ConvertOsKeyType(0x59) ---@type oskeytype
OSKEY_Z                              = ConvertOsKeyType(0x5A) ---@type oskeytype
OSKEY_LMETA                          = ConvertOsKeyType(0x5B) ---@type oskeytype
OSKEY_RMETA                          = ConvertOsKeyType(0x5C) ---@type oskeytype
OSKEY_APPS                           = ConvertOsKeyType(0x5D) ---@type oskeytype
OSKEY_SLEEP                          = ConvertOsKeyType(0x5F) ---@type oskeytype
OSKEY_NUMPAD0                        = ConvertOsKeyType(0x60) ---@type oskeytype
OSKEY_NUMPAD1                        = ConvertOsKeyType(0x61) ---@type oskeytype
OSKEY_NUMPAD2                        = ConvertOsKeyType(0x62) ---@type oskeytype
OSKEY_NUMPAD3                        = ConvertOsKeyType(0x63) ---@type oskeytype
OSKEY_NUMPAD4                        = ConvertOsKeyType(0x64) ---@type oskeytype
OSKEY_NUMPAD5                        = ConvertOsKeyType(0x65) ---@type oskeytype
OSKEY_NUMPAD6                        = ConvertOsKeyType(0x66) ---@type oskeytype
OSKEY_NUMPAD7                        = ConvertOsKeyType(0x67) ---@type oskeytype
OSKEY_NUMPAD8                        = ConvertOsKeyType(0x68) ---@type oskeytype
OSKEY_NUMPAD9                        = ConvertOsKeyType(0x69) ---@type oskeytype
OSKEY_MULTIPLY                       = ConvertOsKeyType(0x6A) ---@type oskeytype
OSKEY_ADD                            = ConvertOsKeyType(0x6B) ---@type oskeytype
OSKEY_SEPARATOR                      = ConvertOsKeyType(0x6C) ---@type oskeytype
OSKEY_SUBTRACT                       = ConvertOsKeyType(0x6D) ---@type oskeytype
OSKEY_DECIMAL                        = ConvertOsKeyType(0x6E) ---@type oskeytype
OSKEY_DIVIDE                         = ConvertOsKeyType(0x6F) ---@type oskeytype
OSKEY_F1                             = ConvertOsKeyType(0x70) ---@type oskeytype
OSKEY_F2                             = ConvertOsKeyType(0x71) ---@type oskeytype
OSKEY_F3                             = ConvertOsKeyType(0x72) ---@type oskeytype
OSKEY_F4                             = ConvertOsKeyType(0x73) ---@type oskeytype
OSKEY_F5                             = ConvertOsKeyType(0x74) ---@type oskeytype
OSKEY_F6                             = ConvertOsKeyType(0x75) ---@type oskeytype
OSKEY_F7                             = ConvertOsKeyType(0x76) ---@type oskeytype
OSKEY_F8                             = ConvertOsKeyType(0x77) ---@type oskeytype
OSKEY_F9                             = ConvertOsKeyType(0x78) ---@type oskeytype
OSKEY_F10                            = ConvertOsKeyType(0x79) ---@type oskeytype
OSKEY_F11                            = ConvertOsKeyType(0x7A) ---@type oskeytype
OSKEY_F12                            = ConvertOsKeyType(0x7B) ---@type oskeytype
OSKEY_F13                            = ConvertOsKeyType(0x7C) ---@type oskeytype
OSKEY_F14                            = ConvertOsKeyType(0x7D) ---@type oskeytype
OSKEY_F15                            = ConvertOsKeyType(0x7E) ---@type oskeytype
OSKEY_F16                            = ConvertOsKeyType(0x7F) ---@type oskeytype
OSKEY_F17                            = ConvertOsKeyType(0x80) ---@type oskeytype
OSKEY_F18                            = ConvertOsKeyType(0x81) ---@type oskeytype
OSKEY_F19                            = ConvertOsKeyType(0x82) ---@type oskeytype
OSKEY_F20                            = ConvertOsKeyType(0x83) ---@type oskeytype
OSKEY_F21                            = ConvertOsKeyType(0x84) ---@type oskeytype
OSKEY_F22                            = ConvertOsKeyType(0x85) ---@type oskeytype
OSKEY_F23                            = ConvertOsKeyType(0x86) ---@type oskeytype
OSKEY_F24                            = ConvertOsKeyType(0x87) ---@type oskeytype
OSKEY_NUMLOCK                        = ConvertOsKeyType(0x90) ---@type oskeytype
OSKEY_SCROLLLOCK                     = ConvertOsKeyType(0x91) ---@type oskeytype
OSKEY_OEM_NEC_EQUAL                  = ConvertOsKeyType(0x92) ---@type oskeytype
OSKEY_OEM_FJ_JISHO                   = ConvertOsKeyType(0x92) ---@type oskeytype
OSKEY_OEM_FJ_MASSHOU                 = ConvertOsKeyType(0x93) ---@type oskeytype
OSKEY_OEM_FJ_TOUROKU                 = ConvertOsKeyType(0x94) ---@type oskeytype
OSKEY_OEM_FJ_LOYA                    = ConvertOsKeyType(0x95) ---@type oskeytype
OSKEY_OEM_FJ_ROYA                    = ConvertOsKeyType(0x96) ---@type oskeytype
OSKEY_LSHIFT                         = ConvertOsKeyType(0xA0) ---@type oskeytype
OSKEY_RSHIFT                         = ConvertOsKeyType(0xA1) ---@type oskeytype
OSKEY_LCONTROL                       = ConvertOsKeyType(0xA2) ---@type oskeytype
OSKEY_RCONTROL                       = ConvertOsKeyType(0xA3) ---@type oskeytype
OSKEY_LALT                           = ConvertOsKeyType(0xA4) ---@type oskeytype
OSKEY_RALT                           = ConvertOsKeyType(0xA5) ---@type oskeytype
OSKEY_BROWSER_BACK                   = ConvertOsKeyType(0xA6) ---@type oskeytype
OSKEY_BROWSER_FORWARD                = ConvertOsKeyType(0xA7) ---@type oskeytype
OSKEY_BROWSER_REFRESH                = ConvertOsKeyType(0xA8) ---@type oskeytype
OSKEY_BROWSER_STOP                   = ConvertOsKeyType(0xA9) ---@type oskeytype
OSKEY_BROWSER_SEARCH                 = ConvertOsKeyType(0xAA) ---@type oskeytype
OSKEY_BROWSER_FAVORITES              = ConvertOsKeyType(0xAB) ---@type oskeytype
OSKEY_BROWSER_HOME                   = ConvertOsKeyType(0xAC) ---@type oskeytype
OSKEY_VOLUME_MUTE                    = ConvertOsKeyType(0xAD) ---@type oskeytype
OSKEY_VOLUME_DOWN                    = ConvertOsKeyType(0xAE) ---@type oskeytype
OSKEY_VOLUME_UP                      = ConvertOsKeyType(0xAF) ---@type oskeytype
OSKEY_MEDIA_NEXT_TRACK               = ConvertOsKeyType(0xB0) ---@type oskeytype
OSKEY_MEDIA_PREV_TRACK               = ConvertOsKeyType(0xB1) ---@type oskeytype
OSKEY_MEDIA_STOP                     = ConvertOsKeyType(0xB2) ---@type oskeytype
OSKEY_MEDIA_PLAY_PAUSE               = ConvertOsKeyType(0xB3) ---@type oskeytype
OSKEY_LAUNCH_MAIL                    = ConvertOsKeyType(0xB4) ---@type oskeytype
OSKEY_LAUNCH_MEDIA_SELECT            = ConvertOsKeyType(0xB5) ---@type oskeytype
OSKEY_LAUNCH_APP1                    = ConvertOsKeyType(0xB6) ---@type oskeytype
OSKEY_LAUNCH_APP2                    = ConvertOsKeyType(0xB7) ---@type oskeytype
OSKEY_OEM_1                          = ConvertOsKeyType(0xBA) ---@type oskeytype
OSKEY_OEM_PLUS                       = ConvertOsKeyType(0xBB) ---@type oskeytype
OSKEY_OEM_COMMA                      = ConvertOsKeyType(0xBC) ---@type oskeytype
OSKEY_OEM_MINUS                      = ConvertOsKeyType(0xBD) ---@type oskeytype
OSKEY_OEM_PERIOD                     = ConvertOsKeyType(0xBE) ---@type oskeytype
OSKEY_OEM_2                          = ConvertOsKeyType(0xBF) ---@type oskeytype
OSKEY_OEM_3                          = ConvertOsKeyType(0xC0) ---@type oskeytype
OSKEY_OEM_4                          = ConvertOsKeyType(0xDB) ---@type oskeytype
OSKEY_OEM_5                          = ConvertOsKeyType(0xDC) ---@type oskeytype
OSKEY_OEM_6                          = ConvertOsKeyType(0xDD) ---@type oskeytype
OSKEY_OEM_7                          = ConvertOsKeyType(0xDE) ---@type oskeytype
OSKEY_OEM_8                          = ConvertOsKeyType(0xDF) ---@type oskeytype
OSKEY_OEM_AX                         = ConvertOsKeyType(0xE1) ---@type oskeytype
OSKEY_OEM_102                        = ConvertOsKeyType(0xE2) ---@type oskeytype
OSKEY_ICO_HELP                       = ConvertOsKeyType(0xE3) ---@type oskeytype
OSKEY_ICO_00                         = ConvertOsKeyType(0xE4) ---@type oskeytype
OSKEY_PROCESSKEY                     = ConvertOsKeyType(0xE5) ---@type oskeytype
OSKEY_ICO_CLEAR                      = ConvertOsKeyType(0xE6) ---@type oskeytype
OSKEY_PACKET                         = ConvertOsKeyType(0xE7) ---@type oskeytype
OSKEY_OEM_RESET                      = ConvertOsKeyType(0xE9) ---@type oskeytype
OSKEY_OEM_JUMP                       = ConvertOsKeyType(0xEA) ---@type oskeytype
OSKEY_OEM_PA1                        = ConvertOsKeyType(0xEB) ---@type oskeytype
OSKEY_OEM_PA2                        = ConvertOsKeyType(0xEC) ---@type oskeytype
OSKEY_OEM_PA3                        = ConvertOsKeyType(0xED) ---@type oskeytype
OSKEY_OEM_WSCTRL                     = ConvertOsKeyType(0xEE) ---@type oskeytype
OSKEY_OEM_CUSEL                      = ConvertOsKeyType(0xEF) ---@type oskeytype
OSKEY_OEM_ATTN                       = ConvertOsKeyType(0xF0) ---@type oskeytype
OSKEY_OEM_FINISH                     = ConvertOsKeyType(0xF1) ---@type oskeytype
OSKEY_OEM_COPY                       = ConvertOsKeyType(0xF2) ---@type oskeytype
OSKEY_OEM_AUTO                       = ConvertOsKeyType(0xF3) ---@type oskeytype
OSKEY_OEM_ENLW                       = ConvertOsKeyType(0xF4) ---@type oskeytype
OSKEY_OEM_BACKTAB                    = ConvertOsKeyType(0xF5) ---@type oskeytype
OSKEY_ATTN                           = ConvertOsKeyType(0xF6) ---@type oskeytype
OSKEY_CRSEL                          = ConvertOsKeyType(0xF7) ---@type oskeytype
OSKEY_EXSEL                          = ConvertOsKeyType(0xF8) ---@type oskeytype
OSKEY_EREOF                          = ConvertOsKeyType(0xF9) ---@type oskeytype
OSKEY_PLAY                           = ConvertOsKeyType(0xFA) ---@type oskeytype
OSKEY_ZOOM                           = ConvertOsKeyType(0xFB) ---@type oskeytype
OSKEY_NONAME                         = ConvertOsKeyType(0xFC) ---@type oskeytype
OSKEY_PA1                            = ConvertOsKeyType(0xFD) ---@type oskeytype
OSKEY_OEM_CLEAR                      = ConvertOsKeyType(0xFE) ---@type oskeytype

--===================================================
-- Instanced Object Operation API s
--===================================================

-- Ability
ABILITY_IF_BUTTON_POSITION_NORMAL_X        = ConvertAbilityIntegerField(FourCC('abpx')) ---@type abilityintegerfield
ABILITY_IF_BUTTON_POSITION_NORMAL_Y        = ConvertAbilityIntegerField(FourCC('abpy')) ---@type abilityintegerfield
ABILITY_IF_BUTTON_POSITION_ACTIVATED_X     = ConvertAbilityIntegerField(FourCC('aubx')) ---@type abilityintegerfield
ABILITY_IF_BUTTON_POSITION_ACTIVATED_Y     = ConvertAbilityIntegerField(FourCC('auby')) ---@type abilityintegerfield
ABILITY_IF_BUTTON_POSITION_RESEARCH_X      = ConvertAbilityIntegerField(FourCC('arpx')) ---@type abilityintegerfield
ABILITY_IF_BUTTON_POSITION_RESEARCH_Y      = ConvertAbilityIntegerField(FourCC('arpy')) ---@type abilityintegerfield
ABILITY_IF_MISSILE_SPEED                   = ConvertAbilityIntegerField(FourCC('amsp')) ---@type abilityintegerfield
ABILITY_IF_TARGET_ATTACHMENTS              = ConvertAbilityIntegerField(FourCC('atac')) ---@type abilityintegerfield
ABILITY_IF_CASTER_ATTACHMENTS              = ConvertAbilityIntegerField(FourCC('acac')) ---@type abilityintegerfield
ABILITY_IF_PRIORITY                        = ConvertAbilityIntegerField(FourCC('apri')) ---@type abilityintegerfield
ABILITY_IF_LEVELS                          = ConvertAbilityIntegerField(FourCC('alev')) ---@type abilityintegerfield
ABILITY_IF_REQUIRED_LEVEL                  = ConvertAbilityIntegerField(FourCC('arlv')) ---@type abilityintegerfield
ABILITY_IF_LEVEL_SKIP_REQUIREMENT          = ConvertAbilityIntegerField(FourCC('alsk')) ---@type abilityintegerfield

ABILITY_BF_HERO_ABILITY                    = ConvertAbilityBooleanField(FourCC('aher')) ---@type abilitybooleanfield -- Get only
ABILITY_BF_ITEM_ABILITY                    = ConvertAbilityBooleanField(FourCC('aite')) ---@type abilitybooleanfield
ABILITY_BF_CHECK_DEPENDENCIES              = ConvertAbilityBooleanField(FourCC('achd')) ---@type abilitybooleanfield

ABILITY_RF_ARF_MISSILE_ARC                    = ConvertAbilityRealField(FourCC('amac')) ---@type abilityrealfield

ABILITY_SF_NAME                             = ConvertAbilityStringField(FourCC('anam')) ---@type abilitystringfield -- Get Only
ABILITY_SF_ICON_ACTIVATED                   = ConvertAbilityStringField(FourCC('auar')) ---@type abilitystringfield
ABILITY_SF_ICON_RESEARCH                    = ConvertAbilityStringField(FourCC('arar')) ---@type abilitystringfield
ABILITY_SF_EFFECT_SOUND                     = ConvertAbilityStringField(FourCC('aefs')) ---@type abilitystringfield
ABILITY_SF_EFFECT_SOUND_LOOPING             = ConvertAbilityStringField(FourCC('aefl')) ---@type abilitystringfield

ABILITY_ILF_MANA_COST                         = ConvertAbilityIntegerLevelField(FourCC('amcs')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_WAVES                   = ConvertAbilityIntegerLevelField(FourCC('Hbz1')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SHARDS                  = ConvertAbilityIntegerLevelField(FourCC('Hbz3')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_UNITS_TELEPORTED        = ConvertAbilityIntegerLevelField(FourCC('Hmt1')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_COUNT_HWE2          = ConvertAbilityIntegerLevelField(FourCC('Hwe2')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_IMAGES                  = ConvertAbilityIntegerLevelField(FourCC('Omi1')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_UAN1     = ConvertAbilityIntegerLevelField(FourCC('Uan1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MORPHING_FLAGS                    = ConvertAbilityIntegerLevelField(FourCC('Eme2')) ---@type abilityintegerlevelfield
ABILITY_ILF_STRENGTH_BONUS_NRG5               = ConvertAbilityIntegerLevelField(FourCC('Nrg5')) ---@type abilityintegerlevelfield
ABILITY_ILF_DEFENSE_BONUS_NRG6                = ConvertAbilityIntegerLevelField(FourCC('Nrg6')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_TARGETS_HIT             = ConvertAbilityIntegerLevelField(FourCC('Ocl2')) ---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_OFS1               = ConvertAbilityIntegerLevelField(FourCC('Ofs1')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_OSF2     = ConvertAbilityIntegerLevelField(FourCC('Osf2')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_EFN1     = ConvertAbilityIntegerLevelField(FourCC('Efn1')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_HRE1     = ConvertAbilityIntegerLevelField(FourCC('Hre1')) ---@type abilityintegerlevelfield
ABILITY_ILF_STACK_FLAGS                       = ConvertAbilityIntegerLevelField(FourCC('Hca4')) ---@type abilityintegerlevelfield
ABILITY_ILF_MINIMUM_NUMBER_OF_UNITS           = ConvertAbilityIntegerLevelField(FourCC('Ndp2')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_NDP3      = ConvertAbilityIntegerLevelField(FourCC('Ndp3')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_UNITS_CREATED_NRC2      = ConvertAbilityIntegerLevelField(FourCC('Nrc2')) ---@type abilityintegerlevelfield
ABILITY_ILF_SHIELD_LIFE                       = ConvertAbilityIntegerLevelField(FourCC('Ams3')) ---@type abilityintegerlevelfield
ABILITY_ILF_MANA_LOSS_AMS4                    = ConvertAbilityIntegerLevelField(FourCC('Ams4')) ---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_PER_INTERVAL_BGM1            = ConvertAbilityIntegerLevelField(FourCC('Bgm1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAX_NUMBER_OF_MINERS              = ConvertAbilityIntegerLevelField(FourCC('Bgm3')) ---@type abilityintegerlevelfield
ABILITY_ILF_CARGO_CAPACITY                    = ConvertAbilityIntegerLevelField(FourCC('Car1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_CREEP_LEVEL_DEV3          = ConvertAbilityIntegerLevelField(FourCC('Dev3')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAX_CREEP_LEVEL_DEV1              = ConvertAbilityIntegerLevelField(FourCC('Dev1')) ---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_PER_INTERVAL_EGM1            = ConvertAbilityIntegerLevelField(FourCC('Egm1')) ---@type abilityintegerlevelfield
ABILITY_ILF_DEFENSE_REDUCTION                 = ConvertAbilityIntegerLevelField(FourCC('Fae1')) ---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_FLA1               = ConvertAbilityIntegerLevelField(FourCC('Fla1')) ---@type abilityintegerlevelfield
ABILITY_ILF_FLARE_COUNT                       = ConvertAbilityIntegerLevelField(FourCC('Fla3')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAX_GOLD                          = ConvertAbilityIntegerLevelField(FourCC('Gld1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MINING_CAPACITY                   = ConvertAbilityIntegerLevelField(FourCC('Gld3')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_GYD1    = ConvertAbilityIntegerLevelField(FourCC('Gyd1')) ---@type abilityintegerlevelfield
ABILITY_ILF_DAMAGE_TO_TREE                    = ConvertAbilityIntegerLevelField(FourCC('Har1')) ---@type abilityintegerlevelfield
ABILITY_ILF_LUMBER_CAPACITY                   = ConvertAbilityIntegerLevelField(FourCC('Har2')) ---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_CAPACITY                     = ConvertAbilityIntegerLevelField(FourCC('Har3')) ---@type abilityintegerlevelfield
ABILITY_ILF_DEFENSE_INCREASE_INF2             = ConvertAbilityIntegerLevelField(FourCC('Inf2')) ---@type abilityintegerlevelfield
ABILITY_ILF_INTERACTION_TYPE                  = ConvertAbilityIntegerLevelField(FourCC('Neu2')) ---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_COST_NDT1                    = ConvertAbilityIntegerLevelField(FourCC('Ndt1')) ---@type abilityintegerlevelfield
ABILITY_ILF_LUMBER_COST_NDT2                  = ConvertAbilityIntegerLevelField(FourCC('Ndt2')) ---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_NDT3               = ConvertAbilityIntegerLevelField(FourCC('Ndt3')) ---@type abilityintegerlevelfield
ABILITY_ILF_STACKING_TYPE_POI4                = ConvertAbilityIntegerLevelField(FourCC('Poi4')) ---@type abilityintegerlevelfield
ABILITY_ILF_STACKING_TYPE_POA5                = ConvertAbilityIntegerLevelField(FourCC('Poa5')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_CREEP_LEVEL_PLY1          = ConvertAbilityIntegerLevelField(FourCC('Ply1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_CREEP_LEVEL_POS1          = ConvertAbilityIntegerLevelField(FourCC('Pos1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MOVEMENT_UPDATE_FREQUENCY_PRG1    = ConvertAbilityIntegerLevelField(FourCC('Prg1')) ---@type abilityintegerlevelfield
ABILITY_ILF_ATTACK_UPDATE_FREQUENCY_PRG2      = ConvertAbilityIntegerLevelField(FourCC('Prg2')) ---@type abilityintegerlevelfield
ABILITY_ILF_MANA_LOSS_PRG6                    = ConvertAbilityIntegerLevelField(FourCC('Prg6')) ---@type abilityintegerlevelfield
ABILITY_ILF_UNITS_SUMMONED_TYPE_ONE           = ConvertAbilityIntegerLevelField(FourCC('Rai1')) ---@type abilityintegerlevelfield
ABILITY_ILF_UNITS_SUMMONED_TYPE_TWO           = ConvertAbilityIntegerLevelField(FourCC('Rai2')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAX_UNITS_SUMMONED                = ConvertAbilityIntegerLevelField(FourCC('Ucb5')) ---@type abilityintegerlevelfield
ABILITY_ILF_ALLOW_WHEN_FULL_REJ3              = ConvertAbilityIntegerLevelField(FourCC('Rej3')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_UNITS_CHARGED_TO_CASTER   = ConvertAbilityIntegerLevelField(FourCC('Rpb5')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_UNITS_AFFECTED            = ConvertAbilityIntegerLevelField(FourCC('Rpb6')) ---@type abilityintegerlevelfield
ABILITY_ILF_DEFENSE_INCREASE_ROA2             = ConvertAbilityIntegerLevelField(FourCC('Roa2')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAX_UNITS_ROA7                    = ConvertAbilityIntegerLevelField(FourCC('Roa7')) ---@type abilityintegerlevelfield
ABILITY_ILF_ROOTED_WEAPONS                    = ConvertAbilityIntegerLevelField(FourCC('Roo1')) ---@type abilityintegerlevelfield
ABILITY_ILF_UPROOTED_WEAPONS                  = ConvertAbilityIntegerLevelField(FourCC('Roo2')) ---@type abilityintegerlevelfield
ABILITY_ILF_UPROOTED_DEFENSE_TYPE             = ConvertAbilityIntegerLevelField(FourCC('Roo4')) ---@type abilityintegerlevelfield
ABILITY_ILF_ACCUMULATION_STEP                 = ConvertAbilityIntegerLevelField(FourCC('Sal2')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_OWLS                    = ConvertAbilityIntegerLevelField(FourCC('Esn4')) ---@type abilityintegerlevelfield
ABILITY_ILF_STACKING_TYPE_SPO4                = ConvertAbilityIntegerLevelField(FourCC('Spo4')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_UNITS                   = ConvertAbilityIntegerLevelField(FourCC('Sod1')) ---@type abilityintegerlevelfield
ABILITY_ILF_SPIDER_CAPACITY                   = ConvertAbilityIntegerLevelField(FourCC('Spa1')) ---@type abilityintegerlevelfield
ABILITY_ILF_INTERVALS_BEFORE_CHANGING_TREES   = ConvertAbilityIntegerLevelField(FourCC('Wha2')) ---@type abilityintegerlevelfield
ABILITY_ILF_AGILITY_BONUS                     = ConvertAbilityIntegerLevelField(FourCC('Iagi')) ---@type abilityintegerlevelfield
ABILITY_ILF_INTELLIGENCE_BONUS                = ConvertAbilityIntegerLevelField(FourCC('Iint')) ---@type abilityintegerlevelfield
ABILITY_ILF_STRENGTH_BONUS_ISTR               = ConvertAbilityIntegerLevelField(FourCC('Istr')) ---@type abilityintegerlevelfield
ABILITY_ILF_ATTACK_BONUS                      = ConvertAbilityIntegerLevelField(FourCC('Iatt')) ---@type abilityintegerlevelfield
ABILITY_ILF_DEFENSE_BONUS_IDEF                = ConvertAbilityIntegerLevelField(FourCC('Idef')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMON_1_AMOUNT                   = ConvertAbilityIntegerLevelField(FourCC('Isn1')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMON_2_AMOUNT                   = ConvertAbilityIntegerLevelField(FourCC('Isn2')) ---@type abilityintegerlevelfield
ABILITY_ILF_EXPERIENCE_GAINED                 = ConvertAbilityIntegerLevelField(FourCC('Ixpg')) ---@type abilityintegerlevelfield
ABILITY_ILF_HIT_POINTS_GAINED_IHPG            = ConvertAbilityIntegerLevelField(FourCC('Ihpg')) ---@type abilityintegerlevelfield
ABILITY_ILF_MANA_POINTS_GAINED_IMPG           = ConvertAbilityIntegerLevelField(FourCC('Impg')) ---@type abilityintegerlevelfield
ABILITY_ILF_HIT_POINTS_GAINED_IHP2            = ConvertAbilityIntegerLevelField(FourCC('Ihp2')) ---@type abilityintegerlevelfield
ABILITY_ILF_MANA_POINTS_GAINED_IMP2           = ConvertAbilityIntegerLevelField(FourCC('Imp2')) ---@type abilityintegerlevelfield
ABILITY_ILF_DAMAGE_BONUS_DICE                 = ConvertAbilityIntegerLevelField(FourCC('Idic')) ---@type abilityintegerlevelfield
ABILITY_ILF_ARMOR_PENALTY_IARP                = ConvertAbilityIntegerLevelField(FourCC('Iarp')) ---@type abilityintegerlevelfield
ABILITY_ILF_ENABLED_ATTACK_INDEX_IOB5         = ConvertAbilityIntegerLevelField(FourCC('Iob5')) ---@type abilityintegerlevelfield
ABILITY_ILF_LEVELS_GAINED                     = ConvertAbilityIntegerLevelField(FourCC('Ilev')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAX_LIFE_GAINED                   = ConvertAbilityIntegerLevelField(FourCC('Ilif')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAX_MANA_GAINED                   = ConvertAbilityIntegerLevelField(FourCC('Iman')) ---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_GIVEN                        = ConvertAbilityIntegerLevelField(FourCC('Igol')) ---@type abilityintegerlevelfield
ABILITY_ILF_LUMBER_GIVEN                      = ConvertAbilityIntegerLevelField(FourCC('Ilum')) ---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_IFA1               = ConvertAbilityIntegerLevelField(FourCC('Ifa1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_CREEP_LEVEL_ICRE          = ConvertAbilityIntegerLevelField(FourCC('Icre')) ---@type abilityintegerlevelfield
ABILITY_ILF_MOVEMENT_SPEED_BONUS              = ConvertAbilityIntegerLevelField(FourCC('Imvb')) ---@type abilityintegerlevelfield
ABILITY_ILF_HIT_POINTS_REGENERATED_PER_SECOND = ConvertAbilityIntegerLevelField(FourCC('Ihpr')) ---@type abilityintegerlevelfield
ABILITY_ILF_SIGHT_RANGE_BONUS                 = ConvertAbilityIntegerLevelField(FourCC('Isib')) ---@type abilityintegerlevelfield
ABILITY_ILF_DAMAGE_PER_DURATION               = ConvertAbilityIntegerLevelField(FourCC('Icfd')) ---@type abilityintegerlevelfield
ABILITY_ILF_MANA_USED_PER_SECOND              = ConvertAbilityIntegerLevelField(FourCC('Icfm')) ---@type abilityintegerlevelfield
ABILITY_ILF_EXTRA_MANA_REQUIRED               = ConvertAbilityIntegerLevelField(FourCC('Icfx')) ---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_RADIUS_IDET             = ConvertAbilityIntegerLevelField(FourCC('Idet')) ---@type abilityintegerlevelfield
ABILITY_ILF_MANA_LOSS_PER_UNIT_IDIM           = ConvertAbilityIntegerLevelField(FourCC('Idim')) ---@type abilityintegerlevelfield
ABILITY_ILF_DAMAGE_TO_SUMMONED_UNITS_IDID     = ConvertAbilityIntegerLevelField(FourCC('Idid')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_IREC      = ConvertAbilityIntegerLevelField(FourCC('Irec')) ---@type abilityintegerlevelfield
ABILITY_ILF_DELAY_AFTER_DEATH_SECONDS         = ConvertAbilityIntegerLevelField(FourCC('Ircd')) ---@type abilityintegerlevelfield
ABILITY_ILF_RESTORED_LIFE                     = ConvertAbilityIntegerLevelField(FourCC('irc2')) ---@type abilityintegerlevelfield
ABILITY_ILF_RESTORED_MANA__1_FOR_CURRENT      = ConvertAbilityIntegerLevelField(FourCC('irc3')) ---@type abilityintegerlevelfield
ABILITY_ILF_HIT_POINTS_RESTORED               = ConvertAbilityIntegerLevelField(FourCC('Ihps')) ---@type abilityintegerlevelfield
ABILITY_ILF_MANA_POINTS_RESTORED              = ConvertAbilityIntegerLevelField(FourCC('Imps')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_UNITS_ITPM      = ConvertAbilityIntegerLevelField(FourCC('Itpm')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_CORPSES_RAISED_CAD1     = ConvertAbilityIntegerLevelField(FourCC('Cad1')) ---@type abilityintegerlevelfield
ABILITY_ILF_TERRAIN_DEFORMATION_DURATION_MS   = ConvertAbilityIntegerLevelField(FourCC('Wrs3')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_UNITS                     = ConvertAbilityIntegerLevelField(FourCC('Uds1')) ---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_DET1               = ConvertAbilityIntegerLevelField(FourCC('Det1')) ---@type abilityintegerlevelfield
ABILITY_ILF_GOLD_COST_PER_STRUCTURE           = ConvertAbilityIntegerLevelField(FourCC('Nsp1')) ---@type abilityintegerlevelfield
ABILITY_ILF_LUMBER_COST_PER_USE               = ConvertAbilityIntegerLevelField(FourCC('Nsp2')) ---@type abilityintegerlevelfield
ABILITY_ILF_DETECTION_TYPE_NSP3               = ConvertAbilityIntegerLevelField(FourCC('Nsp3')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SWARM_UNITS             = ConvertAbilityIntegerLevelField(FourCC('Uls1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAX_SWARM_UNITS_PER_TARGET        = ConvertAbilityIntegerLevelField(FourCC('Uls3')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NBA2     = ConvertAbilityIntegerLevelField(FourCC('Nba2')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_CREEP_LEVEL_NCH1          = ConvertAbilityIntegerLevelField(FourCC('Nch1')) ---@type abilityintegerlevelfield
ABILITY_ILF_ATTACKS_PREVENTED                 = ConvertAbilityIntegerLevelField(FourCC('Nsi1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_EFK3    = ConvertAbilityIntegerLevelField(FourCC('Efk3')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_ESV1     = ConvertAbilityIntegerLevelField(FourCC('Esv1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_CORPSES_EXH1    = ConvertAbilityIntegerLevelField(FourCC('exh1')) ---@type abilityintegerlevelfield
ABILITY_ILF_ITEM_CAPACITY                     = ConvertAbilityIntegerLevelField(FourCC('inv1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_NUMBER_OF_TARGETS_SPL2    = ConvertAbilityIntegerLevelField(FourCC('spl2')) ---@type abilityintegerlevelfield
ABILITY_ILF_ALLOW_WHEN_FULL_IRL3              = ConvertAbilityIntegerLevelField(FourCC('irl3')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_DISPELLED_UNITS           = ConvertAbilityIntegerLevelField(FourCC('idc3')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_LURES                   = ConvertAbilityIntegerLevelField(FourCC('imo1')) ---@type abilityintegerlevelfield
ABILITY_ILF_NEW_TIME_OF_DAY_HOUR              = ConvertAbilityIntegerLevelField(FourCC('ict1')) ---@type abilityintegerlevelfield
ABILITY_ILF_NEW_TIME_OF_DAY_MINUTE            = ConvertAbilityIntegerLevelField(FourCC('ict2')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_UNITS_CREATED_MEC1      = ConvertAbilityIntegerLevelField(FourCC('mec1')) ---@type abilityintegerlevelfield
ABILITY_ILF_MINIMUM_SPELLS                    = ConvertAbilityIntegerLevelField(FourCC('spb3')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_SPELLS                    = ConvertAbilityIntegerLevelField(FourCC('spb4')) ---@type abilityintegerlevelfield
ABILITY_ILF_DISABLED_ATTACK_INDEX             = ConvertAbilityIntegerLevelField(FourCC('gra3')) ---@type abilityintegerlevelfield
ABILITY_ILF_ENABLED_ATTACK_INDEX_GRA4         = ConvertAbilityIntegerLevelField(FourCC('gra4')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAXIMUM_ATTACKS                   = ConvertAbilityIntegerLevelField(FourCC('gra5')) ---@type abilityintegerlevelfield
ABILITY_ILF_BUILDING_TYPES_ALLOWED_NPR1       = ConvertAbilityIntegerLevelField(FourCC('Npr1')) ---@type abilityintegerlevelfield
ABILITY_ILF_BUILDING_TYPES_ALLOWED_NSA1       = ConvertAbilityIntegerLevelField(FourCC('Nsa1')) ---@type abilityintegerlevelfield
ABILITY_ILF_ATTACK_MODIFICATION               = ConvertAbilityIntegerLevelField(FourCC('Iaa1')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_COUNT_NPA5          = ConvertAbilityIntegerLevelField(FourCC('Npa5')) ---@type abilityintegerlevelfield
ABILITY_ILF_UPGRADE_LEVELS                    = ConvertAbilityIntegerLevelField(FourCC('Igl1')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_SUMMONED_UNITS_NDO2     = ConvertAbilityIntegerLevelField(FourCC('Ndo2')) ---@type abilityintegerlevelfield
ABILITY_ILF_BEASTS_PER_SECOND                 = ConvertAbilityIntegerLevelField(FourCC('Nst1')) ---@type abilityintegerlevelfield
ABILITY_ILF_TARGET_TYPE                       = ConvertAbilityIntegerLevelField(FourCC('Ncl2')) ---@type abilityintegerlevelfield
ABILITY_ILF_OPTIONS                           = ConvertAbilityIntegerLevelField(FourCC('Ncl3')) ---@type abilityintegerlevelfield
ABILITY_ILF_ARMOR_PENALTY_NAB3                = ConvertAbilityIntegerLevelField(FourCC('Nab3')) ---@type abilityintegerlevelfield
ABILITY_ILF_WAVE_COUNT_NHS6                   = ConvertAbilityIntegerLevelField(FourCC('Nhs6')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAX_CREEP_LEVEL_NTM3              = ConvertAbilityIntegerLevelField(FourCC('Ntm3')) ---@type abilityintegerlevelfield
ABILITY_ILF_MISSILE_COUNT                     = ConvertAbilityIntegerLevelField(FourCC('Ncs3')) ---@type abilityintegerlevelfield
ABILITY_ILF_SPLIT_ATTACK_COUNT                = ConvertAbilityIntegerLevelField(FourCC('Nlm3')) ---@type abilityintegerlevelfield
ABILITY_ILF_GENERATION_COUNT                  = ConvertAbilityIntegerLevelField(FourCC('Nlm6')) ---@type abilityintegerlevelfield
ABILITY_ILF_ROCK_RING_COUNT                   = ConvertAbilityIntegerLevelField(FourCC('Nvc1')) ---@type abilityintegerlevelfield
ABILITY_ILF_WAVE_COUNT_NVC2                   = ConvertAbilityIntegerLevelField(FourCC('Nvc2')) ---@type abilityintegerlevelfield
ABILITY_ILF_PREFER_HOSTILES_TAU1              = ConvertAbilityIntegerLevelField(FourCC('Tau1')) ---@type abilityintegerlevelfield
ABILITY_ILF_PREFER_FRIENDLIES_TAU2            = ConvertAbilityIntegerLevelField(FourCC('Tau2')) ---@type abilityintegerlevelfield
ABILITY_ILF_MAX_UNITS_TAU3                    = ConvertAbilityIntegerLevelField(FourCC('Tau3')) ---@type abilityintegerlevelfield
ABILITY_ILF_NUMBER_OF_PULSES                  = ConvertAbilityIntegerLevelField(FourCC('Tau4')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_HWE1           = ConvertAbilityIntegerLevelField(FourCC('Hwe1')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_UIN4                = ConvertAbilityIntegerLevelField(FourCC('Uin4')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_OSF1                = ConvertAbilityIntegerLevelField(FourCC('Osf1')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_EFNU           = ConvertAbilityIntegerLevelField(FourCC('Efnu')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_NBAU           = ConvertAbilityIntegerLevelField(FourCC('Nbau')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_NTOU           = ConvertAbilityIntegerLevelField(FourCC('Ntou')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_ESVU           = ConvertAbilityIntegerLevelField(FourCC('Esvu')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPES               = ConvertAbilityIntegerLevelField(FourCC('Nef1')) ---@type abilityintegerlevelfield
ABILITY_ILF_SUMMONED_UNIT_TYPE_NDOU           = ConvertAbilityIntegerLevelField(FourCC('Ndou')) ---@type abilityintegerlevelfield
ABILITY_ILF_ALTERNATE_FORM_UNIT_EMEU          = ConvertAbilityIntegerLevelField(FourCC('Emeu')) ---@type abilityintegerlevelfield
ABILITY_ILF_PLAGUE_WARD_UNIT_TYPE             = ConvertAbilityIntegerLevelField(FourCC('Aplu')) ---@type abilityintegerlevelfield
ABILITY_ILF_ALLOWED_UNIT_TYPE_BTL1            = ConvertAbilityIntegerLevelField(FourCC('Btl1')) ---@type abilityintegerlevelfield
ABILITY_ILF_NEW_UNIT_TYPE                     = ConvertAbilityIntegerLevelField(FourCC('Cha1')) ---@type abilityintegerlevelfield
ABILITY_ILF_RESULTING_UNIT_TYPE_ENT1          = ConvertAbilityIntegerLevelField(FourCC('ent1')) ---@type abilityintegerlevelfield
ABILITY_ILF_CORPSE_UNIT_TYPE                  = ConvertAbilityIntegerLevelField(FourCC('Gydu')) ---@type abilityintegerlevelfield
ABILITY_ILF_ALLOWED_UNIT_TYPE_LOA1            = ConvertAbilityIntegerLevelField(FourCC('Loa1')) ---@type abilityintegerlevelfield
ABILITY_ILF_UNIT_TYPE_FOR_LIMIT_CHECK         = ConvertAbilityIntegerLevelField(FourCC('Raiu')) ---@type abilityintegerlevelfield
ABILITY_ILF_WARD_UNIT_TYPE_STAU               = ConvertAbilityIntegerLevelField(FourCC('Stau')) ---@type abilityintegerlevelfield
ABILITY_ILF_EFFECT_ABILITY                    = ConvertAbilityIntegerLevelField(FourCC('Iobu')) ---@type abilityintegerlevelfield
ABILITY_ILF_CONVERSION_UNIT                   = ConvertAbilityIntegerLevelField(FourCC('Ndc2')) ---@type abilityintegerlevelfield
ABILITY_ILF_UNIT_TO_PRESERVE                  = ConvertAbilityIntegerLevelField(FourCC('Nsl1')) ---@type abilityintegerlevelfield
ABILITY_ILF_UNIT_TYPE_ALLOWED                 = ConvertAbilityIntegerLevelField(FourCC('Chl1')) ---@type abilityintegerlevelfield
ABILITY_ILF_SWARM_UNIT_TYPE                   = ConvertAbilityIntegerLevelField(FourCC('Ulsu')) ---@type abilityintegerlevelfield
ABILITY_ILF_RESULTING_UNIT_TYPE_COAU          = ConvertAbilityIntegerLevelField(FourCC('coau')) ---@type abilityintegerlevelfield
ABILITY_ILF_UNIT_TYPE_EXHU                    = ConvertAbilityIntegerLevelField(FourCC('exhu')) ---@type abilityintegerlevelfield
ABILITY_ILF_WARD_UNIT_TYPE_HWDU               = ConvertAbilityIntegerLevelField(FourCC('hwdu')) ---@type abilityintegerlevelfield
ABILITY_ILF_LURE_UNIT_TYPE                    = ConvertAbilityIntegerLevelField(FourCC('imou')) ---@type abilityintegerlevelfield
ABILITY_ILF_UNIT_TYPE_IPMU                    = ConvertAbilityIntegerLevelField(FourCC('ipmu')) ---@type abilityintegerlevelfield
ABILITY_ILF_FACTORY_UNIT_ID                   = ConvertAbilityIntegerLevelField(FourCC('Nsyu')) ---@type abilityintegerlevelfield
ABILITY_ILF_SPAWN_UNIT_ID_NFYU                = ConvertAbilityIntegerLevelField(FourCC('Nfyu')) ---@type abilityintegerlevelfield
ABILITY_ILF_DESTRUCTIBLE_ID                   = ConvertAbilityIntegerLevelField(FourCC('Nvcu')) ---@type abilityintegerlevelfield
ABILITY_ILF_UPGRADE_TYPE                      = ConvertAbilityIntegerLevelField(FourCC('Iglu')) ---@type abilityintegerlevelfield

ABILITY_RLF_CASTING_TIME                                      = ConvertAbilityRealLevelField(FourCC('acas')) ---@type abilityreallevelfield
ABILITY_RLF_DURATION_NORMAL                                   = ConvertAbilityRealLevelField(FourCC('adur')) ---@type abilityreallevelfield
ABILITY_RLF_DURATION_HERO                                     = ConvertAbilityRealLevelField(FourCC('ahdu')) ---@type abilityreallevelfield
ABILITY_RLF_COOLDOWN                                          = ConvertAbilityRealLevelField(FourCC('acdn')) ---@type abilityreallevelfield
ABILITY_RLF_AREA_OF_EFFECT                                    = ConvertAbilityRealLevelField(FourCC('aare')) ---@type abilityreallevelfield
ABILITY_RLF_CAST_RANGE                                        = ConvertAbilityRealLevelField(FourCC('aran')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_HBZ2                                       = ConvertAbilityRealLevelField(FourCC('Hbz2')) ---@type abilityreallevelfield
ABILITY_RLF_BUILDING_REDUCTION_HBZ4                           = ConvertAbilityRealLevelField(FourCC('Hbz4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_HBZ5                            = ConvertAbilityRealLevelField(FourCC('Hbz5')) ---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_DAMAGE_PER_WAVE                           = ConvertAbilityRealLevelField(FourCC('Hbz6')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_REGENERATION_INCREASE                        = ConvertAbilityRealLevelField(FourCC('Hab1')) ---@type abilityreallevelfield
ABILITY_RLF_CASTING_DELAY                                     = ConvertAbilityRealLevelField(FourCC('Hmt2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_OWW1                            = ConvertAbilityRealLevelField(FourCC('Oww1')) ---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_OWW2                       = ConvertAbilityRealLevelField(FourCC('Oww2')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_CRITICAL_STRIKE                         = ConvertAbilityRealLevelField(FourCC('Ocr1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_MULTIPLIER_OCR2                            = ConvertAbilityRealLevelField(FourCC('Ocr2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_OCR3                                 = ConvertAbilityRealLevelField(FourCC('Ocr3')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_EVADE_OCR4                              = ConvertAbilityRealLevelField(FourCC('Ocr4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_PERCENT_OMI2                         = ConvertAbilityRealLevelField(FourCC('Omi2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_TAKEN_PERCENT_OMI3                         = ConvertAbilityRealLevelField(FourCC('Omi3')) ---@type abilityreallevelfield
ABILITY_RLF_ANIMATION_DELAY                                   = ConvertAbilityRealLevelField(FourCC('Omi4')) ---@type abilityreallevelfield
ABILITY_RLF_TRANSITION_TIME                                   = ConvertAbilityRealLevelField(FourCC('Owk1')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_OWK2              = ConvertAbilityRealLevelField(FourCC('Owk2')) ---@type abilityreallevelfield
ABILITY_RLF_BACKSTAB_DAMAGE                                   = ConvertAbilityRealLevelField(FourCC('Owk3')) ---@type abilityreallevelfield
ABILITY_RLF_AMOUNT_HEALED_DAMAGED_UDC1                        = ConvertAbilityRealLevelField(FourCC('Udc1')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_CONVERTED_TO_MANA                            = ConvertAbilityRealLevelField(FourCC('Udp1')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_CONVERTED_TO_LIFE                            = ConvertAbilityRealLevelField(FourCC('Udp2')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_UAU1              = ConvertAbilityRealLevelField(FourCC('Uau1')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_REGENERATION_INCREASE_PERCENT                = ConvertAbilityRealLevelField(FourCC('Uau2')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_EVADE_EEV1                              = ConvertAbilityRealLevelField(FourCC('Eev1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_INTERVAL                               = ConvertAbilityRealLevelField(FourCC('Eim1')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_DRAINED_PER_SECOND_EIM2                      = ConvertAbilityRealLevelField(FourCC('Eim2')) ---@type abilityreallevelfield
ABILITY_RLF_BUFFER_MANA_REQUIRED                              = ConvertAbilityRealLevelField(FourCC('Eim3')) ---@type abilityreallevelfield
ABILITY_RLF_MAX_MANA_DRAINED                                  = ConvertAbilityRealLevelField(FourCC('Emb1')) ---@type abilityreallevelfield
ABILITY_RLF_BOLT_DELAY                                        = ConvertAbilityRealLevelField(FourCC('Emb2')) ---@type abilityreallevelfield
ABILITY_RLF_BOLT_LIFETIME                                     = ConvertAbilityRealLevelField(FourCC('Emb3')) ---@type abilityreallevelfield
ABILITY_RLF_ALTITUDE_ADJUSTMENT_DURATION                      = ConvertAbilityRealLevelField(FourCC('Eme3')) ---@type abilityreallevelfield
ABILITY_RLF_LANDING_DELAY_TIME                                = ConvertAbilityRealLevelField(FourCC('Eme4')) ---@type abilityreallevelfield
ABILITY_RLF_ALTERNATE_FORM_HIT_POINT_BONUS                    = ConvertAbilityRealLevelField(FourCC('Eme5')) ---@type abilityreallevelfield
ABILITY_RLF_MOVE_SPEED_BONUS_INFO_PANEL_ONLY                  = ConvertAbilityRealLevelField(FourCC('Ncr5')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_BONUS_INFO_PANEL_ONLY                = ConvertAbilityRealLevelField(FourCC('Ncr6')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_REGENERATION_RATE_PER_SECOND                 = ConvertAbilityRealLevelField(FourCC('ave5')) ---@type abilityreallevelfield
ABILITY_RLF_STUN_DURATION_USL1                                = ConvertAbilityRealLevelField(FourCC('Usl1')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_DAMAGE_STOLEN_PERCENT                      = ConvertAbilityRealLevelField(FourCC('Uav1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_UCS1                                       = ConvertAbilityRealLevelField(FourCC('Ucs1')) ---@type abilityreallevelfield
ABILITY_RLF_MAX_DAMAGE_UCS2                                   = ConvertAbilityRealLevelField(FourCC('Ucs2')) ---@type abilityreallevelfield
ABILITY_RLF_DISTANCE_UCS3                                     = ConvertAbilityRealLevelField(FourCC('Ucs3')) ---@type abilityreallevelfield
ABILITY_RLF_FINAL_AREA_UCS4                                   = ConvertAbilityRealLevelField(FourCC('Ucs4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_UIN1                                       = ConvertAbilityRealLevelField(FourCC('Uin1')) ---@type abilityreallevelfield
ABILITY_RLF_DURATION                                          = ConvertAbilityRealLevelField(FourCC('Uin2')) ---@type abilityreallevelfield
ABILITY_RLF_IMPACT_DELAY                                      = ConvertAbilityRealLevelField(FourCC('Uin3')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_TARGET_OCL1                            = ConvertAbilityRealLevelField(FourCC('Ocl1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_REDUCTION_PER_TARGET                       = ConvertAbilityRealLevelField(FourCC('Ocl3')) ---@type abilityreallevelfield
ABILITY_RLF_EFFECT_DELAY_OEQ1                                 = ConvertAbilityRealLevelField(FourCC('Oeq1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_TO_BUILDINGS                    = ConvertAbilityRealLevelField(FourCC('Oeq2')) ---@type abilityreallevelfield
ABILITY_RLF_UNITS_SLOWED_PERCENT                              = ConvertAbilityRealLevelField(FourCC('Oeq3')) ---@type abilityreallevelfield
ABILITY_RLF_FINAL_AREA_OEQ4                                   = ConvertAbilityRealLevelField(FourCC('Oeq4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_EER1                            = ConvertAbilityRealLevelField(FourCC('Eer1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_TO_ATTACKERS                         = ConvertAbilityRealLevelField(FourCC('Eah1')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_HEALED                                       = ConvertAbilityRealLevelField(FourCC('Etq1')) ---@type abilityreallevelfield
ABILITY_RLF_HEAL_INTERVAL                                     = ConvertAbilityRealLevelField(FourCC('Etq2')) ---@type abilityreallevelfield
ABILITY_RLF_BUILDING_REDUCTION_ETQ3                           = ConvertAbilityRealLevelField(FourCC('Etq3')) ---@type abilityreallevelfield
ABILITY_RLF_INITIAL_IMMUNITY_DURATION                         = ConvertAbilityRealLevelField(FourCC('Etq4')) ---@type abilityreallevelfield
ABILITY_RLF_MAX_LIFE_DRAINED_PER_SECOND_PERCENT               = ConvertAbilityRealLevelField(FourCC('Udd1')) ---@type abilityreallevelfield
ABILITY_RLF_BUILDING_REDUCTION_UDD2                           = ConvertAbilityRealLevelField(FourCC('Udd2')) ---@type abilityreallevelfield
ABILITY_RLF_ARMOR_DURATION                                    = ConvertAbilityRealLevelField(FourCC('Ufa1')) ---@type abilityreallevelfield
ABILITY_RLF_ARMOR_BONUS_UFA2                                  = ConvertAbilityRealLevelField(FourCC('Ufa2')) ---@type abilityreallevelfield
ABILITY_RLF_AREA_OF_EFFECT_DAMAGE                             = ConvertAbilityRealLevelField(FourCC('Ufn1')) ---@type abilityreallevelfield
ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_UFN2                       = ConvertAbilityRealLevelField(FourCC('Ufn2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_HFA1                                 = ConvertAbilityRealLevelField(FourCC('Hfa1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_ESF1                                 = ConvertAbilityRealLevelField(FourCC('Esf1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INTERVAL_ESF2                              = ConvertAbilityRealLevelField(FourCC('Esf2')) ---@type abilityreallevelfield
ABILITY_RLF_BUILDING_REDUCTION_ESF3                           = ConvertAbilityRealLevelField(FourCC('Esf3')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_PERCENT                              = ConvertAbilityRealLevelField(FourCC('Ear1')) ---@type abilityreallevelfield
ABILITY_RLF_DEFENSE_BONUS_HAV1                                = ConvertAbilityRealLevelField(FourCC('Hav1')) ---@type abilityreallevelfield
ABILITY_RLF_HIT_POINT_BONUS                                   = ConvertAbilityRealLevelField(FourCC('Hav2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_HAV3                                 = ConvertAbilityRealLevelField(FourCC('Hav3')) ---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_HAV4                       = ConvertAbilityRealLevelField(FourCC('Hav4')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_BASH                                    = ConvertAbilityRealLevelField(FourCC('Hbh1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_MULTIPLIER_HBH2                            = ConvertAbilityRealLevelField(FourCC('Hbh2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_HBH3                                 = ConvertAbilityRealLevelField(FourCC('Hbh3')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_MISS_HBH4                               = ConvertAbilityRealLevelField(FourCC('Hbh4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_HTB1                                       = ConvertAbilityRealLevelField(FourCC('Htb1')) ---@type abilityreallevelfield
ABILITY_RLF_AOE_DAMAGE                                        = ConvertAbilityRealLevelField(FourCC('Htc1')) ---@type abilityreallevelfield
ABILITY_RLF_SPECIFIC_TARGET_DAMAGE_HTC2                       = ConvertAbilityRealLevelField(FourCC('Htc2')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_HTC3             = ConvertAbilityRealLevelField(FourCC('Htc3')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_HTC4               = ConvertAbilityRealLevelField(FourCC('Htc4')) ---@type abilityreallevelfield
ABILITY_RLF_ARMOR_BONUS_HAD1                                  = ConvertAbilityRealLevelField(FourCC('Had1')) ---@type abilityreallevelfield
ABILITY_RLF_AMOUNT_HEALED_DAMAGED_HHB1                        = ConvertAbilityRealLevelField(FourCC('Hhb1')) ---@type abilityreallevelfield
ABILITY_RLF_EXTRA_DAMAGE_HCA1                                 = ConvertAbilityRealLevelField(FourCC('Hca1')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_HCA2                        = ConvertAbilityRealLevelField(FourCC('Hca2')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_HCA3                          = ConvertAbilityRealLevelField(FourCC('Hca3')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_OAE1              = ConvertAbilityRealLevelField(FourCC('Oae1')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_OAE2                = ConvertAbilityRealLevelField(FourCC('Oae2')) ---@type abilityreallevelfield
ABILITY_RLF_REINCARNATION_DELAY                               = ConvertAbilityRealLevelField(FourCC('Ore1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_OSH1                                       = ConvertAbilityRealLevelField(FourCC('Osh1')) ---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_DAMAGE_OSH2                               = ConvertAbilityRealLevelField(FourCC('Osh2')) ---@type abilityreallevelfield
ABILITY_RLF_DISTANCE_OSH3                                     = ConvertAbilityRealLevelField(FourCC('Osh3')) ---@type abilityreallevelfield
ABILITY_RLF_FINAL_AREA_OSH4                                   = ConvertAbilityRealLevelField(FourCC('Osh4')) ---@type abilityreallevelfield
ABILITY_RLF_GRAPHIC_DELAY_NFD1                                = ConvertAbilityRealLevelField(FourCC('Nfd1')) ---@type abilityreallevelfield
ABILITY_RLF_GRAPHIC_DURATION_NFD2                             = ConvertAbilityRealLevelField(FourCC('Nfd2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_NFD3                                       = ConvertAbilityRealLevelField(FourCC('Nfd3')) ---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_AMS1                         = ConvertAbilityRealLevelField(FourCC('Ams1')) ---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_AMS2                       = ConvertAbilityRealLevelField(FourCC('Ams2')) ---@type abilityreallevelfield
ABILITY_RLF_AURA_DURATION                                     = ConvertAbilityRealLevelField(FourCC('Apl1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_APL2                            = ConvertAbilityRealLevelField(FourCC('Apl2')) ---@type abilityreallevelfield
ABILITY_RLF_DURATION_OF_PLAGUE_WARD                           = ConvertAbilityRealLevelField(FourCC('Apl3')) ---@type abilityreallevelfield
ABILITY_RLF_AMOUNT_OF_HIT_POINTS_REGENERATED                  = ConvertAbilityRealLevelField(FourCC('Oar1')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_DAMAGE_INCREASE_AKB1                       = ConvertAbilityRealLevelField(FourCC('Akb1')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_LOSS_ADM1                                    = ConvertAbilityRealLevelField(FourCC('Adm1')) ---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_ADM2                         = ConvertAbilityRealLevelField(FourCC('Adm2')) ---@type abilityreallevelfield
ABILITY_RLF_EXPANSION_AMOUNT                                  = ConvertAbilityRealLevelField(FourCC('Bli1')) ---@type abilityreallevelfield
ABILITY_RLF_INTERVAL_DURATION_BGM2                            = ConvertAbilityRealLevelField(FourCC('Bgm2')) ---@type abilityreallevelfield
ABILITY_RLF_RADIUS_OF_MINING_RING                             = ConvertAbilityRealLevelField(FourCC('Bgm4')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_INCREASE_PERCENT_BLO1                = ConvertAbilityRealLevelField(FourCC('Blo1')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_PERCENT_BLO2              = ConvertAbilityRealLevelField(FourCC('Blo2')) ---@type abilityreallevelfield
ABILITY_RLF_SCALING_FACTOR                                    = ConvertAbilityRealLevelField(FourCC('Blo3')) ---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_PER_SECOND_CAN1                        = ConvertAbilityRealLevelField(FourCC('Can1')) ---@type abilityreallevelfield
ABILITY_RLF_MAX_HIT_POINTS                                    = ConvertAbilityRealLevelField(FourCC('Can2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_DEV2                            = ConvertAbilityRealLevelField(FourCC('Dev2')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_UPDATE_FREQUENCY_CHD1                    = ConvertAbilityRealLevelField(FourCC('Chd1')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_UPDATE_FREQUENCY_CHD2                      = ConvertAbilityRealLevelField(FourCC('Chd2')) ---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_CHD3                         = ConvertAbilityRealLevelField(FourCC('Chd3')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_CRI1             = ConvertAbilityRealLevelField(FourCC('Cri1')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_CRI2               = ConvertAbilityRealLevelField(FourCC('Cri2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_REDUCTION_CRI3                             = ConvertAbilityRealLevelField(FourCC('Cri3')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_MISS_CRS                                = ConvertAbilityRealLevelField(FourCC('Crs1')) ---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_RADIUS_DDA1                           = ConvertAbilityRealLevelField(FourCC('Dda1')) ---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_AMOUNT_DDA2                           = ConvertAbilityRealLevelField(FourCC('Dda2')) ---@type abilityreallevelfield
ABILITY_RLF_PARTIAL_DAMAGE_RADIUS                             = ConvertAbilityRealLevelField(FourCC('Dda3')) ---@type abilityreallevelfield
ABILITY_RLF_PARTIAL_DAMAGE_AMOUNT                             = ConvertAbilityRealLevelField(FourCC('Dda4')) ---@type abilityreallevelfield
ABILITY_RLF_BUILDING_DAMAGE_FACTOR_SDS1                       = ConvertAbilityRealLevelField(FourCC('Sds1')) ---@type abilityreallevelfield
ABILITY_RLF_MAX_DAMAGE_UCO5                                   = ConvertAbilityRealLevelField(FourCC('Uco5')) ---@type abilityreallevelfield
ABILITY_RLF_MOVE_SPEED_BONUS_UCO6                             = ConvertAbilityRealLevelField(FourCC('Uco6')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_TAKEN_PERCENT_DEF1                         = ConvertAbilityRealLevelField(FourCC('Def1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_PERCENT_DEF2                         = ConvertAbilityRealLevelField(FourCC('Def2')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_DEF3                        = ConvertAbilityRealLevelField(FourCC('Def3')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_DEF4                          = ConvertAbilityRealLevelField(FourCC('Def4')) ---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_DEF5                       = ConvertAbilityRealLevelField(FourCC('Def5')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_DEFLECT                                 = ConvertAbilityRealLevelField(FourCC('Def6')) ---@type abilityreallevelfield
ABILITY_RLF_DEFLECT_DAMAGE_TAKEN_PIERCING                     = ConvertAbilityRealLevelField(FourCC('Def7')) ---@type abilityreallevelfield
ABILITY_RLF_DEFLECT_DAMAGE_TAKEN_SPELLS                       = ConvertAbilityRealLevelField(FourCC('Def8')) ---@type abilityreallevelfield
ABILITY_RLF_RIP_DELAY                                         = ConvertAbilityRealLevelField(FourCC('Eat1')) ---@type abilityreallevelfield
ABILITY_RLF_EAT_DELAY                                         = ConvertAbilityRealLevelField(FourCC('Eat2')) ---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_GAINED_EAT3                            = ConvertAbilityRealLevelField(FourCC('Eat3')) ---@type abilityreallevelfield
ABILITY_RLF_AIR_UNIT_LOWER_DURATION                           = ConvertAbilityRealLevelField(FourCC('Ens1')) ---@type abilityreallevelfield
ABILITY_RLF_AIR_UNIT_HEIGHT                                   = ConvertAbilityRealLevelField(FourCC('Ens2')) ---@type abilityreallevelfield
ABILITY_RLF_MELEE_ATTACK_RANGE                                = ConvertAbilityRealLevelField(FourCC('Ens3')) ---@type abilityreallevelfield
ABILITY_RLF_INTERVAL_DURATION_EGM2                            = ConvertAbilityRealLevelField(FourCC('Egm2')) ---@type abilityreallevelfield
ABILITY_RLF_EFFECT_DELAY_FLA2                                 = ConvertAbilityRealLevelField(FourCC('Fla2')) ---@type abilityreallevelfield
ABILITY_RLF_MINING_DURATION                                   = ConvertAbilityRealLevelField(FourCC('Gld2')) ---@type abilityreallevelfield
ABILITY_RLF_RADIUS_OF_GRAVESTONES                             = ConvertAbilityRealLevelField(FourCC('Gyd2')) ---@type abilityreallevelfield
ABILITY_RLF_RADIUS_OF_CORPSES                                 = ConvertAbilityRealLevelField(FourCC('Gyd3')) ---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_GAINED_HEA1                            = ConvertAbilityRealLevelField(FourCC('Hea1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INCREASE_PERCENT_INF1                      = ConvertAbilityRealLevelField(FourCC('Inf1')) ---@type abilityreallevelfield
ABILITY_RLF_AUTOCAST_RANGE                                    = ConvertAbilityRealLevelField(FourCC('Inf3')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_REGEN_RATE                                   = ConvertAbilityRealLevelField(FourCC('Inf4')) ---@type abilityreallevelfield
ABILITY_RLF_GRAPHIC_DELAY_LIT1                                = ConvertAbilityRealLevelField(FourCC('Lit1')) ---@type abilityreallevelfield
ABILITY_RLF_GRAPHIC_DURATION_LIT2                             = ConvertAbilityRealLevelField(FourCC('Lit2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_LSH1                            = ConvertAbilityRealLevelField(FourCC('Lsh1')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_GAINED                                       = ConvertAbilityRealLevelField(FourCC('Mbt1')) ---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_GAINED_MBT2                            = ConvertAbilityRealLevelField(FourCC('Mbt2')) ---@type abilityreallevelfield
ABILITY_RLF_AUTOCAST_REQUIREMENT                              = ConvertAbilityRealLevelField(FourCC('Mbt3')) ---@type abilityreallevelfield
ABILITY_RLF_WATER_HEIGHT                                      = ConvertAbilityRealLevelField(FourCC('Mbt4')) ---@type abilityreallevelfield
ABILITY_RLF_ACTIVATION_DELAY_MIN1                             = ConvertAbilityRealLevelField(FourCC('Min1')) ---@type abilityreallevelfield
ABILITY_RLF_INVISIBILITY_TRANSITION_TIME                      = ConvertAbilityRealLevelField(FourCC('Min2')) ---@type abilityreallevelfield
ABILITY_RLF_ACTIVATION_RADIUS                                 = ConvertAbilityRealLevelField(FourCC('Neu1')) ---@type abilityreallevelfield
ABILITY_RLF_AMOUNT_REGENERATED                                = ConvertAbilityRealLevelField(FourCC('Arm1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_POI1                            = ConvertAbilityRealLevelField(FourCC('Poi1')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_POI2                          = ConvertAbilityRealLevelField(FourCC('Poi2')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_POI3                        = ConvertAbilityRealLevelField(FourCC('Poi3')) ---@type abilityreallevelfield
ABILITY_RLF_EXTRA_DAMAGE_POA1                                 = ConvertAbilityRealLevelField(FourCC('Poa1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_POA2                            = ConvertAbilityRealLevelField(FourCC('Poa2')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_POA3                          = ConvertAbilityRealLevelField(FourCC('Poa3')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_POA4                        = ConvertAbilityRealLevelField(FourCC('Poa4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_AMPLIFICATION                              = ConvertAbilityRealLevelField(FourCC('Pos2')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_STOMP_PERCENT                           = ConvertAbilityRealLevelField(FourCC('War1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_WAR2                                 = ConvertAbilityRealLevelField(FourCC('War2')) ---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_RADIUS_WAR3                           = ConvertAbilityRealLevelField(FourCC('War3')) ---@type abilityreallevelfield
ABILITY_RLF_HALF_DAMAGE_RADIUS_WAR4                           = ConvertAbilityRealLevelField(FourCC('War4')) ---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_PRG3                         = ConvertAbilityRealLevelField(FourCC('Prg3')) ---@type abilityreallevelfield
ABILITY_RLF_UNIT_PAUSE_DURATION                               = ConvertAbilityRealLevelField(FourCC('Prg4')) ---@type abilityreallevelfield
ABILITY_RLF_HERO_PAUSE_DURATION                               = ConvertAbilityRealLevelField(FourCC('Prg5')) ---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_GAINED_REJ1                            = ConvertAbilityRealLevelField(FourCC('Rej1')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_POINTS_GAINED_REJ2                           = ConvertAbilityRealLevelField(FourCC('Rej2')) ---@type abilityreallevelfield
ABILITY_RLF_MINIMUM_LIFE_REQUIRED                             = ConvertAbilityRealLevelField(FourCC('Rpb3')) ---@type abilityreallevelfield
ABILITY_RLF_MINIMUM_MANA_REQUIRED                             = ConvertAbilityRealLevelField(FourCC('Rpb4')) ---@type abilityreallevelfield
ABILITY_RLF_REPAIR_COST_RATIO                                 = ConvertAbilityRealLevelField(FourCC('Rep1')) ---@type abilityreallevelfield
ABILITY_RLF_REPAIR_TIME_RATIO                                 = ConvertAbilityRealLevelField(FourCC('Rep2')) ---@type abilityreallevelfield
ABILITY_RLF_POWERBUILD_COST                                   = ConvertAbilityRealLevelField(FourCC('Rep3')) ---@type abilityreallevelfield
ABILITY_RLF_POWERBUILD_RATE                                   = ConvertAbilityRealLevelField(FourCC('Rep4')) ---@type abilityreallevelfield
ABILITY_RLF_NAVAL_RANGE_BONUS                                 = ConvertAbilityRealLevelField(FourCC('Rep5')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INCREASE_PERCENT_ROA1                      = ConvertAbilityRealLevelField(FourCC('Roa1')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_REGENERATION_RATE                            = ConvertAbilityRealLevelField(FourCC('Roa3')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_REGEN                                        = ConvertAbilityRealLevelField(FourCC('Roa4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INCREASE                                   = ConvertAbilityRealLevelField(FourCC('Nbr1')) ---@type abilityreallevelfield
ABILITY_RLF_SALVAGE_COST_RATIO                                = ConvertAbilityRealLevelField(FourCC('Sal1')) ---@type abilityreallevelfield
ABILITY_RLF_IN_FLIGHT_SIGHT_RADIUS                            = ConvertAbilityRealLevelField(FourCC('Esn1')) ---@type abilityreallevelfield
ABILITY_RLF_HOVERING_SIGHT_RADIUS                             = ConvertAbilityRealLevelField(FourCC('Esn2')) ---@type abilityreallevelfield
ABILITY_RLF_HOVERING_HEIGHT                                   = ConvertAbilityRealLevelField(FourCC('Esn3')) ---@type abilityreallevelfield
ABILITY_RLF_DURATION_OF_OWLS                                  = ConvertAbilityRealLevelField(FourCC('Esn5')) ---@type abilityreallevelfield
ABILITY_RLF_FADE_DURATION                                     = ConvertAbilityRealLevelField(FourCC('Shm1')) ---@type abilityreallevelfield
ABILITY_RLF_DAY_NIGHT_DURATION                                = ConvertAbilityRealLevelField(FourCC('Shm2')) ---@type abilityreallevelfield
ABILITY_RLF_ACTION_DURATION                                   = ConvertAbilityRealLevelField(FourCC('Shm3')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SLO1                        = ConvertAbilityRealLevelField(FourCC('Slo1')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_SLO2                          = ConvertAbilityRealLevelField(FourCC('Slo2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_SPO1                            = ConvertAbilityRealLevelField(FourCC('Spo1')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_SPO2                        = ConvertAbilityRealLevelField(FourCC('Spo2')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_SPO3                          = ConvertAbilityRealLevelField(FourCC('Spo3')) ---@type abilityreallevelfield
ABILITY_RLF_ACTIVATION_DELAY_STA1                             = ConvertAbilityRealLevelField(FourCC('Sta1')) ---@type abilityreallevelfield
ABILITY_RLF_DETECTION_RADIUS_STA2                             = ConvertAbilityRealLevelField(FourCC('Sta2')) ---@type abilityreallevelfield
ABILITY_RLF_DETONATION_RADIUS                                 = ConvertAbilityRealLevelField(FourCC('Sta3')) ---@type abilityreallevelfield
ABILITY_RLF_STUN_DURATION_STA4                                = ConvertAbilityRealLevelField(FourCC('Sta4')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_BONUS_PERCENT                        = ConvertAbilityRealLevelField(FourCC('Uhf1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_UHF2                            = ConvertAbilityRealLevelField(FourCC('Uhf2')) ---@type abilityreallevelfield
ABILITY_RLF_LUMBER_PER_INTERVAL                               = ConvertAbilityRealLevelField(FourCC('Wha1')) ---@type abilityreallevelfield
ABILITY_RLF_ART_ATTACHMENT_HEIGHT                             = ConvertAbilityRealLevelField(FourCC('Wha3')) ---@type abilityreallevelfield
ABILITY_RLF_TELEPORT_AREA_WIDTH                               = ConvertAbilityRealLevelField(FourCC('Wrp1')) ---@type abilityreallevelfield
ABILITY_RLF_TELEPORT_AREA_HEIGHT                              = ConvertAbilityRealLevelField(FourCC('Wrp2')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_STOLEN_PER_ATTACK                            = ConvertAbilityRealLevelField(FourCC('Ivam')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_IDAM                                 = ConvertAbilityRealLevelField(FourCC('Idam')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_HIT_UNITS_PERCENT                       = ConvertAbilityRealLevelField(FourCC('Iob2')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_HIT_HEROS_PERCENT                       = ConvertAbilityRealLevelField(FourCC('Iob3')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_HIT_SUMMONS_PERCENT                     = ConvertAbilityRealLevelField(FourCC('Iob4')) ---@type abilityreallevelfield
ABILITY_RLF_DELAY_FOR_TARGET_EFFECT                           = ConvertAbilityRealLevelField(FourCC('Idel')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_PERCENT_OF_NORMAL                    = ConvertAbilityRealLevelField(FourCC('Iild')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RECEIVED_MULTIPLIER                        = ConvertAbilityRealLevelField(FourCC('Iilw')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_REGENERATION_BONUS_AS_FRACTION_OF_NORMAL     = ConvertAbilityRealLevelField(FourCC('Imrp')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_ISPI                      = ConvertAbilityRealLevelField(FourCC('Ispi')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_IDPS                            = ConvertAbilityRealLevelField(FourCC('Idps')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_DAMAGE_INCREASE_CAC1                       = ConvertAbilityRealLevelField(FourCC('Cac1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_COR1                            = ConvertAbilityRealLevelField(FourCC('Cor1')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_INCREASE_ISX1                        = ConvertAbilityRealLevelField(FourCC('Isx1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_WRS1                                       = ConvertAbilityRealLevelField(FourCC('Wrs1')) ---@type abilityreallevelfield
ABILITY_RLF_TERRAIN_DEFORMATION_AMPLITUDE                     = ConvertAbilityRealLevelField(FourCC('Wrs2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_CTC1                                       = ConvertAbilityRealLevelField(FourCC('Ctc1')) ---@type abilityreallevelfield
ABILITY_RLF_EXTRA_DAMAGE_TO_TARGET                            = ConvertAbilityRealLevelField(FourCC('Ctc2')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_CTC3                     = ConvertAbilityRealLevelField(FourCC('Ctc3')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_CTC4                       = ConvertAbilityRealLevelField(FourCC('Ctc4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_CTB1                                       = ConvertAbilityRealLevelField(FourCC('Ctb1')) ---@type abilityreallevelfield
ABILITY_RLF_CASTING_DELAY_SECONDS                             = ConvertAbilityRealLevelField(FourCC('Uds2')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_LOSS_PER_UNIT_DTN1                           = ConvertAbilityRealLevelField(FourCC('Dtn1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_TO_SUMMONED_UNITS_DTN2                     = ConvertAbilityRealLevelField(FourCC('Dtn2')) ---@type abilityreallevelfield
ABILITY_RLF_TRANSITION_TIME_SECONDS                           = ConvertAbilityRealLevelField(FourCC('Ivs1')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_DRAINED_PER_SECOND_NMR1                      = ConvertAbilityRealLevelField(FourCC('Nmr1')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_REDUCE_DAMAGE_PERCENT                   = ConvertAbilityRealLevelField(FourCC('Ssk1')) ---@type abilityreallevelfield
ABILITY_RLF_MINIMUM_DAMAGE                                    = ConvertAbilityRealLevelField(FourCC('Ssk2')) ---@type abilityreallevelfield
ABILITY_RLF_IGNORED_DAMAGE                                    = ConvertAbilityRealLevelField(FourCC('Ssk3')) ---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_DEALT                                 = ConvertAbilityRealLevelField(FourCC('Hfs1')) ---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_INTERVAL                              = ConvertAbilityRealLevelField(FourCC('Hfs2')) ---@type abilityreallevelfield
ABILITY_RLF_HALF_DAMAGE_DEALT                                 = ConvertAbilityRealLevelField(FourCC('Hfs3')) ---@type abilityreallevelfield
ABILITY_RLF_HALF_DAMAGE_INTERVAL                              = ConvertAbilityRealLevelField(FourCC('Hfs4')) ---@type abilityreallevelfield
ABILITY_RLF_BUILDING_REDUCTION_HFS5                           = ConvertAbilityRealLevelField(FourCC('Hfs5')) ---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_DAMAGE_HFS6                               = ConvertAbilityRealLevelField(FourCC('Hfs6')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_PER_HIT_POINT                                = ConvertAbilityRealLevelField(FourCC('Nms1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_ABSORBED_PERCENT                           = ConvertAbilityRealLevelField(FourCC('Nms2')) ---@type abilityreallevelfield
ABILITY_RLF_WAVE_DISTANCE                                     = ConvertAbilityRealLevelField(FourCC('Uim1')) ---@type abilityreallevelfield
ABILITY_RLF_WAVE_TIME_SECONDS                                 = ConvertAbilityRealLevelField(FourCC('Uim2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DEALT_UIM3                                 = ConvertAbilityRealLevelField(FourCC('Uim3')) ---@type abilityreallevelfield
ABILITY_RLF_AIR_TIME_SECONDS_UIM4                             = ConvertAbilityRealLevelField(FourCC('Uim4')) ---@type abilityreallevelfield
ABILITY_RLF_UNIT_RELEASE_INTERVAL_SECONDS                     = ConvertAbilityRealLevelField(FourCC('Uls2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RETURN_FACTOR                              = ConvertAbilityRealLevelField(FourCC('Uls4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RETURN_THRESHOLD                           = ConvertAbilityRealLevelField(FourCC('Uls5')) ---@type abilityreallevelfield
ABILITY_RLF_RETURNED_DAMAGE_FACTOR                            = ConvertAbilityRealLevelField(FourCC('Uts1')) ---@type abilityreallevelfield
ABILITY_RLF_RECEIVED_DAMAGE_FACTOR                            = ConvertAbilityRealLevelField(FourCC('Uts2')) ---@type abilityreallevelfield
ABILITY_RLF_DEFENSE_BONUS_UTS3                                = ConvertAbilityRealLevelField(FourCC('Uts3')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_NBA1                                 = ConvertAbilityRealLevelField(FourCC('Nba1')) ---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DURATION_SECONDS_NBA3               = ConvertAbilityRealLevelField(FourCC('Nba3')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_PER_SUMMONED_HITPOINT                        = ConvertAbilityRealLevelField(FourCC('Cmg2')) ---@type abilityreallevelfield
ABILITY_RLF_CHARGE_FOR_CURRENT_LIFE                           = ConvertAbilityRealLevelField(FourCC('Cmg3')) ---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_DRAINED                                = ConvertAbilityRealLevelField(FourCC('Ndr1')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_POINTS_DRAINED                               = ConvertAbilityRealLevelField(FourCC('Ndr2')) ---@type abilityreallevelfield
ABILITY_RLF_DRAIN_INTERVAL_SECONDS                            = ConvertAbilityRealLevelField(FourCC('Ndr3')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_TRANSFERRED_PER_SECOND                       = ConvertAbilityRealLevelField(FourCC('Ndr4')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_TRANSFERRED_PER_SECOND                       = ConvertAbilityRealLevelField(FourCC('Ndr5')) ---@type abilityreallevelfield
ABILITY_RLF_BONUS_LIFE_FACTOR                                 = ConvertAbilityRealLevelField(FourCC('Ndr6')) ---@type abilityreallevelfield
ABILITY_RLF_BONUS_LIFE_DECAY                                  = ConvertAbilityRealLevelField(FourCC('Ndr7')) ---@type abilityreallevelfield
ABILITY_RLF_BONUS_MANA_FACTOR                                 = ConvertAbilityRealLevelField(FourCC('Ndr8')) ---@type abilityreallevelfield
ABILITY_RLF_BONUS_MANA_DECAY                                  = ConvertAbilityRealLevelField(FourCC('Ndr9')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_MISS_PERCENT                            = ConvertAbilityRealLevelField(FourCC('Nsi2')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_MODIFIER                           = ConvertAbilityRealLevelField(FourCC('Nsi3')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_MODIFIER                             = ConvertAbilityRealLevelField(FourCC('Nsi4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_TDG1                            = ConvertAbilityRealLevelField(FourCC('Tdg1')) ---@type abilityreallevelfield
ABILITY_RLF_MEDIUM_DAMAGE_RADIUS_TDG2                         = ConvertAbilityRealLevelField(FourCC('Tdg2')) ---@type abilityreallevelfield
ABILITY_RLF_MEDIUM_DAMAGE_PER_SECOND                          = ConvertAbilityRealLevelField(FourCC('Tdg3')) ---@type abilityreallevelfield
ABILITY_RLF_SMALL_DAMAGE_RADIUS_TDG4                          = ConvertAbilityRealLevelField(FourCC('Tdg4')) ---@type abilityreallevelfield
ABILITY_RLF_SMALL_DAMAGE_PER_SECOND                           = ConvertAbilityRealLevelField(FourCC('Tdg5')) ---@type abilityreallevelfield
ABILITY_RLF_AIR_TIME_SECONDS_TSP1                             = ConvertAbilityRealLevelField(FourCC('Tsp1')) ---@type abilityreallevelfield
ABILITY_RLF_MINIMUM_HIT_INTERVAL_SECONDS                      = ConvertAbilityRealLevelField(FourCC('Tsp2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_NBF5                            = ConvertAbilityRealLevelField(FourCC('Nbf5')) ---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_RANGE                                     = ConvertAbilityRealLevelField(FourCC('Ebl1')) ---@type abilityreallevelfield
ABILITY_RLF_MINIMUM_RANGE                                     = ConvertAbilityRealLevelField(FourCC('Ebl2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_TARGET_EFK1                            = ConvertAbilityRealLevelField(FourCC('Efk1')) ---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_TOTAL_DAMAGE                              = ConvertAbilityRealLevelField(FourCC('Efk2')) ---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_SPEED_ADJUSTMENT                          = ConvertAbilityRealLevelField(FourCC('Efk4')) ---@type abilityreallevelfield
ABILITY_RLF_DECAYING_DAMAGE                                   = ConvertAbilityRealLevelField(FourCC('Esh1')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_FACTOR_ESH2                        = ConvertAbilityRealLevelField(FourCC('Esh2')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_FACTOR_ESH3                          = ConvertAbilityRealLevelField(FourCC('Esh3')) ---@type abilityreallevelfield
ABILITY_RLF_DECAY_POWER                                       = ConvertAbilityRealLevelField(FourCC('Esh4')) ---@type abilityreallevelfield
ABILITY_RLF_INITIAL_DAMAGE_ESH5                               = ConvertAbilityRealLevelField(FourCC('Esh5')) ---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_LIFE_ABSORBED                             = ConvertAbilityRealLevelField(FourCC('abs1')) ---@type abilityreallevelfield
ABILITY_RLF_MAXIMUM_MANA_ABSORBED                             = ConvertAbilityRealLevelField(FourCC('abs2')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_INCREASE_BSK1                      = ConvertAbilityRealLevelField(FourCC('bsk1')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_INCREASE_BSK2                        = ConvertAbilityRealLevelField(FourCC('bsk2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_TAKEN_INCREASE                             = ConvertAbilityRealLevelField(FourCC('bsk3')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_PER_UNIT                                     = ConvertAbilityRealLevelField(FourCC('dvm1')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_PER_UNIT                                     = ConvertAbilityRealLevelField(FourCC('dvm2')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_PER_BUFF                                     = ConvertAbilityRealLevelField(FourCC('dvm3')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_PER_BUFF                                     = ConvertAbilityRealLevelField(FourCC('dvm4')) ---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_DVM5                         = ConvertAbilityRealLevelField(FourCC('dvm5')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_FAK1                                 = ConvertAbilityRealLevelField(FourCC('fak1')) ---@type abilityreallevelfield
ABILITY_RLF_MEDIUM_DAMAGE_FACTOR_FAK2                         = ConvertAbilityRealLevelField(FourCC('fak2')) ---@type abilityreallevelfield
ABILITY_RLF_SMALL_DAMAGE_FACTOR_FAK3                          = ConvertAbilityRealLevelField(FourCC('fak3')) ---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_RADIUS_FAK4                           = ConvertAbilityRealLevelField(FourCC('fak4')) ---@type abilityreallevelfield
ABILITY_RLF_HALF_DAMAGE_RADIUS_FAK5                           = ConvertAbilityRealLevelField(FourCC('fak5')) ---@type abilityreallevelfield
ABILITY_RLF_EXTRA_DAMAGE_PER_SECOND                           = ConvertAbilityRealLevelField(FourCC('liq1')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_LIQ2                     = ConvertAbilityRealLevelField(FourCC('liq2')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_LIQ3                       = ConvertAbilityRealLevelField(FourCC('liq3')) ---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_FACTOR                               = ConvertAbilityRealLevelField(FourCC('mim1')) ---@type abilityreallevelfield
ABILITY_RLF_UNIT_DAMAGE_PER_MANA_POINT                        = ConvertAbilityRealLevelField(FourCC('mfl1')) ---@type abilityreallevelfield
ABILITY_RLF_HERO_DAMAGE_PER_MANA_POINT                        = ConvertAbilityRealLevelField(FourCC('mfl2')) ---@type abilityreallevelfield
ABILITY_RLF_UNIT_MAXIMUM_DAMAGE                               = ConvertAbilityRealLevelField(FourCC('mfl3')) ---@type abilityreallevelfield
ABILITY_RLF_HERO_MAXIMUM_DAMAGE                               = ConvertAbilityRealLevelField(FourCC('mfl4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_COOLDOWN                                   = ConvertAbilityRealLevelField(FourCC('mfl5')) ---@type abilityreallevelfield
ABILITY_RLF_DISTRIBUTED_DAMAGE_FACTOR_SPL1                    = ConvertAbilityRealLevelField(FourCC('spl1')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_REGENERATED                                  = ConvertAbilityRealLevelField(FourCC('irl1')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_REGENERATED                                  = ConvertAbilityRealLevelField(FourCC('irl2')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_LOSS_PER_UNIT_IDC1                           = ConvertAbilityRealLevelField(FourCC('idc1')) ---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DAMAGE_IDC2                         = ConvertAbilityRealLevelField(FourCC('idc2')) ---@type abilityreallevelfield
ABILITY_RLF_ACTIVATION_DELAY_IMO2                             = ConvertAbilityRealLevelField(FourCC('imo2')) ---@type abilityreallevelfield
ABILITY_RLF_LURE_INTERVAL_SECONDS                             = ConvertAbilityRealLevelField(FourCC('imo3')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_ISR1                                 = ConvertAbilityRealLevelField(FourCC('isr1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_REDUCTION_ISR2                             = ConvertAbilityRealLevelField(FourCC('isr2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_IPV1                                 = ConvertAbilityRealLevelField(FourCC('ipv1')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_STEAL_AMOUNT                                 = ConvertAbilityRealLevelField(FourCC('ipv2')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_RESTORED_FACTOR                              = ConvertAbilityRealLevelField(FourCC('ast1')) ---@type abilityreallevelfield
ABILITY_RLF_MANA_RESTORED_FACTOR                              = ConvertAbilityRealLevelField(FourCC('ast2')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACH_DELAY                                      = ConvertAbilityRealLevelField(FourCC('gra1')) ---@type abilityreallevelfield
ABILITY_RLF_REMOVE_DELAY                                      = ConvertAbilityRealLevelField(FourCC('gra2')) ---@type abilityreallevelfield
ABILITY_RLF_HERO_REGENERATION_DELAY                           = ConvertAbilityRealLevelField(FourCC('Nsa2')) ---@type abilityreallevelfield
ABILITY_RLF_UNIT_REGENERATION_DELAY                           = ConvertAbilityRealLevelField(FourCC('Nsa3')) ---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_NSA4                       = ConvertAbilityRealLevelField(FourCC('Nsa4')) ---@type abilityreallevelfield
ABILITY_RLF_HIT_POINTS_PER_SECOND_NSA5                        = ConvertAbilityRealLevelField(FourCC('Nsa5')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_TO_SUMMONED_UNITS_IXS1                     = ConvertAbilityRealLevelField(FourCC('Ixs1')) ---@type abilityreallevelfield
ABILITY_RLF_MAGIC_DAMAGE_REDUCTION_IXS2                       = ConvertAbilityRealLevelField(FourCC('Ixs2')) ---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DURATION                            = ConvertAbilityRealLevelField(FourCC('Npa6')) ---@type abilityreallevelfield
ABILITY_RLF_SHIELD_COOLDOWN_TIME                              = ConvertAbilityRealLevelField(FourCC('Nse1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_NDO1                            = ConvertAbilityRealLevelField(FourCC('Ndo1')) ---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_UNIT_DURATION_SECONDS_NDO3               = ConvertAbilityRealLevelField(FourCC('Ndo3')) ---@type abilityreallevelfield
ABILITY_RLF_MEDIUM_DAMAGE_RADIUS_FLK1                         = ConvertAbilityRealLevelField(FourCC('flk1')) ---@type abilityreallevelfield
ABILITY_RLF_SMALL_DAMAGE_RADIUS_FLK2                          = ConvertAbilityRealLevelField(FourCC('flk2')) ---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_AMOUNT_FLK3                           = ConvertAbilityRealLevelField(FourCC('flk3')) ---@type abilityreallevelfield
ABILITY_RLF_MEDIUM_DAMAGE_AMOUNT                              = ConvertAbilityRealLevelField(FourCC('flk4')) ---@type abilityreallevelfield
ABILITY_RLF_SMALL_DAMAGE_AMOUNT                               = ConvertAbilityRealLevelField(FourCC('flk5')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_HBN1             = ConvertAbilityRealLevelField(FourCC('Hbn1')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_HBN2               = ConvertAbilityRealLevelField(FourCC('Hbn2')) ---@type abilityreallevelfield
ABILITY_RLF_MAX_MANA_DRAINED_UNITS                            = ConvertAbilityRealLevelField(FourCC('fbk1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RATIO_UNITS_PERCENT                        = ConvertAbilityRealLevelField(FourCC('fbk2')) ---@type abilityreallevelfield
ABILITY_RLF_MAX_MANA_DRAINED_HEROS                            = ConvertAbilityRealLevelField(FourCC('fbk3')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RATIO_HEROS_PERCENT                        = ConvertAbilityRealLevelField(FourCC('fbk4')) ---@type abilityreallevelfield
ABILITY_RLF_SUMMONED_DAMAGE                                   = ConvertAbilityRealLevelField(FourCC('fbk5')) ---@type abilityreallevelfield
ABILITY_RLF_DISTRIBUTED_DAMAGE_FACTOR_NCA1                    = ConvertAbilityRealLevelField(FourCC('nca1')) ---@type abilityreallevelfield
ABILITY_RLF_INITIAL_DAMAGE_PXF1                               = ConvertAbilityRealLevelField(FourCC('pxf1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_PXF2                            = ConvertAbilityRealLevelField(FourCC('pxf2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PER_SECOND_MLS1                            = ConvertAbilityRealLevelField(FourCC('mls1')) ---@type abilityreallevelfield
ABILITY_RLF_BEAST_COLLISION_RADIUS                            = ConvertAbilityRealLevelField(FourCC('Nst2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_AMOUNT_NST3                                = ConvertAbilityRealLevelField(FourCC('Nst3')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_RADIUS                                     = ConvertAbilityRealLevelField(FourCC('Nst4')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_DELAY                                      = ConvertAbilityRealLevelField(FourCC('Nst5')) ---@type abilityreallevelfield
ABILITY_RLF_FOLLOW_THROUGH_TIME                               = ConvertAbilityRealLevelField(FourCC('Ncl1')) ---@type abilityreallevelfield
ABILITY_RLF_ART_DURATION                                      = ConvertAbilityRealLevelField(FourCC('Ncl4')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_NAB1             = ConvertAbilityRealLevelField(FourCC('Nab1')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_NAB2               = ConvertAbilityRealLevelField(FourCC('Nab2')) ---@type abilityreallevelfield
ABILITY_RLF_PRIMARY_DAMAGE                                    = ConvertAbilityRealLevelField(FourCC('Nab4')) ---@type abilityreallevelfield
ABILITY_RLF_SECONDARY_DAMAGE                                  = ConvertAbilityRealLevelField(FourCC('Nab5')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INTERVAL_NAB6                              = ConvertAbilityRealLevelField(FourCC('Nab6')) ---@type abilityreallevelfield
ABILITY_RLF_GOLD_COST_FACTOR                                  = ConvertAbilityRealLevelField(FourCC('Ntm1')) ---@type abilityreallevelfield
ABILITY_RLF_LUMBER_COST_FACTOR                                = ConvertAbilityRealLevelField(FourCC('Ntm2')) ---@type abilityreallevelfield
ABILITY_RLF_MOVE_SPEED_BONUS_NEG1                             = ConvertAbilityRealLevelField(FourCC('Neg1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_BONUS_NEG2                                 = ConvertAbilityRealLevelField(FourCC('Neg2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_AMOUNT_NCS1                                = ConvertAbilityRealLevelField(FourCC('Ncs1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_INTERVAL_NCS2                              = ConvertAbilityRealLevelField(FourCC('Ncs2')) ---@type abilityreallevelfield
ABILITY_RLF_MAX_DAMAGE_NCS4                                   = ConvertAbilityRealLevelField(FourCC('Ncs4')) ---@type abilityreallevelfield
ABILITY_RLF_BUILDING_DAMAGE_FACTOR_NCS5                       = ConvertAbilityRealLevelField(FourCC('Ncs5')) ---@type abilityreallevelfield
ABILITY_RLF_EFFECT_DURATION                                   = ConvertAbilityRealLevelField(FourCC('Ncs6')) ---@type abilityreallevelfield
ABILITY_RLF_SPAWN_INTERVAL_NSY1                               = ConvertAbilityRealLevelField(FourCC('Nsy1')) ---@type abilityreallevelfield
ABILITY_RLF_SPAWN_UNIT_DURATION                               = ConvertAbilityRealLevelField(FourCC('Nsy3')) ---@type abilityreallevelfield
ABILITY_RLF_SPAWN_UNIT_OFFSET                                 = ConvertAbilityRealLevelField(FourCC('Nsy4')) ---@type abilityreallevelfield
ABILITY_RLF_LEASH_RANGE_NSY5                                  = ConvertAbilityRealLevelField(FourCC('Nsy5')) ---@type abilityreallevelfield
ABILITY_RLF_SPAWN_INTERVAL_NFY1                               = ConvertAbilityRealLevelField(FourCC('Nfy1')) ---@type abilityreallevelfield
ABILITY_RLF_LEASH_RANGE_NFY2                                  = ConvertAbilityRealLevelField(FourCC('Nfy2')) ---@type abilityreallevelfield
ABILITY_RLF_CHANCE_TO_DEMOLISH                                = ConvertAbilityRealLevelField(FourCC('Nde1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_MULTIPLIER_BUILDINGS                       = ConvertAbilityRealLevelField(FourCC('Nde2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_MULTIPLIER_UNITS                           = ConvertAbilityRealLevelField(FourCC('Nde3')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_MULTIPLIER_HEROES                          = ConvertAbilityRealLevelField(FourCC('Nde4')) ---@type abilityreallevelfield
ABILITY_RLF_BONUS_DAMAGE_MULTIPLIER                           = ConvertAbilityRealLevelField(FourCC('Nic1')) ---@type abilityreallevelfield
ABILITY_RLF_DEATH_DAMAGE_FULL_AMOUNT                          = ConvertAbilityRealLevelField(FourCC('Nic2')) ---@type abilityreallevelfield
ABILITY_RLF_DEATH_DAMAGE_FULL_AREA                            = ConvertAbilityRealLevelField(FourCC('Nic3')) ---@type abilityreallevelfield
ABILITY_RLF_DEATH_DAMAGE_HALF_AMOUNT                          = ConvertAbilityRealLevelField(FourCC('Nic4')) ---@type abilityreallevelfield
ABILITY_RLF_DEATH_DAMAGE_HALF_AREA                            = ConvertAbilityRealLevelField(FourCC('Nic5')) ---@type abilityreallevelfield
ABILITY_RLF_DEATH_DAMAGE_DELAY                                = ConvertAbilityRealLevelField(FourCC('Nic6')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_AMOUNT_NSO1                                = ConvertAbilityRealLevelField(FourCC('Nso1')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PERIOD                                     = ConvertAbilityRealLevelField(FourCC('Nso2')) ---@type abilityreallevelfield
ABILITY_RLF_DAMAGE_PENALTY                                    = ConvertAbilityRealLevelField(FourCC('Nso3')) ---@type abilityreallevelfield
ABILITY_RLF_MOVEMENT_SPEED_REDUCTION_PERCENT_NSO4             = ConvertAbilityRealLevelField(FourCC('Nso4')) ---@type abilityreallevelfield
ABILITY_RLF_ATTACK_SPEED_REDUCTION_PERCENT_NSO5               = ConvertAbilityRealLevelField(FourCC('Nso5')) ---@type abilityreallevelfield
ABILITY_RLF_SPLIT_DELAY                                       = ConvertAbilityRealLevelField(FourCC('Nlm2')) ---@type abilityreallevelfield
ABILITY_RLF_MAX_HITPOINT_FACTOR                               = ConvertAbilityRealLevelField(FourCC('Nlm4')) ---@type abilityreallevelfield
ABILITY_RLF_LIFE_DURATION_SPLIT_BONUS                         = ConvertAbilityRealLevelField(FourCC('Nlm5')) ---@type abilityreallevelfield
ABILITY_RLF_WAVE_INTERVAL                                     = ConvertAbilityRealLevelField(FourCC('Nvc3')) ---@type abilityreallevelfield
ABILITY_RLF_BUILDING_DAMAGE_FACTOR_NVC4                       = ConvertAbilityRealLevelField(FourCC('Nvc4')) ---@type abilityreallevelfield
ABILITY_RLF_FULL_DAMAGE_AMOUNT_NVC5                           = ConvertAbilityRealLevelField(FourCC('Nvc5')) ---@type abilityreallevelfield
ABILITY_RLF_HALF_DAMAGE_FACTOR                                = ConvertAbilityRealLevelField(FourCC('Nvc6')) ---@type abilityreallevelfield
ABILITY_RLF_INTERVAL_BETWEEN_PULSES                           = ConvertAbilityRealLevelField(FourCC('Tau5')) ---@type abilityreallevelfield

ABILITY_BLF_PERCENT_BONUS_HAB2            = ConvertAbilityBooleanLevelField(FourCC('Hab2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_USE_TELEPORT_CLUSTERING_HMT3  = ConvertAbilityBooleanLevelField(FourCC('Hmt3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_NEVER_MISS_OCR5               = ConvertAbilityBooleanLevelField(FourCC('Ocr5')) ---@type abilitybooleanlevelfield
ABILITY_BLF_EXCLUDE_ITEM_DAMAGE           = ConvertAbilityBooleanLevelField(FourCC('Ocr6')) ---@type abilitybooleanlevelfield
ABILITY_BLF_BACKSTAB_DAMAGE               = ConvertAbilityBooleanLevelField(FourCC('Owk4')) ---@type abilitybooleanlevelfield
ABILITY_BLF_INHERIT_UPGRADES_UAN3         = ConvertAbilityBooleanLevelField(FourCC('Uan3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_MANA_CONVERSION_AS_PERCENT    = ConvertAbilityBooleanLevelField(FourCC('Udp3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_LIFE_CONVERSION_AS_PERCENT    = ConvertAbilityBooleanLevelField(FourCC('Udp4')) ---@type abilitybooleanlevelfield
ABILITY_BLF_LEAVE_TARGET_ALIVE            = ConvertAbilityBooleanLevelField(FourCC('Udp5')) ---@type abilitybooleanlevelfield
ABILITY_BLF_PERCENT_BONUS_UAU3            = ConvertAbilityBooleanLevelField(FourCC('Uau3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_DAMAGE_IS_PERCENT_RECEIVED    = ConvertAbilityBooleanLevelField(FourCC('Eah2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_MELEE_BONUS                   = ConvertAbilityBooleanLevelField(FourCC('Ear2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_RANGED_BONUS                  = ConvertAbilityBooleanLevelField(FourCC('Ear3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_FLAT_BONUS                    = ConvertAbilityBooleanLevelField(FourCC('Ear4')) ---@type abilitybooleanlevelfield
ABILITY_BLF_NEVER_MISS_HBH5               = ConvertAbilityBooleanLevelField(FourCC('Hbh5')) ---@type abilitybooleanlevelfield
ABILITY_BLF_PERCENT_BONUS_HAD2            = ConvertAbilityBooleanLevelField(FourCC('Had2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_CAN_DEACTIVATE                = ConvertAbilityBooleanLevelField(FourCC('Hds1')) ---@type abilitybooleanlevelfield
ABILITY_BLF_RAISED_UNITS_ARE_INVULNERABLE = ConvertAbilityBooleanLevelField(FourCC('Hre2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_PERCENTAGE_OAR2               = ConvertAbilityBooleanLevelField(FourCC('Oar2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_SUMMON_BUSY_UNITS             = ConvertAbilityBooleanLevelField(FourCC('Btl2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_CREATES_BLIGHT                = ConvertAbilityBooleanLevelField(FourCC('Bli2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_EXPLODES_ON_DEATH             = ConvertAbilityBooleanLevelField(FourCC('Sds6')) ---@type abilitybooleanlevelfield
ABILITY_BLF_ALWAYS_AUTOCAST_FAE2          = ConvertAbilityBooleanLevelField(FourCC('Fae2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_REGENERATE_ONLY_AT_NIGHT      = ConvertAbilityBooleanLevelField(FourCC('Mbt5')) ---@type abilitybooleanlevelfield
ABILITY_BLF_SHOW_SELECT_UNIT_BUTTON       = ConvertAbilityBooleanLevelField(FourCC('Neu3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_SHOW_UNIT_INDICATOR           = ConvertAbilityBooleanLevelField(FourCC('Neu4')) ---@type abilitybooleanlevelfield
ABILITY_BLF_CHARGE_OWNING_PLAYER          = ConvertAbilityBooleanLevelField(FourCC('Ans6')) ---@type abilitybooleanlevelfield
ABILITY_BLF_PERCENTAGE_ARM2               = ConvertAbilityBooleanLevelField(FourCC('Arm2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_TARGET_IS_INVULNERABLE        = ConvertAbilityBooleanLevelField(FourCC('Pos3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_TARGET_IS_MAGIC_IMMUNE        = ConvertAbilityBooleanLevelField(FourCC('Pos4')) ---@type abilitybooleanlevelfield
ABILITY_BLF_KILL_ON_CASTER_DEATH          = ConvertAbilityBooleanLevelField(FourCC('Ucb6')) ---@type abilitybooleanlevelfield
ABILITY_BLF_NO_TARGET_REQUIRED_REJ4       = ConvertAbilityBooleanLevelField(FourCC('Rej4')) ---@type abilitybooleanlevelfield
ABILITY_BLF_ACCEPTS_GOLD                  = ConvertAbilityBooleanLevelField(FourCC('Rtn1')) ---@type abilitybooleanlevelfield
ABILITY_BLF_ACCEPTS_LUMBER                = ConvertAbilityBooleanLevelField(FourCC('Rtn2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_PREFER_HOSTILES_ROA5          = ConvertAbilityBooleanLevelField(FourCC('Roa5')) ---@type abilitybooleanlevelfield
ABILITY_BLF_PREFER_FRIENDLIES_ROA6        = ConvertAbilityBooleanLevelField(FourCC('Roa6')) ---@type abilitybooleanlevelfield
ABILITY_BLF_ROOTED_TURNING                = ConvertAbilityBooleanLevelField(FourCC('Roo3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_ALWAYS_AUTOCAST_SLO3          = ConvertAbilityBooleanLevelField(FourCC('Slo3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_HIDE_BUTTON                   = ConvertAbilityBooleanLevelField(FourCC('Ihid')) ---@type abilitybooleanlevelfield
ABILITY_BLF_USE_TELEPORT_CLUSTERING_ITP2  = ConvertAbilityBooleanLevelField(FourCC('Itp2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_IMMUNE_TO_MORPH_EFFECTS       = ConvertAbilityBooleanLevelField(FourCC('Eth1')) ---@type abilitybooleanlevelfield
ABILITY_BLF_DOES_NOT_BLOCK_BUILDINGS      = ConvertAbilityBooleanLevelField(FourCC('Eth2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_AUTO_ACQUIRE_ATTACK_TARGETS   = ConvertAbilityBooleanLevelField(FourCC('Gho1')) ---@type abilitybooleanlevelfield
ABILITY_BLF_IMMUNE_TO_MORPH_EFFECTS_GHO2  = ConvertAbilityBooleanLevelField(FourCC('Gho2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_DO_NOT_BLOCK_BUILDINGS        = ConvertAbilityBooleanLevelField(FourCC('Gho3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_INCLUDE_RANGED_DAMAGE         = ConvertAbilityBooleanLevelField(FourCC('Ssk4')) ---@type abilitybooleanlevelfield
ABILITY_BLF_INCLUDE_MELEE_DAMAGE          = ConvertAbilityBooleanLevelField(FourCC('Ssk5')) ---@type abilitybooleanlevelfield
ABILITY_BLF_MOVE_TO_PARTNER               = ConvertAbilityBooleanLevelField(FourCC('coa2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_CAN_BE_DISPELLED              = ConvertAbilityBooleanLevelField(FourCC('cyc1')) ---@type abilitybooleanlevelfield
ABILITY_BLF_IGNORE_FRIENDLY_BUFFS         = ConvertAbilityBooleanLevelField(FourCC('dvm6')) ---@type abilitybooleanlevelfield
ABILITY_BLF_DROP_ITEMS_ON_DEATH           = ConvertAbilityBooleanLevelField(FourCC('inv2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_CAN_USE_ITEMS                 = ConvertAbilityBooleanLevelField(FourCC('inv3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_CAN_GET_ITEMS                 = ConvertAbilityBooleanLevelField(FourCC('inv4')) ---@type abilitybooleanlevelfield
ABILITY_BLF_CAN_DROP_ITEMS                = ConvertAbilityBooleanLevelField(FourCC('inv5')) ---@type abilitybooleanlevelfield
ABILITY_BLF_REPAIRS_ALLOWED               = ConvertAbilityBooleanLevelField(FourCC('liq4')) ---@type abilitybooleanlevelfield
ABILITY_BLF_CASTER_ONLY_SPLASH            = ConvertAbilityBooleanLevelField(FourCC('mfl6')) ---@type abilitybooleanlevelfield
ABILITY_BLF_NO_TARGET_REQUIRED_IRL4       = ConvertAbilityBooleanLevelField(FourCC('irl4')) ---@type abilitybooleanlevelfield
ABILITY_BLF_DISPEL_ON_ATTACK              = ConvertAbilityBooleanLevelField(FourCC('irl5')) ---@type abilitybooleanlevelfield
ABILITY_BLF_AMOUNT_IS_RAW_VALUE           = ConvertAbilityBooleanLevelField(FourCC('ipv3')) ---@type abilitybooleanlevelfield
ABILITY_BLF_SHARED_SPELL_COOLDOWN         = ConvertAbilityBooleanLevelField(FourCC('spb2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_SLEEP_ONCE                    = ConvertAbilityBooleanLevelField(FourCC('sla1')) ---@type abilitybooleanlevelfield
ABILITY_BLF_ALLOW_ON_ANY_PLAYER_SLOT      = ConvertAbilityBooleanLevelField(FourCC('sla2')) ---@type abilitybooleanlevelfield
ABILITY_BLF_DISABLE_OTHER_ABILITIES       = ConvertAbilityBooleanLevelField(FourCC('Ncl5')) ---@type abilitybooleanlevelfield
ABILITY_BLF_ALLOW_BOUNTY                  = ConvertAbilityBooleanLevelField(FourCC('Ntm4')) ---@type abilitybooleanlevelfield

ABILITY_SLF_ICON_NORMAL                    = ConvertAbilityStringLevelField(FourCC('aart')) ---@type abilitystringlevelfield
ABILITY_SLF_CASTER                         = ConvertAbilityStringLevelField(FourCC('acat')) ---@type abilitystringlevelfield
ABILITY_SLF_TARGET                         = ConvertAbilityStringLevelField(FourCC('atat')) ---@type abilitystringlevelfield
ABILITY_SLF_SPECIAL                        = ConvertAbilityStringLevelField(FourCC('asat')) ---@type abilitystringlevelfield
ABILITY_SLF_EFFECT                         = ConvertAbilityStringLevelField(FourCC('aeat')) ---@type abilitystringlevelfield
ABILITY_SLF_AREA_EFFECT                    = ConvertAbilityStringLevelField(FourCC('aaea')) ---@type abilitystringlevelfield
ABILITY_SLF_LIGHTNING_EFFECTS              = ConvertAbilityStringLevelField(FourCC('alig')) ---@type abilitystringlevelfield
ABILITY_SLF_MISSILE_ART                    = ConvertAbilityStringLevelField(FourCC('amat')) ---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_LEARN                  = ConvertAbilityStringLevelField(FourCC('aret')) ---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_LEARN_EXTENDED         = ConvertAbilityStringLevelField(FourCC('arut')) ---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_NORMAL                 = ConvertAbilityStringLevelField(FourCC('atp1')) ---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_TURN_OFF               = ConvertAbilityStringLevelField(FourCC('aut1')) ---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_NORMAL_EXTENDED        = ConvertAbilityStringLevelField(FourCC('aub1')) ---@type abilitystringlevelfield
ABILITY_SLF_TOOLTIP_TURN_OFF_EXTENDED      = ConvertAbilityStringLevelField(FourCC('auu1')) ---@type abilitystringlevelfield
ABILITY_SLF_NORMAL_FORM_UNIT_EME1          = ConvertAbilityStringLevelField(FourCC('Eme1')) ---@type abilitystringlevelfield
ABILITY_SLF_SPAWNED_UNITS                  = ConvertAbilityStringLevelField(FourCC('Ndp1')) ---@type abilitystringlevelfield
ABILITY_SLF_ABILITY_FOR_UNIT_CREATION      = ConvertAbilityStringLevelField(FourCC('Nrc1')) ---@type abilitystringlevelfield
ABILITY_SLF_NORMAL_FORM_UNIT_MIL1          = ConvertAbilityStringLevelField(FourCC('Mil1')) ---@type abilitystringlevelfield
ABILITY_SLF_ALTERNATE_FORM_UNIT_MIL2       = ConvertAbilityStringLevelField(FourCC('Mil2')) ---@type abilitystringlevelfield
ABILITY_SLF_BASE_ORDER_ID_ANS5             = ConvertAbilityStringLevelField(FourCC('Ans5')) ---@type abilitystringlevelfield
ABILITY_SLF_MORPH_UNITS_GROUND             = ConvertAbilityStringLevelField(FourCC('Ply2')) ---@type abilitystringlevelfield
ABILITY_SLF_MORPH_UNITS_AIR                = ConvertAbilityStringLevelField(FourCC('Ply3')) ---@type abilitystringlevelfield
ABILITY_SLF_MORPH_UNITS_AMPHIBIOUS         = ConvertAbilityStringLevelField(FourCC('Ply4')) ---@type abilitystringlevelfield
ABILITY_SLF_MORPH_UNITS_WATER              = ConvertAbilityStringLevelField(FourCC('Ply5')) ---@type abilitystringlevelfield
ABILITY_SLF_UNIT_TYPE_ONE                  = ConvertAbilityStringLevelField(FourCC('Rai3')) ---@type abilitystringlevelfield
ABILITY_SLF_UNIT_TYPE_TWO                  = ConvertAbilityStringLevelField(FourCC('Rai4')) ---@type abilitystringlevelfield
ABILITY_SLF_UNIT_TYPE_SOD2                 = ConvertAbilityStringLevelField(FourCC('Sod2')) ---@type abilitystringlevelfield
ABILITY_SLF_SUMMON_1_UNIT_TYPE             = ConvertAbilityStringLevelField(FourCC('Ist1')) ---@type abilitystringlevelfield
ABILITY_SLF_SUMMON_2_UNIT_TYPE             = ConvertAbilityStringLevelField(FourCC('Ist2')) ---@type abilitystringlevelfield
ABILITY_SLF_RACE_TO_CONVERT                = ConvertAbilityStringLevelField(FourCC('Ndc1')) ---@type abilitystringlevelfield
ABILITY_SLF_PARTNER_UNIT_TYPE              = ConvertAbilityStringLevelField(FourCC('coa1')) ---@type abilitystringlevelfield
ABILITY_SLF_PARTNER_UNIT_TYPE_ONE          = ConvertAbilityStringLevelField(FourCC('dcp1')) ---@type abilitystringlevelfield
ABILITY_SLF_PARTNER_UNIT_TYPE_TWO          = ConvertAbilityStringLevelField(FourCC('dcp2')) ---@type abilitystringlevelfield
ABILITY_SLF_REQUIRED_UNIT_TYPE             = ConvertAbilityStringLevelField(FourCC('tpi1')) ---@type abilitystringlevelfield
ABILITY_SLF_CONVERTED_UNIT_TYPE            = ConvertAbilityStringLevelField(FourCC('tpi2')) ---@type abilitystringlevelfield
ABILITY_SLF_SPELL_LIST                     = ConvertAbilityStringLevelField(FourCC('spb1')) ---@type abilitystringlevelfield
ABILITY_SLF_BASE_ORDER_ID_SPB5             = ConvertAbilityStringLevelField(FourCC('spb5')) ---@type abilitystringlevelfield
ABILITY_SLF_BASE_ORDER_ID_NCL6             = ConvertAbilityStringLevelField(FourCC('Ncl6')) ---@type abilitystringlevelfield
ABILITY_SLF_ABILITY_UPGRADE_1              = ConvertAbilityStringLevelField(FourCC('Neg3')) ---@type abilitystringlevelfield
ABILITY_SLF_ABILITY_UPGRADE_2              = ConvertAbilityStringLevelField(FourCC('Neg4')) ---@type abilitystringlevelfield
ABILITY_SLF_ABILITY_UPGRADE_3              = ConvertAbilityStringLevelField(FourCC('Neg5')) ---@type abilitystringlevelfield
ABILITY_SLF_ABILITY_UPGRADE_4              = ConvertAbilityStringLevelField(FourCC('Neg6')) ---@type abilitystringlevelfield
ABILITY_SLF_SPAWN_UNIT_ID_NSY2             = ConvertAbilityStringLevelField(FourCC('Nsy2')) ---@type abilitystringlevelfield

-- Item
ITEM_IF_LEVEL                 = ConvertItemIntegerField(FourCC('ilev')) ---@type itemintegerfield
ITEM_IF_NUMBER_OF_CHARGES     = ConvertItemIntegerField(FourCC('iuse')) ---@type itemintegerfield
ITEM_IF_COOLDOWN_GROUP        = ConvertItemIntegerField(FourCC('icid')) ---@type itemintegerfield
ITEM_IF_MAX_HIT_POINTS        = ConvertItemIntegerField(FourCC('ihtp')) ---@type itemintegerfield
ITEM_IF_HIT_POINTS            = ConvertItemIntegerField(FourCC('ihpc')) ---@type itemintegerfield
ITEM_IF_PRIORITY              = ConvertItemIntegerField(FourCC('ipri')) ---@type itemintegerfield
ITEM_IF_ARMOR_TYPE            = ConvertItemIntegerField(FourCC('iarm')) ---@type itemintegerfield
ITEM_IF_TINTING_COLOR_RED     = ConvertItemIntegerField(FourCC('iclr')) ---@type itemintegerfield
ITEM_IF_TINTING_COLOR_GREEN   = ConvertItemIntegerField(FourCC('iclg')) ---@type itemintegerfield
ITEM_IF_TINTING_COLOR_BLUE    = ConvertItemIntegerField(FourCC('iclb')) ---@type itemintegerfield
ITEM_IF_TINTING_COLOR_ALPHA   = ConvertItemIntegerField(FourCC('ical')) ---@type itemintegerfield

ITEM_RF_SCALING_VALUE            = ConvertItemRealField(FourCC('isca')) ---@type itemrealfield

ITEM_BF_DROPPED_WHEN_CARRIER_DIES         = ConvertItemBooleanField(FourCC('idrp')) ---@type itembooleanfield
ITEM_BF_CAN_BE_DROPPED                    = ConvertItemBooleanField(FourCC('idro')) ---@type itembooleanfield
ITEM_BF_PERISHABLE                        = ConvertItemBooleanField(FourCC('iper')) ---@type itembooleanfield
ITEM_BF_INCLUDE_AS_RANDOM_CHOICE          = ConvertItemBooleanField(FourCC('iprn')) ---@type itembooleanfield
ITEM_BF_USE_AUTOMATICALLY_WHEN_ACQUIRED   = ConvertItemBooleanField(FourCC('ipow')) ---@type itembooleanfield
ITEM_BF_CAN_BE_SOLD_TO_MERCHANTS          = ConvertItemBooleanField(FourCC('ipaw')) ---@type itembooleanfield
ITEM_BF_ACTIVELY_USED                     = ConvertItemBooleanField(FourCC('iusa')) ---@type itembooleanfield

ITEM_SF_MODEL_USED                         = ConvertItemStringField(FourCC('ifil')) ---@type itemstringfield

-- Unit
UNIT_IF_DEFENSE_TYPE                          = ConvertUnitIntegerField(FourCC('udty')) ---@type unitintegerfield
UNIT_IF_ARMOR_TYPE                            = ConvertUnitIntegerField(FourCC('uarm')) ---@type unitintegerfield
UNIT_IF_LOOPING_FADE_IN_RATE                  = ConvertUnitIntegerField(FourCC('ulfi')) ---@type unitintegerfield
UNIT_IF_LOOPING_FADE_OUT_RATE                 = ConvertUnitIntegerField(FourCC('ulfo')) ---@type unitintegerfield
UNIT_IF_AGILITY                               = ConvertUnitIntegerField(FourCC('uagc')) ---@type unitintegerfield
UNIT_IF_INTELLIGENCE                          = ConvertUnitIntegerField(FourCC('uinc')) ---@type unitintegerfield
UNIT_IF_STRENGTH                              = ConvertUnitIntegerField(FourCC('ustc')) ---@type unitintegerfield
UNIT_IF_AGILITY_PERMANENT                     = ConvertUnitIntegerField(FourCC('uagm')) ---@type unitintegerfield
UNIT_IF_INTELLIGENCE_PERMANENT                = ConvertUnitIntegerField(FourCC('uinm')) ---@type unitintegerfield
UNIT_IF_STRENGTH_PERMANENT                    = ConvertUnitIntegerField(FourCC('ustm')) ---@type unitintegerfield
UNIT_IF_AGILITY_WITH_BONUS                    = ConvertUnitIntegerField(FourCC('uagb')) ---@type unitintegerfield
UNIT_IF_INTELLIGENCE_WITH_BONUS               = ConvertUnitIntegerField(FourCC('uinb')) ---@type unitintegerfield
UNIT_IF_STRENGTH_WITH_BONUS                   = ConvertUnitIntegerField(FourCC('ustb')) ---@type unitintegerfield
UNIT_IF_GOLD_BOUNTY_AWARDED_NUMBER_OF_DICE    = ConvertUnitIntegerField(FourCC('ubdi')) ---@type unitintegerfield
UNIT_IF_GOLD_BOUNTY_AWARDED_BASE              = ConvertUnitIntegerField(FourCC('ubba')) ---@type unitintegerfield
UNIT_IF_GOLD_BOUNTY_AWARDED_SIDES_PER_DIE     = ConvertUnitIntegerField(FourCC('ubsi')) ---@type unitintegerfield
UNIT_IF_LUMBER_BOUNTY_AWARDED_NUMBER_OF_DICE  = ConvertUnitIntegerField(FourCC('ulbd')) ---@type unitintegerfield
UNIT_IF_LUMBER_BOUNTY_AWARDED_BASE            = ConvertUnitIntegerField(FourCC('ulba')) ---@type unitintegerfield
UNIT_IF_LUMBER_BOUNTY_AWARDED_SIDES_PER_DIE   = ConvertUnitIntegerField(FourCC('ulbs')) ---@type unitintegerfield
UNIT_IF_LEVEL                                 = ConvertUnitIntegerField(FourCC('ulev')) ---@type unitintegerfield
UNIT_IF_FORMATION_RANK                        = ConvertUnitIntegerField(FourCC('ufor')) ---@type unitintegerfield
UNIT_IF_ORIENTATION_INTERPOLATION             = ConvertUnitIntegerField(FourCC('uori')) ---@type unitintegerfield
UNIT_IF_ELEVATION_SAMPLE_POINTS               = ConvertUnitIntegerField(FourCC('uept')) ---@type unitintegerfield
UNIT_IF_TINTING_COLOR_RED                     = ConvertUnitIntegerField(FourCC('uclr')) ---@type unitintegerfield
UNIT_IF_TINTING_COLOR_GREEN                   = ConvertUnitIntegerField(FourCC('uclg')) ---@type unitintegerfield
UNIT_IF_TINTING_COLOR_BLUE                    = ConvertUnitIntegerField(FourCC('uclb')) ---@type unitintegerfield
UNIT_IF_TINTING_COLOR_ALPHA                   = ConvertUnitIntegerField(FourCC('ucal')) ---@type unitintegerfield
UNIT_IF_MOVE_TYPE                             = ConvertUnitIntegerField(FourCC('umvt')) ---@type unitintegerfield
UNIT_IF_TARGETED_AS                           = ConvertUnitIntegerField(FourCC('utar')) ---@type unitintegerfield
UNIT_IF_UNIT_CLASSIFICATION                   = ConvertUnitIntegerField(FourCC('utyp')) ---@type unitintegerfield
UNIT_IF_HIT_POINTS_REGENERATION_TYPE          = ConvertUnitIntegerField(FourCC('uhrt')) ---@type unitintegerfield
UNIT_IF_PLACEMENT_PREVENTED_BY                = ConvertUnitIntegerField(FourCC('upar')) ---@type unitintegerfield
UNIT_IF_PRIMARY_ATTRIBUTE                     = ConvertUnitIntegerField(FourCC('upra')) ---@type unitintegerfield

UNIT_RF_STRENGTH_PER_LEVEL                       = ConvertUnitRealField(FourCC('ustp')) ---@type unitrealfield
UNIT_RF_AGILITY_PER_LEVEL                        = ConvertUnitRealField(FourCC('uagp')) ---@type unitrealfield
UNIT_RF_INTELLIGENCE_PER_LEVEL                   = ConvertUnitRealField(FourCC('uinp')) ---@type unitrealfield
UNIT_RF_HIT_POINTS_REGENERATION_RATE             = ConvertUnitRealField(FourCC('uhpr')) ---@type unitrealfield
UNIT_RF_MANA_REGENERATION                        = ConvertUnitRealField(FourCC('umpr')) ---@type unitrealfield
UNIT_RF_DEATH_TIME                               = ConvertUnitRealField(FourCC('udtm')) ---@type unitrealfield
UNIT_RF_FLY_HEIGHT                               = ConvertUnitRealField(FourCC('ufyh')) ---@type unitrealfield
UNIT_RF_TURN_RATE                                = ConvertUnitRealField(FourCC('umvr')) ---@type unitrealfield
UNIT_RF_ELEVATION_SAMPLE_RADIUS                  = ConvertUnitRealField(FourCC('uerd')) ---@type unitrealfield
UNIT_RF_FOG_OF_WAR_SAMPLE_RADIUS                 = ConvertUnitRealField(FourCC('ufrd')) ---@type unitrealfield
UNIT_RF_MAXIMUM_PITCH_ANGLE_DEGREES              = ConvertUnitRealField(FourCC('umxp')) ---@type unitrealfield
UNIT_RF_MAXIMUM_ROLL_ANGLE_DEGREES               = ConvertUnitRealField(FourCC('umxr')) ---@type unitrealfield
UNIT_RF_SCALING_VALUE                            = ConvertUnitRealField(FourCC('usca')) ---@type unitrealfield
UNIT_RF_ANIMATION_RUN_SPEED                      = ConvertUnitRealField(FourCC('urun')) ---@type unitrealfield
UNIT_RF_SELECTION_SCALE                          = ConvertUnitRealField(FourCC('ussc')) ---@type unitrealfield
UNIT_RF_SELECTION_CIRCLE_HEIGHT                  = ConvertUnitRealField(FourCC('uslz')) ---@type unitrealfield
UNIT_RF_SHADOW_IMAGE_HEIGHT                      = ConvertUnitRealField(FourCC('ushh')) ---@type unitrealfield
UNIT_RF_SHADOW_IMAGE_WIDTH                       = ConvertUnitRealField(FourCC('ushw')) ---@type unitrealfield
UNIT_RF_SHADOW_IMAGE_CENTER_X                    = ConvertUnitRealField(FourCC('ushx')) ---@type unitrealfield
UNIT_RF_SHADOW_IMAGE_CENTER_Y                    = ConvertUnitRealField(FourCC('ushy')) ---@type unitrealfield
UNIT_RF_ANIMATION_WALK_SPEED                     = ConvertUnitRealField(FourCC('uwal')) ---@type unitrealfield
UNIT_RF_DEFENSE                                  = ConvertUnitRealField(FourCC('udfc')) ---@type unitrealfield
UNIT_RF_SIGHT_RADIUS                             = ConvertUnitRealField(FourCC('usir')) ---@type unitrealfield
UNIT_RF_PRIORITY                                 = ConvertUnitRealField(FourCC('upri')) ---@type unitrealfield
UNIT_RF_SPEED                                    = ConvertUnitRealField(FourCC('umvc')) ---@type unitrealfield
UNIT_RF_OCCLUDER_HEIGHT                          = ConvertUnitRealField(FourCC('uocc')) ---@type unitrealfield
UNIT_RF_HP                                       = ConvertUnitRealField(FourCC('uhpc')) ---@type unitrealfield
UNIT_RF_MANA                                     = ConvertUnitRealField(FourCC('umpc')) ---@type unitrealfield
UNIT_RF_ACQUISITION_RANGE                        = ConvertUnitRealField(FourCC('uacq')) ---@type unitrealfield
UNIT_RF_CAST_BACK_SWING                          = ConvertUnitRealField(FourCC('ucbs')) ---@type unitrealfield
UNIT_RF_CAST_POINT                               = ConvertUnitRealField(FourCC('ucpt')) ---@type unitrealfield
UNIT_RF_MINIMUM_ATTACK_RANGE                     = ConvertUnitRealField(FourCC('uamn')) ---@type unitrealfield

UNIT_BF_RAISABLE                              = ConvertUnitBooleanField(FourCC('urai')) ---@type unitbooleanfield
UNIT_BF_DECAYABLE                             = ConvertUnitBooleanField(FourCC('udec')) ---@type unitbooleanfield
UNIT_BF_IS_A_BUILDING                         = ConvertUnitBooleanField(FourCC('ubdg')) ---@type unitbooleanfield
UNIT_BF_USE_EXTENDED_LINE_OF_SIGHT            = ConvertUnitBooleanField(FourCC('ulos')) ---@type unitbooleanfield
UNIT_BF_NEUTRAL_BUILDING_SHOWS_MINIMAP_ICON   = ConvertUnitBooleanField(FourCC('unbm')) ---@type unitbooleanfield
UNIT_BF_HERO_HIDE_HERO_INTERFACE_ICON         = ConvertUnitBooleanField(FourCC('uhhb')) ---@type unitbooleanfield
UNIT_BF_HERO_HIDE_HERO_MINIMAP_DISPLAY        = ConvertUnitBooleanField(FourCC('uhhm')) ---@type unitbooleanfield
UNIT_BF_HERO_HIDE_HERO_DEATH_MESSAGE          = ConvertUnitBooleanField(FourCC('uhhd')) ---@type unitbooleanfield
UNIT_BF_HIDE_MINIMAP_DISPLAY                  = ConvertUnitBooleanField(FourCC('uhom')) ---@type unitbooleanfield
UNIT_BF_SCALE_PROJECTILES                     = ConvertUnitBooleanField(FourCC('uscb')) ---@type unitbooleanfield
UNIT_BF_SELECTION_CIRCLE_ON_WATER             = ConvertUnitBooleanField(FourCC('usew')) ---@type unitbooleanfield
UNIT_BF_HAS_WATER_SHADOW                      = ConvertUnitBooleanField(FourCC('ushr')) ---@type unitbooleanfield

UNIT_SF_NAME                   = ConvertUnitStringField(FourCC('unam')) ---@type unitstringfield
UNIT_SF_PROPER_NAMES           = ConvertUnitStringField(FourCC('upro')) ---@type unitstringfield
UNIT_SF_GROUND_TEXTURE         = ConvertUnitStringField(FourCC('uubs')) ---@type unitstringfield
UNIT_SF_SHADOW_IMAGE_UNIT      = ConvertUnitStringField(FourCC('ushu')) ---@type unitstringfield

-- Unit Weapon
UNIT_WEAPON_IF_ATTACK_DAMAGE_NUMBER_OF_DICE     = ConvertUnitWeaponIntegerField(FourCC('ua1d')) ---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_DAMAGE_BASE               = ConvertUnitWeaponIntegerField(FourCC('ua1b')) ---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_DAMAGE_SIDES_PER_DIE      = ConvertUnitWeaponIntegerField(FourCC('ua1s')) ---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_MAXIMUM_NUMBER_OF_TARGETS = ConvertUnitWeaponIntegerField(FourCC('utc1')) ---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_ATTACK_TYPE               = ConvertUnitWeaponIntegerField(FourCC('ua1t')) ---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_WEAPON_SOUND              = ConvertUnitWeaponIntegerField(FourCC('ucs1')) ---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_AREA_OF_EFFECT_TARGETS    = ConvertUnitWeaponIntegerField(FourCC('ua1p')) ---@type unitweaponintegerfield
UNIT_WEAPON_IF_ATTACK_TARGETS_ALLOWED           = ConvertUnitWeaponIntegerField(FourCC('ua1g')) ---@type unitweaponintegerfield

UNIT_WEAPON_RF_ATTACK_BACKSWING_POINT              = ConvertUnitWeaponRealField(FourCC('ubs1')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_POINT                 = ConvertUnitWeaponRealField(FourCC('udp1')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_BASE_COOLDOWN                = ConvertUnitWeaponRealField(FourCC('ua1c')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_LOSS_FACTOR           = ConvertUnitWeaponRealField(FourCC('udl1')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_MEDIUM         = ConvertUnitWeaponRealField(FourCC('uhd1')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_FACTOR_SMALL          = ConvertUnitWeaponRealField(FourCC('uqd1')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_DISTANCE        = ConvertUnitWeaponRealField(FourCC('usd1')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_DAMAGE_SPILL_RADIUS          = ConvertUnitWeaponRealField(FourCC('usr1')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_PROJECTILE_SPEED             = ConvertUnitWeaponRealField(FourCC('ua1z')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_PROJECTILE_ARC               = ConvertUnitWeaponRealField(FourCC('uma1')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_FULL_DAMAGE   = ConvertUnitWeaponRealField(FourCC('ua1f')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_MEDIUM_DAMAGE = ConvertUnitWeaponRealField(FourCC('ua1h')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_AREA_OF_EFFECT_SMALL_DAMAGE  = ConvertUnitWeaponRealField(FourCC('ua1q')) ---@type unitweaponrealfield
UNIT_WEAPON_RF_ATTACK_RANGE                        = ConvertUnitWeaponRealField(FourCC('ua1r')) ---@type unitweaponrealfield

UNIT_WEAPON_BF_ATTACK_SHOW_UI                   = ConvertUnitWeaponBooleanField(FourCC('uwu1')) ---@type unitweaponbooleanfield
UNIT_WEAPON_BF_ATTACKS_ENABLED                  = ConvertUnitWeaponBooleanField(FourCC('uaen')) ---@type unitweaponbooleanfield
UNIT_WEAPON_BF_ATTACK_PROJECTILE_HOMING_ENABLED = ConvertUnitWeaponBooleanField(FourCC('umh1')) ---@type unitweaponbooleanfield

UNIT_WEAPON_SF_ATTACK_PROJECTILE_ART             = ConvertUnitWeaponStringField(FourCC('ua1m')) ---@type unitweaponstringfield

-- Move Type
MOVE_TYPE_UNKNOWN               = ConvertMoveType(0) ---@type movetype
MOVE_TYPE_FOOT                  = ConvertMoveType(1) ---@type movetype
MOVE_TYPE_FLY                   = ConvertMoveType(2) ---@type movetype
MOVE_TYPE_HORSE                 = ConvertMoveType(4) ---@type movetype
MOVE_TYPE_HOVER                 = ConvertMoveType(8) ---@type movetype
MOVE_TYPE_FLOAT                 = ConvertMoveType(16) ---@type movetype
MOVE_TYPE_AMPHIBIOUS            = ConvertMoveType(32) ---@type movetype
MOVE_TYPE_UNBUILDABLE           = ConvertMoveType(64) ---@type movetype

-- Target Flag
TARGET_FLAG_NONE                = ConvertTargetFlag(1) ---@type targetflag
TARGET_FLAG_GROUND              = ConvertTargetFlag(2) ---@type targetflag
TARGET_FLAG_AIR                 = ConvertTargetFlag(4) ---@type targetflag
TARGET_FLAG_STRUCTURE           = ConvertTargetFlag(8) ---@type targetflag
TARGET_FLAG_WARD                = ConvertTargetFlag(16) ---@type targetflag
TARGET_FLAG_ITEM                = ConvertTargetFlag(32) ---@type targetflag
TARGET_FLAG_TREE                = ConvertTargetFlag(64) ---@type targetflag
TARGET_FLAG_WALL                = ConvertTargetFlag(128) ---@type targetflag
TARGET_FLAG_DEBRIS              = ConvertTargetFlag(256) ---@type targetflag
TARGET_FLAG_DECORATION          = ConvertTargetFlag(512) ---@type targetflag
TARGET_FLAG_BRIDGE              = ConvertTargetFlag(1024) ---@type targetflag

-- defense type
DEFENSE_TYPE_LIGHT              = ConvertDefenseType(0) ---@type defensetype
DEFENSE_TYPE_MEDIUM             = ConvertDefenseType(1) ---@type defensetype
DEFENSE_TYPE_LARGE              = ConvertDefenseType(2) ---@type defensetype
DEFENSE_TYPE_FORT               = ConvertDefenseType(3) ---@type defensetype
DEFENSE_TYPE_NORMAL             = ConvertDefenseType(4) ---@type defensetype
DEFENSE_TYPE_HERO               = ConvertDefenseType(5) ---@type defensetype
DEFENSE_TYPE_DIVINE             = ConvertDefenseType(6) ---@type defensetype
DEFENSE_TYPE_NONE               = ConvertDefenseType(7) ---@type defensetype

-- Hero Attribute
HERO_ATTRIBUTE_STR              = ConvertHeroAttribute(1) ---@type heroattribute
HERO_ATTRIBUTE_INT              = ConvertHeroAttribute(2) ---@type heroattribute
HERO_ATTRIBUTE_AGI              = ConvertHeroAttribute(3) ---@type heroattribute

-- Armor Type
ARMOR_TYPE_WHOKNOWS             = ConvertArmorType(0) ---@type armortype
ARMOR_TYPE_FLESH                = ConvertArmorType(1) ---@type armortype
ARMOR_TYPE_METAL                = ConvertArmorType(2) ---@type armortype
ARMOR_TYPE_WOOD                 = ConvertArmorType(3) ---@type armortype
ARMOR_TYPE_ETHREAL              = ConvertArmorType(4) ---@type armortype
ARMOR_TYPE_STONE                = ConvertArmorType(5) ---@type armortype

-- Regeneration Type
REGENERATION_TYPE_NONE          = ConvertRegenType(0) ---@type regentype
REGENERATION_TYPE_ALWAYS        = ConvertRegenType(1) ---@type regentype
REGENERATION_TYPE_BLIGHT        = ConvertRegenType(2) ---@type regentype
REGENERATION_TYPE_DAY           = ConvertRegenType(3) ---@type regentype
REGENERATION_TYPE_NIGHT         = ConvertRegenType(4) ---@type regentype

-- Unit Category
UNIT_CATEGORY_GIANT             = ConvertUnitCategory(1) ---@type unitcategory
UNIT_CATEGORY_UNDEAD            = ConvertUnitCategory(2) ---@type unitcategory
UNIT_CATEGORY_SUMMONED          = ConvertUnitCategory(4) ---@type unitcategory
UNIT_CATEGORY_MECHANICAL        = ConvertUnitCategory(8) ---@type unitcategory
UNIT_CATEGORY_PEON              = ConvertUnitCategory(16) ---@type unitcategory
UNIT_CATEGORY_SAPPER            = ConvertUnitCategory(32) ---@type unitcategory
UNIT_CATEGORY_TOWNHALL          = ConvertUnitCategory(64) ---@type unitcategory
UNIT_CATEGORY_ANCIENT           = ConvertUnitCategory(128) ---@type unitcategory
UNIT_CATEGORY_NEUTRAL           = ConvertUnitCategory(256) ---@type unitcategory
UNIT_CATEGORY_WARD              = ConvertUnitCategory(512) ---@type unitcategory
UNIT_CATEGORY_STANDON           = ConvertUnitCategory(1024) ---@type unitcategory
UNIT_CATEGORY_TAUREN            = ConvertUnitCategory(2048) ---@type unitcategory

-- Pathing Flag
PATHING_FLAG_UNWALKABLE             = ConvertPathingFlag(2) ---@type pathingflag
PATHING_FLAG_UNFLYABLE              = ConvertPathingFlag(4) ---@type pathingflag
PATHING_FLAG_UNBUILDABLE            = ConvertPathingFlag(8) ---@type pathingflag
PATHING_FLAG_UNPEONHARVEST          = ConvertPathingFlag(16) ---@type pathingflag
PATHING_FLAG_BLIGHTED               = ConvertPathingFlag(32) ---@type pathingflag
PATHING_FLAG_UNFLOATABLE            = ConvertPathingFlag(64) ---@type pathingflag
PATHING_FLAG_UNAMPHIBIOUS           = ConvertPathingFlag(128) ---@type pathingflag
PATHING_FLAG_UNITEMPLACABLE         = ConvertPathingFlag(256) ---@type pathingflag



--============================================================================
-- MathAPI
---@param degrees real
---@return real
function Deg2Rad(degrees) end

---@param radians real
---@return real
function Rad2Deg(radians) end


---@param radians real
---@return real
function Sin(radians) end

---@param radians real
---@return real
function Cos(radians) end

---@param radians real
---@return real
function Tan(radians) end


-- Expect values between -1 and 1...returns 0 for invalid input
---@param y real
---@return real
function Asin(y) end

---@param x real
---@return real
function Acos(x) end


---@param x real
---@return real
function Atan(x) end


-- Returns 0 if x and y are both 0
---@param y real
---@param x real
---@return real
function Atan2(y, x) end


-- Returns 0 if x <= 0
---@param x real
---@return real
function SquareRoot(x) end


-- computes x to the y power
-- y == 0.0             => 1
-- x ==0.0 and y < 0    => 0
--
---@param x real
---@param power real
---@return real
function Pow(x, power) end


--============================================================================
-- String Utility API
---@param i integer
---@return real
function I2R(i) end

---@param r real
---@return integer
function R2I(r) end

---@param i integer
---@return string
function I2S(i) end

---@param r real
---@return string
function R2S(r) end

---@param r real
---@param width integer
---@param precision integer
---@return string
function R2SW(r, width, precision) end

---@param s string
---@return integer
function S2I(s) end

---@param s string
---@return real
function S2R(s) end

---@param h handle
---@return integer
function GetHandleId(h) end

---@param source string
---@param start integer
---@param ending integer
---@return string
function SubString(source, start, ending) end

---@param s string
---@return integer
function StringLength(s) end

---@param source string
---@param upper boolean
---@return string
function StringCase(source, upper) end

---@param s string
---@return integer
function StringHash(s) end


---@param source string
---@return string
function GetLocalizedString(source) end

---@param source string
---@return integer
function GetLocalizedHotkey(source) end


--============================================================================
-- Map Setup API
--
--  These are  functions for describing the map configuration
--  these funcs should only be used in the "config" function of
--  a map script. The functions should also be called in this order
--  ( i.e. call SetPlayers before SetPlayerColor...
--

---@param name string
function SetMapName(name) end

---@param description string
function SetMapDescription(description) end


---@param teamcount integer
function SetTeams(teamcount) end

---@param playercount integer
function SetPlayers(playercount) end


---@param whichStartLoc integer
---@param x real
---@param y real
function DefineStartLocation(whichStartLoc, x, y) end

---@param whichStartLoc integer
---@param whichLocation location
function DefineStartLocationLoc(whichStartLoc, whichLocation) end

---@param whichStartLoc integer
---@param prioSlotCount integer
function SetStartLocPrioCount(whichStartLoc, prioSlotCount) end

---@param whichStartLoc integer
---@param prioSlotIndex integer
---@param otherStartLocIndex integer
---@param priority startlocprio
function SetStartLocPrio(whichStartLoc, prioSlotIndex, otherStartLocIndex, priority) end

---@param whichStartLoc integer
---@param prioSlotIndex integer
---@return integer
function GetStartLocPrioSlot(whichStartLoc, prioSlotIndex) end

---@param whichStartLoc integer
---@param prioSlotIndex integer
---@return startlocprio
function GetStartLocPrio(whichStartLoc, prioSlotIndex) end


---@param whichGameType gametype
---@param value boolean
function SetGameTypeSupported(whichGameType, value) end

---@param whichMapFlag mapflag
---@param value boolean
function SetMapFlag(whichMapFlag, value) end

---@param whichPlacementType placement
function SetGamePlacement(whichPlacementType) end

---@param whichspeed gamespeed
function SetGameSpeed(whichspeed) end

---@param whichdifficulty gamedifficulty
function SetGameDifficulty(whichdifficulty) end

---@param whichdensity mapdensity
function SetResourceDensity(whichdensity) end

---@param whichdensity mapdensity
function SetCreatureDensity(whichdensity) end


---@return integer
function GetTeams() end

---@return integer
function GetPlayers() end


---@param whichGameType gametype
---@return boolean
function IsGameTypeSupported(whichGameType) end

---@return gametype
function GetGameTypeSelected() end

---@param whichMapFlag mapflag
---@return boolean
function IsMapFlagSet(whichMapFlag) end


---@return placement
function GetGamePlacement() end

---@return gamespeed
function GetGameSpeed() end

---@return gamedifficulty
function GetGameDifficulty() end

---@return mapdensity
function GetResourceDensity() end

---@return mapdensity
function GetCreatureDensity() end

---@param whichStartLocation integer
---@return real
function GetStartLocationX(whichStartLocation) end

---@param whichStartLocation integer
---@return real
function GetStartLocationY(whichStartLocation) end

---@param whichStartLocation integer
---@return location
function GetStartLocationLoc(whichStartLocation) end



---@param whichPlayer player
---@param whichTeam integer
function SetPlayerTeam(whichPlayer, whichTeam) end

---@param whichPlayer player
---@param startLocIndex integer
function SetPlayerStartLocation(whichPlayer, startLocIndex) end

-- forces player to have the specified start loc and marks the start loc as occupied
-- which removes it from consideration for subsequently placed players
-- ( i.e. you can use this to put people in a fixed loc and then
--   use random placement for any unplaced players etc )
---@param whichPlayer player
---@param startLocIndex integer
function ForcePlayerStartLocation(whichPlayer, startLocIndex) end

---@param whichPlayer player
---@param color playercolor
function SetPlayerColor(whichPlayer, color) end

---@param sourcePlayer player
---@param otherPlayer player
---@param whichAllianceSetting alliancetype
---@param value boolean
function SetPlayerAlliance(sourcePlayer, otherPlayer, whichAllianceSetting, value) end

---@param sourcePlayer player
---@param otherPlayer player
---@param whichResource playerstate
---@param rate integer
function SetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource, rate) end

---@param whichPlayer player
---@param whichRacePreference racepreference
function SetPlayerRacePreference(whichPlayer, whichRacePreference) end

---@param whichPlayer player
---@param value boolean
function SetPlayerRaceSelectable(whichPlayer, value) end

---@param whichPlayer player
---@param controlType mapcontrol
function SetPlayerController(whichPlayer, controlType) end

---@param whichPlayer player
---@param name string
function SetPlayerName(whichPlayer, name) end


---@param whichPlayer player
---@param flag boolean
function SetPlayerOnScoreScreen(whichPlayer, flag) end


---@param whichPlayer player
---@return integer
function GetPlayerTeam(whichPlayer) end

---@param whichPlayer player
---@return integer
function GetPlayerStartLocation(whichPlayer) end

---@param whichPlayer player
---@return playercolor
function GetPlayerColor(whichPlayer) end

---@param whichPlayer player
---@return boolean
function GetPlayerSelectable(whichPlayer) end

---@param whichPlayer player
---@return mapcontrol
function GetPlayerController(whichPlayer) end

---@param whichPlayer player
---@return playerslotstate
function GetPlayerSlotState(whichPlayer) end

---@param sourcePlayer player
---@param otherPlayer player
---@param whichResource playerstate
---@return integer
function GetPlayerTaxRate(sourcePlayer, otherPlayer, whichResource) end

---@param whichPlayer player
---@param pref racepreference
---@return boolean
function IsPlayerRacePrefSet(whichPlayer, pref) end

---@param whichPlayer player
---@return string
function GetPlayerName(whichPlayer) end


--============================================================================
-- Timer API
--
---@return timer
function CreateTimer() end

---@param whichTimer timer
function DestroyTimer(whichTimer) end

---@param whichTimer timer
---@param timeout real
---@param periodic boolean
---@param handlerFunc code
function TimerStart(whichTimer, timeout, periodic, handlerFunc) end

---@param whichTimer timer
---@return real
function TimerGetElapsed(whichTimer) end

---@param whichTimer timer
---@return real
function TimerGetRemaining(whichTimer) end

---@param whichTimer timer
---@return real
function TimerGetTimeout(whichTimer) end

---@param whichTimer timer
function PauseTimer(whichTimer) end

---@param whichTimer timer
function ResumeTimer(whichTimer) end

---@return timer
function GetExpiredTimer() end


--============================================================================
-- Group API
--
---@return group
function CreateGroup() end

---@param whichGroup group
function DestroyGroup(whichGroup) end

---@param whichGroup group
---@param whichUnit unit
---@return boolean
function GroupAddUnit(whichGroup, whichUnit) end

---@param whichGroup group
---@param whichUnit unit
---@return boolean
function GroupRemoveUnit(whichGroup, whichUnit) end

---@param whichGroup group
---@param addGroup group
---@return integer
function BlzGroupAddGroupFast(whichGroup, addGroup) end

---@param whichGroup group
---@param removeGroup group
---@return integer
function BlzGroupRemoveGroupFast(whichGroup, removeGroup) end

---@param whichGroup group
function GroupClear(whichGroup) end

---@param whichGroup group
---@return integer
function BlzGroupGetSize(whichGroup) end

---@param whichGroup group
---@param index integer
---@return unit
function BlzGroupUnitAt(whichGroup, index) end

---@param whichGroup group
---@param unitname string
---@param filter boolexpr
function GroupEnumUnitsOfType(whichGroup, unitname, filter) end

---@param whichGroup group
---@param whichPlayer player
---@param filter boolexpr
function GroupEnumUnitsOfPlayer(whichGroup, whichPlayer, filter) end

---@param whichGroup group
---@param unitname string
---@param filter boolexpr
---@param countLimit integer
function GroupEnumUnitsOfTypeCounted(whichGroup, unitname, filter, countLimit) end

---@param whichGroup group
---@param r rect
---@param filter boolexpr
function GroupEnumUnitsInRect(whichGroup, r, filter) end

---@param whichGroup group
---@param r rect
---@param filter boolexpr
---@param countLimit integer
function GroupEnumUnitsInRectCounted(whichGroup, r, filter, countLimit) end

---@param whichGroup group
---@param x real
---@param y real
---@param radius real
---@param filter boolexpr
function GroupEnumUnitsInRange(whichGroup, x, y, radius, filter) end

---@param whichGroup group
---@param whichLocation location
---@param radius real
---@param filter boolexpr
function GroupEnumUnitsInRangeOfLoc(whichGroup, whichLocation, radius, filter) end

---@param whichGroup group
---@param x real
---@param y real
---@param radius real
---@param filter boolexpr
---@param countLimit integer
function GroupEnumUnitsInRangeCounted(whichGroup, x, y, radius, filter, countLimit) end

---@param whichGroup group
---@param whichLocation location
---@param radius real
---@param filter boolexpr
---@param countLimit integer
function GroupEnumUnitsInRangeOfLocCounted(whichGroup, whichLocation, radius, filter, countLimit) end

---@param whichGroup group
---@param whichPlayer player
---@param filter boolexpr
function GroupEnumUnitsSelected(whichGroup, whichPlayer, filter) end


---@param whichGroup group
---@param order string
---@return boolean
function GroupImmediateOrder(whichGroup, order) end

---@param whichGroup group
---@param order integer
---@return boolean
function GroupImmediateOrderById(whichGroup, order) end

---@param whichGroup group
---@param order string
---@param x real
---@param y real
---@return boolean
function GroupPointOrder(whichGroup, order, x, y) end

---@param whichGroup group
---@param order string
---@param whichLocation location
---@return boolean
function GroupPointOrderLoc(whichGroup, order, whichLocation) end

---@param whichGroup group
---@param order integer
---@param x real
---@param y real
---@return boolean
function GroupPointOrderById(whichGroup, order, x, y) end

---@param whichGroup group
---@param order integer
---@param whichLocation location
---@return boolean
function GroupPointOrderByIdLoc(whichGroup, order, whichLocation) end

---@param whichGroup group
---@param order string
---@param targetWidget widget
---@return boolean
function GroupTargetOrder(whichGroup, order, targetWidget) end

---@param whichGroup group
---@param order integer
---@param targetWidget widget
---@return boolean
function GroupTargetOrderById(whichGroup, order, targetWidget) end


-- This will be difficult to support with potentially disjoint, cell-based regions
-- as it would involve enumerating all the cells that are covered by a particularregion
-- a better implementation would be a trigger that adds relevant units as they enter
-- and removes them if they leave...
---@param whichGroup group
---@param callback code
function ForGroup(whichGroup, callback) end

---@param whichGroup group
---@return unit
function FirstOfGroup(whichGroup) end


--============================================================================
-- Force API
--
---@return force
function CreateForce() end

---@param whichForce force
function DestroyForce(whichForce) end

---@param whichForce force
---@param whichPlayer player
function ForceAddPlayer(whichForce, whichPlayer) end

---@param whichForce force
---@param whichPlayer player
function ForceRemovePlayer(whichForce, whichPlayer) end

---@param whichForce force
---@param whichPlayer player
---@return boolean
function BlzForceHasPlayer(whichForce, whichPlayer) end

---@param whichForce force
function ForceClear(whichForce) end

---@param whichForce force
---@param filter boolexpr
function ForceEnumPlayers(whichForce, filter) end

---@param whichForce force
---@param filter boolexpr
---@param countLimit integer
function ForceEnumPlayersCounted(whichForce, filter, countLimit) end

---@param whichForce force
---@param whichPlayer player
---@param filter boolexpr
function ForceEnumAllies(whichForce, whichPlayer, filter) end

---@param whichForce force
---@param whichPlayer player
---@param filter boolexpr
function ForceEnumEnemies(whichForce, whichPlayer, filter) end

---@param whichForce force
---@param callback code
function ForForce(whichForce, callback) end


--============================================================================
-- Region and Location API
--
---@param minx real
---@param miny real
---@param maxx real
---@param maxy real
---@return rect
function Rect(minx, miny, maxx, maxy) end

---@param min location
---@param max location
---@return rect
function RectFromLoc(min, max) end

---@param whichRect rect
function RemoveRect(whichRect) end

---@param whichRect rect
---@param minx real
---@param miny real
---@param maxx real
---@param maxy real
function SetRect(whichRect, minx, miny, maxx, maxy) end

---@param whichRect rect
---@param min location
---@param max location
function SetRectFromLoc(whichRect, min, max) end

---@param whichRect rect
---@param newCenterX real
---@param newCenterY real
function MoveRectTo(whichRect, newCenterX, newCenterY) end

---@param whichRect rect
---@param newCenterLoc location
function MoveRectToLoc(whichRect, newCenterLoc) end


---@param whichRect rect
---@return real
function GetRectCenterX(whichRect) end

---@param whichRect rect
---@return real
function GetRectCenterY(whichRect) end

---@param whichRect rect
---@return real
function GetRectMinX(whichRect) end

---@param whichRect rect
---@return real
function GetRectMinY(whichRect) end

---@param whichRect rect
---@return real
function GetRectMaxX(whichRect) end

---@param whichRect rect
---@return real
function GetRectMaxY(whichRect) end


---@return region
function CreateRegion() end

---@param whichRegion region
function RemoveRegion(whichRegion) end


---@param whichRegion region
---@param r rect
function RegionAddRect(whichRegion, r) end

---@param whichRegion region
---@param r rect
function RegionClearRect(whichRegion, r) end


---@param whichRegion region
---@param x real
---@param y real
function RegionAddCell(whichRegion, x, y) end

---@param whichRegion region
---@param whichLocation location
function RegionAddCellAtLoc(whichRegion, whichLocation) end

---@param whichRegion region
---@param x real
---@param y real
function RegionClearCell(whichRegion, x, y) end

---@param whichRegion region
---@param whichLocation location
function RegionClearCellAtLoc(whichRegion, whichLocation) end


---@param x real
---@param y real
---@return location
function Location(x, y) end

---@param whichLocation location
function RemoveLocation(whichLocation) end

---@param whichLocation location
---@param newX real
---@param newY real
function MoveLocation(whichLocation, newX, newY) end

---@param whichLocation location
---@return real
function GetLocationX(whichLocation) end

---@param whichLocation location
---@return real
function GetLocationY(whichLocation) end


-- This function is asynchronous. The values it returns are not guaranteed synchronous between each player.
--  If you attempt to use it in a synchronous manner, it may cause a desync.
---@param whichLocation location
---@return real
function GetLocationZ(whichLocation) end


---@param whichRegion region
---@param whichUnit unit
---@return boolean
function IsUnitInRegion(whichRegion, whichUnit) end

---@param whichRegion region
---@param x real
---@param y real
---@return boolean
function IsPointInRegion(whichRegion, x, y) end

---@param whichRegion region
---@param whichLocation location
---@return boolean
function IsLocationInRegion(whichRegion, whichLocation) end


-- Returns full map bounds, including unplayable borders, in world coordinates
---@return rect
function GetWorldBounds() end


--============================================================================
-- Native trigger interface
--
---@return trigger
function CreateTrigger() end

---@param whichTrigger trigger
function DestroyTrigger(whichTrigger) end

---@param whichTrigger trigger
function ResetTrigger(whichTrigger) end

---@param whichTrigger trigger
function EnableTrigger(whichTrigger) end

---@param whichTrigger trigger
function DisableTrigger(whichTrigger) end

---@param whichTrigger trigger
---@return boolean
function IsTriggerEnabled(whichTrigger) end


---@param whichTrigger trigger
---@param flag boolean
function TriggerWaitOnSleeps(whichTrigger, flag) end

---@param whichTrigger trigger
---@return boolean
function IsTriggerWaitOnSleeps(whichTrigger) end


---@return unit
function GetFilterUnit() end

---@return unit
function GetEnumUnit() end


---@return destructable
function GetFilterDestructable() end

---@return destructable
function GetEnumDestructable() end


---@return item
function GetFilterItem() end

---@return item
function GetEnumItem() end


---@return player
function GetFilterPlayer() end

---@return player
function GetEnumPlayer() end


---@return trigger
function GetTriggeringTrigger() end

---@return eventid
function GetTriggerEventId() end

---@param whichTrigger trigger
---@return integer
function GetTriggerEvalCount(whichTrigger) end

---@param whichTrigger trigger
---@return integer
function GetTriggerExecCount(whichTrigger) end


---@param funcName string
function ExecuteFunc(funcName) end


--============================================================================
-- Boolean Expr API ( for compositing trigger conditions and unit filter funcs...)
--============================================================================
---@param operandA boolexpr
---@param operandB boolexpr
---@return boolexpr
function And(operandA, operandB) end

---@param operandA boolexpr
---@param operandB boolexpr
---@return boolexpr
function Or(operandA, operandB) end

---@param operand boolexpr
---@return boolexpr
function Not(operand) end

---@param func code
---@return conditionfunc
function Condition(func) end

---@param c conditionfunc
function DestroyCondition(c) end

---@param func code
---@return filterfunc
function Filter(func) end

---@param f filterfunc
function DestroyFilter(f) end

---@param e boolexpr
function DestroyBoolExpr(e) end


--============================================================================
-- Trigger Game Event API
--============================================================================

---@param whichTrigger trigger
---@param varName string
---@param opcode limitop
---@param limitval real
---@return event
function TriggerRegisterVariableEvent(whichTrigger, varName, opcode, limitval) end


-- EVENT_GAME_VARIABLE_LIMIT
--  string GetTriggeringVariableName takes nothing returns string

-- Creates it's own timer and triggers when it expires
---@param whichTrigger trigger
---@param timeout real
---@param periodic boolean
---@return event
function TriggerRegisterTimerEvent(whichTrigger, timeout, periodic) end


-- Triggers when the timer you tell it about expires
---@param whichTrigger trigger
---@param t timer
---@return event
function TriggerRegisterTimerExpireEvent(whichTrigger, t) end


---@param whichTrigger trigger
---@param whichState gamestate
---@param opcode limitop
---@param limitval real
---@return event
function TriggerRegisterGameStateEvent(whichTrigger, whichState, opcode, limitval) end


---@param whichTrigger trigger
---@param whichDialog dialog
---@return event
function TriggerRegisterDialogEvent(whichTrigger, whichDialog) end

---@param whichTrigger trigger
---@param whichButton button
---@return event
function TriggerRegisterDialogButtonEvent(whichTrigger, whichButton) end


--  EVENT_GAME_STATE_LIMIT
---@return gamestate
function GetEventGameState() end


---@param whichTrigger trigger
---@param whichGameEvent gameevent
---@return event
function TriggerRegisterGameEvent(whichTrigger, whichGameEvent) end


-- EVENT_GAME_VICTORY
---@return player
function GetWinningPlayer() end



---@param whichTrigger trigger
---@param whichRegion region
---@param filter boolexpr
---@return event
function TriggerRegisterEnterRegion(whichTrigger, whichRegion, filter) end


-- EVENT_GAME_ENTER_REGION
---@return region
function GetTriggeringRegion() end

---@return unit
function GetEnteringUnit() end


-- EVENT_GAME_LEAVE_REGION

---@param whichTrigger trigger
---@param whichRegion region
---@param filter boolexpr
---@return event
function TriggerRegisterLeaveRegion(whichTrigger, whichRegion, filter) end

---@return unit
function GetLeavingUnit() end


---@param whichTrigger trigger
---@param t trackable
---@return event
function TriggerRegisterTrackableHitEvent(whichTrigger, t) end

---@param whichTrigger trigger
---@param t trackable
---@return event
function TriggerRegisterTrackableTrackEvent(whichTrigger, t) end


-- EVENT_GAME_TRACKABLE_HIT
-- EVENT_GAME_TRACKABLE_TRACK
---@return trackable
function GetTriggeringTrackable() end


-- EVENT_DIALOG_BUTTON_CLICK
---@return button
function GetClickedButton() end

---@return dialog
function GetClickedDialog() end


-- EVENT_GAME_TOURNAMENT_FINISH_SOON
---@return real
function GetTournamentFinishSoonTimeRemaining() end

---@return integer
function GetTournamentFinishNowRule() end

---@return player
function GetTournamentFinishNowPlayer() end

---@param whichPlayer player
---@return integer
function GetTournamentScore(whichPlayer) end


-- EVENT_GAME_SAVE
---@return string
function GetSaveBasicFilename() end


--============================================================================
-- Trigger Player Based Event API
--============================================================================

---@param whichTrigger trigger
---@param whichPlayer player
---@param whichPlayerEvent playerevent
---@return event
function TriggerRegisterPlayerEvent(whichTrigger, whichPlayer, whichPlayerEvent) end


-- EVENT_PLAYER_DEFEAT
-- EVENT_PLAYER_VICTORY
---@return player
function GetTriggerPlayer() end


---@param whichTrigger trigger
---@param whichPlayer player
---@param whichPlayerUnitEvent playerunitevent
---@param filter boolexpr
---@return event
function TriggerRegisterPlayerUnitEvent(whichTrigger, whichPlayer, whichPlayerUnitEvent, filter) end


-- EVENT_PLAYER_HERO_LEVEL
-- EVENT_UNIT_HERO_LEVEL
---@return unit
function GetLevelingUnit() end


-- EVENT_PLAYER_HERO_SKILL
-- EVENT_UNIT_HERO_SKILL
---@return unit
function GetLearningUnit() end

---@return integer
function GetLearnedSkill() end

---@return integer
function GetLearnedSkillLevel() end


-- EVENT_PLAYER_HERO_REVIVABLE
---@return unit
function GetRevivableUnit() end


-- EVENT_PLAYER_HERO_REVIVE_START
-- EVENT_PLAYER_HERO_REVIVE_CANCEL
-- EVENT_PLAYER_HERO_REVIVE_FINISH
-- EVENT_UNIT_HERO_REVIVE_START
-- EVENT_UNIT_HERO_REVIVE_CANCEL
-- EVENT_UNIT_HERO_REVIVE_FINISH
---@return unit
function GetRevivingUnit() end


-- EVENT_PLAYER_UNIT_ATTACKED
---@return unit
function GetAttacker() end


-- EVENT_PLAYER_UNIT_RESCUED
---@return unit
function GetRescuer() end


-- EVENT_PLAYER_UNIT_DEATH
---@return unit
function GetDyingUnit() end

---@return unit
function GetKillingUnit() end


-- EVENT_PLAYER_UNIT_DECAY
---@return unit
function GetDecayingUnit() end


-- EVENT_PLAYER_UNIT_SELECTED
--  GetSelectedUnit takes nothing returns unit

-- EVENT_PLAYER_UNIT_CONSTRUCT_START
---@return unit
function GetConstructingStructure() end


-- EVENT_PLAYER_UNIT_CONSTRUCT_FINISH
-- EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL
---@return unit
function GetCancelledStructure() end

---@return unit
function GetConstructedStructure() end


-- EVENT_PLAYER_UNIT_RESEARCH_START
-- EVENT_PLAYER_UNIT_RESEARCH_CANCEL
-- EVENT_PLAYER_UNIT_RESEARCH_FINISH
---@return unit
function GetResearchingUnit() end

---@return integer
function GetResearched() end


-- EVENT_PLAYER_UNIT_TRAIN_START
-- EVENT_PLAYER_UNIT_TRAIN_CANCEL
---@return integer
function GetTrainedUnitType() end


-- EVENT_PLAYER_UNIT_TRAIN_FINISH
---@return unit
function GetTrainedUnit() end


-- EVENT_PLAYER_UNIT_DETECTED
---@return unit
function GetDetectedUnit() end


-- EVENT_PLAYER_UNIT_SUMMONED
---@return unit
function GetSummoningUnit() end

---@return unit
function GetSummonedUnit() end


-- EVENT_PLAYER_UNIT_LOADED
---@return unit
function GetTransportUnit() end

---@return unit
function GetLoadedUnit() end


-- EVENT_PLAYER_UNIT_SELL
---@return unit
function GetSellingUnit() end

---@return unit
function GetSoldUnit() end

---@return unit
function GetBuyingUnit() end


-- EVENT_PLAYER_UNIT_SELL_ITEM
---@return item
function GetSoldItem() end


-- EVENT_PLAYER_UNIT_CHANGE_OWNER
---@return unit
function GetChangingUnit() end

---@return player
function GetChangingUnitPrevOwner() end


-- EVENT_PLAYER_UNIT_DROP_ITEM
-- EVENT_PLAYER_UNIT_PICKUP_ITEM
-- EVENT_PLAYER_UNIT_USE_ITEM
---@return unit
function GetManipulatingUnit() end

---@return item
function GetManipulatedItem() end


-- EVENT_PLAYER_UNIT_ISSUED_ORDER
---@return unit
function GetOrderedUnit() end

---@return integer
function GetIssuedOrderId() end


-- EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER
---@return real
function GetOrderPointX() end

---@return real
function GetOrderPointY() end

---@return location
function GetOrderPointLoc() end


-- EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER
---@return widget
function GetOrderTarget() end

---@return destructable
function GetOrderTargetDestructable() end

---@return item
function GetOrderTargetItem() end

---@return unit
function GetOrderTargetUnit() end


-- EVENT_UNIT_SPELL_CHANNEL
-- EVENT_UNIT_SPELL_CAST
-- EVENT_UNIT_SPELL_EFFECT
-- EVENT_UNIT_SPELL_FINISH
-- EVENT_UNIT_SPELL_ENDCAST
-- EVENT_PLAYER_UNIT_SPELL_CHANNEL
-- EVENT_PLAYER_UNIT_SPELL_CAST
-- EVENT_PLAYER_UNIT_SPELL_EFFECT
-- EVENT_PLAYER_UNIT_SPELL_FINISH
-- EVENT_PLAYER_UNIT_SPELL_ENDCAST
---@return unit
function GetSpellAbilityUnit() end

---@return integer
function GetSpellAbilityId() end

---@return ability
function GetSpellAbility() end

---@return location
function GetSpellTargetLoc() end

---@return real
function GetSpellTargetX() end

---@return real
function GetSpellTargetY() end

---@return destructable
function GetSpellTargetDestructable() end

---@return item
function GetSpellTargetItem() end

---@return unit
function GetSpellTargetUnit() end


---@param whichTrigger trigger
---@param whichPlayer player
---@param whichAlliance alliancetype
---@return event
function TriggerRegisterPlayerAllianceChange(whichTrigger, whichPlayer, whichAlliance) end

---@param whichTrigger trigger
---@param whichPlayer player
---@param whichState playerstate
---@param opcode limitop
---@param limitval real
---@return event
function TriggerRegisterPlayerStateEvent(whichTrigger, whichPlayer, whichState, opcode, limitval) end


-- EVENT_PLAYER_STATE_LIMIT
---@return playerstate
function GetEventPlayerState() end


---@param whichTrigger trigger
---@param whichPlayer player
---@param chatMessageToDetect string
---@param exactMatchOnly boolean
---@return event
function TriggerRegisterPlayerChatEvent(whichTrigger, whichPlayer, chatMessageToDetect, exactMatchOnly) end


-- EVENT_PLAYER_CHAT

-- returns the actual string they typed in ( same as what you registered for
-- if you required exact match )
---@return string
function GetEventPlayerChatString() end


-- returns the string that you registered for
---@return string
function GetEventPlayerChatStringMatched() end


---@param whichTrigger trigger
---@param whichWidget widget
---@return event
function TriggerRegisterDeathEvent(whichTrigger, whichWidget) end


--============================================================================
-- Trigger Unit Based Event API
--============================================================================

-- returns handle to unit which triggered the most recent event when called from
-- within a trigger action function...returns null handle when used incorrectly

---@return unit
function GetTriggerUnit() end


---@param whichTrigger trigger
---@param whichUnit unit
---@param whichState unitstate
---@param opcode limitop
---@param limitval real
---@return event
function TriggerRegisterUnitStateEvent(whichTrigger, whichUnit, whichState, opcode, limitval) end


-- EVENT_UNIT_STATE_LIMIT
---@return unitstate
function GetEventUnitState() end


---@param whichTrigger trigger
---@param whichUnit unit
---@param whichEvent unitevent
---@return event
function TriggerRegisterUnitEvent(whichTrigger, whichUnit, whichEvent) end


-- EVENT_UNIT_DAMAGED
---@return real
function GetEventDamage() end

---@return unit
function GetEventDamageSource() end


-- EVENT_UNIT_DEATH
-- EVENT_UNIT_DECAY
-- Use the GetDyingUnit and GetDecayingUnit funcs above

-- EVENT_UNIT_DETECTED
---@return player
function GetEventDetectingPlayer() end


---@param whichTrigger trigger
---@param whichUnit unit
---@param whichEvent unitevent
---@param filter boolexpr
---@return event
function TriggerRegisterFilterUnitEvent(whichTrigger, whichUnit, whichEvent, filter) end


-- EVENT_UNIT_ACQUIRED_TARGET
-- EVENT_UNIT_TARGET_IN_RANGE
---@return unit
function GetEventTargetUnit() end


-- EVENT_UNIT_ATTACKED
-- Use GetAttacker from the Player Unit Event API Below...

-- EVENT_UNIT_RESCUEDED
-- Use GetRescuer from the Player Unit Event API Below...

-- EVENT_UNIT_CONSTRUCT_CANCEL
-- EVENT_UNIT_CONSTRUCT_FINISH

-- See the Player Unit Construction Event API above for event info funcs

-- EVENT_UNIT_TRAIN_START
-- EVENT_UNIT_TRAIN_CANCELLED
-- EVENT_UNIT_TRAIN_FINISH

-- See the Player Unit Training Event API above for event info funcs

-- EVENT_UNIT_SELL

-- See the Player Unit Sell Event API above for event info funcs

-- EVENT_UNIT_DROP_ITEM
-- EVENT_UNIT_PICKUP_ITEM
-- EVENT_UNIT_USE_ITEM
-- See the Player Unit/Item manipulation Event API above for event info funcs

-- EVENT_UNIT_ISSUED_ORDER
-- EVENT_UNIT_ISSUED_POINT_ORDER
-- EVENT_UNIT_ISSUED_TARGET_ORDER

-- See the Player Unit Order Event API above for event info funcs

---@param whichTrigger trigger
---@param whichUnit unit
---@param range real
---@param filter boolexpr
---@return event
function TriggerRegisterUnitInRange(whichTrigger, whichUnit, range, filter) end


---@param whichTrigger trigger
---@param condition boolexpr
---@return triggercondition
function TriggerAddCondition(whichTrigger, condition) end

---@param whichTrigger trigger
---@param whichCondition triggercondition
function TriggerRemoveCondition(whichTrigger, whichCondition) end

---@param whichTrigger trigger
function TriggerClearConditions(whichTrigger) end


---@param whichTrigger trigger
---@param actionFunc code
---@return triggeraction
function TriggerAddAction(whichTrigger, actionFunc) end

---@param whichTrigger trigger
---@param whichAction triggeraction
function TriggerRemoveAction(whichTrigger, whichAction) end

---@param whichTrigger trigger
function TriggerClearActions(whichTrigger) end

---@param timeout real
function TriggerSleepAction(timeout) end

---@param s sound
---@param offset real
function TriggerWaitForSound(s, offset) end

---@param whichTrigger trigger
---@return boolean
function TriggerEvaluate(whichTrigger) end

---@param whichTrigger trigger
function TriggerExecute(whichTrigger) end

---@param whichTrigger trigger
function TriggerExecuteWait(whichTrigger) end

function TriggerSyncStart() end

function TriggerSyncReady() end


--============================================================================
-- Widget API
---@param whichWidget widget
---@return real
function GetWidgetLife(whichWidget) end

---@param whichWidget widget
---@param newLife real
function SetWidgetLife(whichWidget, newLife) end

---@param whichWidget widget
---@return real
function GetWidgetX(whichWidget) end

---@param whichWidget widget
---@return real
function GetWidgetY(whichWidget) end

---@return widget
function GetTriggerWidget() end


--============================================================================
-- Destructable Object API
-- Facing arguments are specified in degrees
---@param objectid integer
---@param x real
---@param y real
---@param face real
---@param scale real
---@param variation integer
---@return destructable
function CreateDestructable(objectid, x, y, face, scale, variation) end

---@param objectid integer
---@param x real
---@param y real
---@param z real
---@param face real
---@param scale real
---@param variation integer
---@return destructable
function CreateDestructableZ(objectid, x, y, z, face, scale, variation) end

---@param objectid integer
---@param x real
---@param y real
---@param face real
---@param scale real
---@param variation integer
---@return destructable
function CreateDeadDestructable(objectid, x, y, face, scale, variation) end

---@param objectid integer
---@param x real
---@param y real
---@param z real
---@param face real
---@param scale real
---@param variation integer
---@return destructable
function CreateDeadDestructableZ(objectid, x, y, z, face, scale, variation) end

---@param d destructable
function RemoveDestructable(d) end

---@param d destructable
function KillDestructable(d) end

---@param d destructable
---@param flag boolean
function SetDestructableInvulnerable(d, flag) end

---@param d destructable
---@return boolean
function IsDestructableInvulnerable(d) end

---@param r rect
---@param filter boolexpr
---@param actionFunc code
function EnumDestructablesInRect(r, filter, actionFunc) end

---@param d destructable
---@return integer
function GetDestructableTypeId(d) end

---@param d destructable
---@return real
function GetDestructableX(d) end

---@param d destructable
---@return real
function GetDestructableY(d) end

---@param d destructable
---@param life real
function SetDestructableLife(d, life) end

---@param d destructable
---@return real
function GetDestructableLife(d) end

---@param d destructable
---@param max real
function SetDestructableMaxLife(d, max) end

---@param d destructable
---@return real
function GetDestructableMaxLife(d) end

---@param d destructable
---@param life real
---@param birth boolean
function DestructableRestoreLife(d, life, birth) end

---@param d destructable
---@param whichAnimation string
function QueueDestructableAnimation(d, whichAnimation) end

---@param d destructable
---@param whichAnimation string
function SetDestructableAnimation(d, whichAnimation) end

---@param d destructable
---@param speedFactor real
function SetDestructableAnimationSpeed(d, speedFactor) end

---@param d destructable
---@param flag boolean
function ShowDestructable(d, flag) end

---@param d destructable
---@return real
function GetDestructableOccluderHeight(d) end

---@param d destructable
---@param height real
function SetDestructableOccluderHeight(d, height) end

---@param d destructable
---@return string
function GetDestructableName(d) end

---@return destructable
function GetTriggerDestructable() end


--============================================================================
-- Item API
---@param itemid integer
---@param x real
---@param y real
---@return item
function CreateItem(itemid, x, y) end

---@param whichItem item
function RemoveItem(whichItem) end

---@param whichItem item
---@return player
function GetItemPlayer(whichItem) end

---@param i item
---@return integer
function GetItemTypeId(i) end

---@param i item
---@return real
function GetItemX(i) end

---@param i item
---@return real
function GetItemY(i) end

---@param i item
---@param x real
---@param y real
function SetItemPosition(i, x, y) end

---@param whichItem item
---@param flag boolean
function SetItemDropOnDeath(whichItem, flag) end

---@param i item
---@param flag boolean
function SetItemDroppable(i, flag) end

---@param i item
---@param flag boolean
function SetItemPawnable(i, flag) end

---@param whichItem item
---@param whichPlayer player
---@param changeColor boolean
function SetItemPlayer(whichItem, whichPlayer, changeColor) end

---@param whichItem item
---@param flag boolean
function SetItemInvulnerable(whichItem, flag) end

---@param whichItem item
---@return boolean
function IsItemInvulnerable(whichItem) end

---@param whichItem item
---@param show boolean
function SetItemVisible(whichItem, show) end

---@param whichItem item
---@return boolean
function IsItemVisible(whichItem) end

---@param whichItem item
---@return boolean
function IsItemOwned(whichItem) end

---@param whichItem item
---@return boolean
function IsItemPowerup(whichItem) end

---@param whichItem item
---@return boolean
function IsItemSellable(whichItem) end

---@param whichItem item
---@return boolean
function IsItemPawnable(whichItem) end

---@param itemId integer
---@return boolean
function IsItemIdPowerup(itemId) end

---@param itemId integer
---@return boolean
function IsItemIdSellable(itemId) end

---@param itemId integer
---@return boolean
function IsItemIdPawnable(itemId) end

---@param r rect
---@param filter boolexpr
---@param actionFunc code
function EnumItemsInRect(r, filter, actionFunc) end

---@param whichItem item
---@return integer
function GetItemLevel(whichItem) end

---@param whichItem item
---@return itemtype
function GetItemType(whichItem) end

---@param whichItem item
---@param unitId integer
function SetItemDropID(whichItem, unitId) end

---@param whichItem item
---@return string
function GetItemName(whichItem) end

---@param whichItem item
---@return integer
function GetItemCharges(whichItem) end

---@param whichItem item
---@param charges integer
function SetItemCharges(whichItem, charges) end

---@param whichItem item
---@return integer
function GetItemUserData(whichItem) end

---@param whichItem item
---@param data integer
function SetItemUserData(whichItem, data) end


--============================================================================
-- Unit API
-- Facing arguments are specified in degrees
---@param id player
---@param unitid integer
---@param x real
---@param y real
---@param face real
---@return unit
function CreateUnit(id, unitid, x, y, face) end

---@param whichPlayer player
---@param unitname string
---@param x real
---@param y real
---@param face real
---@return unit
function CreateUnitByName(whichPlayer, unitname, x, y, face) end

---@param id player
---@param unitid integer
---@param whichLocation location
---@param face real
---@return unit
function CreateUnitAtLoc(id, unitid, whichLocation, face) end

---@param id player
---@param unitname string
---@param whichLocation location
---@param face real
---@return unit
function CreateUnitAtLocByName(id, unitname, whichLocation, face) end

---@param whichPlayer player
---@param unitid integer
---@param x real
---@param y real
---@param face real
---@return unit
function CreateCorpse(whichPlayer, unitid, x, y, face) end


---@param whichUnit unit
function KillUnit(whichUnit) end

---@param whichUnit unit
function RemoveUnit(whichUnit) end

---@param whichUnit unit
---@param show boolean
function ShowUnit(whichUnit, show) end


---@param whichUnit unit
---@param whichUnitState unitstate
---@param newVal real
function SetUnitState(whichUnit, whichUnitState, newVal) end

---@param whichUnit unit
---@param newX real
function SetUnitX(whichUnit, newX) end

---@param whichUnit unit
---@param newY real
function SetUnitY(whichUnit, newY) end

---@param whichUnit unit
---@param newX real
---@param newY real
function SetUnitPosition(whichUnit, newX, newY) end

---@param whichUnit unit
---@param whichLocation location
function SetUnitPositionLoc(whichUnit, whichLocation) end

---@param whichUnit unit
---@param facingAngle real
function SetUnitFacing(whichUnit, facingAngle) end

---@param whichUnit unit
---@param facingAngle real
---@param duration real
function SetUnitFacingTimed(whichUnit, facingAngle, duration) end

---@param whichUnit unit
---@param newSpeed real
function SetUnitMoveSpeed(whichUnit, newSpeed) end

---@param whichUnit unit
---@param newHeight real
---@param rate real
function SetUnitFlyHeight(whichUnit, newHeight, rate) end

---@param whichUnit unit
---@param newTurnSpeed real
function SetUnitTurnSpeed(whichUnit, newTurnSpeed) end

---@param whichUnit unit
---@param newPropWindowAngle real
function SetUnitPropWindow(whichUnit, newPropWindowAngle) end

---@param whichUnit unit
---@param newAcquireRange real
function SetUnitAcquireRange(whichUnit, newAcquireRange) end

---@param whichUnit unit
---@param creepGuard boolean
function SetUnitCreepGuard(whichUnit, creepGuard) end


---@param whichUnit unit
---@return real
function GetUnitAcquireRange(whichUnit) end

---@param whichUnit unit
---@return real
function GetUnitTurnSpeed(whichUnit) end

---@param whichUnit unit
---@return real
function GetUnitPropWindow(whichUnit) end

---@param whichUnit unit
---@return real
function GetUnitFlyHeight(whichUnit) end


---@param whichUnit unit
---@return real
function GetUnitDefaultAcquireRange(whichUnit) end

---@param whichUnit unit
---@return real
function GetUnitDefaultTurnSpeed(whichUnit) end

---@param whichUnit unit
---@return real
function GetUnitDefaultPropWindow(whichUnit) end

---@param whichUnit unit
---@return real
function GetUnitDefaultFlyHeight(whichUnit) end


---@param whichUnit unit
---@param whichPlayer player
---@param changeColor boolean
function SetUnitOwner(whichUnit, whichPlayer, changeColor) end

---@param whichUnit unit
---@param whichColor playercolor
function SetUnitColor(whichUnit, whichColor) end


---@param whichUnit unit
---@param scaleX real
---@param scaleY real
---@param scaleZ real
function SetUnitScale(whichUnit, scaleX, scaleY, scaleZ) end

---@param whichUnit unit
---@param timeScale real
function SetUnitTimeScale(whichUnit, timeScale) end

---@param whichUnit unit
---@param blendTime real
function SetUnitBlendTime(whichUnit, blendTime) end

---@param whichUnit unit
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetUnitVertexColor(whichUnit, red, green, blue, alpha) end


---@param whichUnit unit
---@param whichAnimation string
function QueueUnitAnimation(whichUnit, whichAnimation) end

---@param whichUnit unit
---@param whichAnimation string
function SetUnitAnimation(whichUnit, whichAnimation) end

---@param whichUnit unit
---@param whichAnimation integer
function SetUnitAnimationByIndex(whichUnit, whichAnimation) end

---@param whichUnit unit
---@param whichAnimation string
---@param rarity raritycontrol
function SetUnitAnimationWithRarity(whichUnit, whichAnimation, rarity) end

---@param whichUnit unit
---@param animProperties string
---@param add boolean
function AddUnitAnimationProperties(whichUnit, animProperties, add) end


---@param whichUnit unit
---@param whichBone string
---@param lookAtTarget unit
---@param offsetX real
---@param offsetY real
---@param offsetZ real
function SetUnitLookAt(whichUnit, whichBone, lookAtTarget, offsetX, offsetY, offsetZ) end

---@param whichUnit unit
function ResetUnitLookAt(whichUnit) end


---@param whichUnit unit
---@param byWhichPlayer player
---@param flag boolean
function SetUnitRescuable(whichUnit, byWhichPlayer, flag) end

---@param whichUnit unit
---@param range real
function SetUnitRescueRange(whichUnit, range) end


---@param whichHero unit
---@param newStr integer
---@param permanent boolean
function SetHeroStr(whichHero, newStr, permanent) end

---@param whichHero unit
---@param newAgi integer
---@param permanent boolean
function SetHeroAgi(whichHero, newAgi, permanent) end

---@param whichHero unit
---@param newInt integer
---@param permanent boolean
function SetHeroInt(whichHero, newInt, permanent) end


---@param whichHero unit
---@param includeBonuses boolean
---@return integer
function GetHeroStr(whichHero, includeBonuses) end

---@param whichHero unit
---@param includeBonuses boolean
---@return integer
function GetHeroAgi(whichHero, includeBonuses) end

---@param whichHero unit
---@param includeBonuses boolean
---@return integer
function GetHeroInt(whichHero, includeBonuses) end


---@param whichHero unit
---@param howManyLevels integer
---@return boolean
function UnitStripHeroLevel(whichHero, howManyLevels) end


---@param whichHero unit
---@return integer
function GetHeroXP(whichHero) end

---@param whichHero unit
---@param newXpVal integer
---@param showEyeCandy boolean
function SetHeroXP(whichHero, newXpVal,  showEyeCandy) end


---@param whichHero unit
---@return integer
function GetHeroSkillPoints(whichHero) end

---@param whichHero unit
---@param skillPointDelta integer
---@return boolean
function UnitModifySkillPoints(whichHero, skillPointDelta) end


---@param whichHero unit
---@param xpToAdd integer
---@param showEyeCandy boolean
function AddHeroXP(whichHero, xpToAdd,   showEyeCandy) end

---@param whichHero unit
---@param level integer
---@param showEyeCandy boolean
function SetHeroLevel(whichHero, level,  showEyeCandy) end

---@param whichHero unit
---@return integer
function GetHeroLevel(whichHero) end

---@param whichUnit unit
---@return integer
function GetUnitLevel(whichUnit) end

---@param whichHero unit
---@return string
function GetHeroProperName(whichHero) end

---@param whichHero unit
---@param flag boolean
function SuspendHeroXP(whichHero, flag) end

---@param whichHero unit
---@return boolean
function IsSuspendedXP(whichHero) end

---@param whichHero unit
---@param abilcode integer
function SelectHeroSkill(whichHero, abilcode) end

---@param whichUnit unit
---@param abilcode integer
---@return integer
function GetUnitAbilityLevel(whichUnit, abilcode) end

---@param whichUnit unit
---@param abilcode integer
---@return integer
function DecUnitAbilityLevel(whichUnit, abilcode) end

---@param whichUnit unit
---@param abilcode integer
---@return integer
function IncUnitAbilityLevel(whichUnit, abilcode) end

---@param whichUnit unit
---@param abilcode integer
---@param level integer
---@return integer
function SetUnitAbilityLevel(whichUnit, abilcode, level) end

---@param whichHero unit
---@param x real
---@param y real
---@param doEyecandy boolean
---@return boolean
function ReviveHero(whichHero, x, y, doEyecandy) end

---@param whichHero unit
---@param loc location
---@param doEyecandy boolean
---@return boolean
function ReviveHeroLoc(whichHero, loc, doEyecandy) end

---@param whichUnit unit
---@param exploded boolean
function SetUnitExploded(whichUnit, exploded) end

---@param whichUnit unit
---@param flag boolean
function SetUnitInvulnerable(whichUnit, flag) end

---@param whichUnit unit
---@param flag boolean
function PauseUnit(whichUnit, flag) end

---@param whichHero unit
---@return boolean
function IsUnitPaused(whichHero) end

---@param whichUnit unit
---@param flag boolean
function SetUnitPathing(whichUnit, flag) end


function ClearSelection() end

---@param whichUnit unit
---@param flag boolean
function SelectUnit(whichUnit, flag) end


---@param whichUnit unit
---@return integer
function GetUnitPointValue(whichUnit) end

---@param unitType integer
---@return integer
function GetUnitPointValueByType(unitType) end

--        SetUnitPointValueByType takes integer unitType, integer newPointValue returns nothing

---@param whichUnit unit
---@param whichItem item
---@return boolean
function UnitAddItem(whichUnit, whichItem) end

---@param whichUnit unit
---@param itemId integer
---@return item
function UnitAddItemById(whichUnit, itemId) end

---@param whichUnit unit
---@param itemId integer
---@param itemSlot integer
---@return boolean
function UnitAddItemToSlotById(whichUnit, itemId, itemSlot) end

---@param whichUnit unit
---@param whichItem item
function UnitRemoveItem(whichUnit, whichItem) end

---@param whichUnit unit
---@param itemSlot integer
---@return item
function UnitRemoveItemFromSlot(whichUnit, itemSlot) end

---@param whichUnit unit
---@param whichItem item
---@return boolean
function UnitHasItem(whichUnit, whichItem) end

---@param whichUnit unit
---@param itemSlot integer
---@return item
function UnitItemInSlot(whichUnit, itemSlot) end

---@param whichUnit unit
---@return integer
function UnitInventorySize(whichUnit) end


---@param whichUnit unit
---@param whichItem item
---@param x real
---@param y real
---@return boolean
function UnitDropItemPoint(whichUnit, whichItem, x, y) end

---@param whichUnit unit
---@param whichItem item
---@param slot integer
---@return boolean
function UnitDropItemSlot(whichUnit, whichItem, slot) end

---@param whichUnit unit
---@param whichItem item
---@param target widget
---@return boolean
function UnitDropItemTarget(whichUnit, whichItem, target) end


---@param whichUnit unit
---@param whichItem item
---@return boolean
function UnitUseItem(whichUnit, whichItem) end

---@param whichUnit unit
---@param whichItem item
---@param x real
---@param y real
---@return boolean
function UnitUseItemPoint(whichUnit, whichItem, x, y) end

---@param whichUnit unit
---@param whichItem item
---@param target widget
---@return boolean
function UnitUseItemTarget(whichUnit, whichItem, target) end


---@param whichUnit unit
---@return real
function GetUnitX(whichUnit) end

---@param whichUnit unit
---@return real
function GetUnitY(whichUnit) end

---@param whichUnit unit
---@return location
function GetUnitLoc(whichUnit) end

---@param whichUnit unit
---@return real
function GetUnitFacing(whichUnit) end

---@param whichUnit unit
---@return real
function GetUnitMoveSpeed(whichUnit) end

---@param whichUnit unit
---@return real
function GetUnitDefaultMoveSpeed(whichUnit) end

---@param whichUnit unit
---@param whichUnitState unitstate
---@return real
function GetUnitState(whichUnit, whichUnitState) end

---@param whichUnit unit
---@return player
function GetOwningPlayer(whichUnit) end

---@param whichUnit unit
---@return integer
function GetUnitTypeId(whichUnit) end

---@param whichUnit unit
---@return race
function GetUnitRace(whichUnit) end

---@param whichUnit unit
---@return string
function GetUnitName(whichUnit) end

---@param whichUnit unit
---@return integer
function GetUnitFoodUsed(whichUnit) end

---@param whichUnit unit
---@return integer
function GetUnitFoodMade(whichUnit) end

---@param unitId integer
---@return integer
function GetFoodMade(unitId) end

---@param unitId integer
---@return integer
function GetFoodUsed(unitId) end

---@param whichUnit unit
---@param useFood boolean
function SetUnitUseFood(whichUnit, useFood) end


---@param whichUnit unit
---@return location
function GetUnitRallyPoint(whichUnit) end

---@param whichUnit unit
---@return unit
function GetUnitRallyUnit(whichUnit) end

---@param whichUnit unit
---@return destructable
function GetUnitRallyDestructable(whichUnit) end


---@param whichUnit unit
---@param whichGroup group
---@return boolean
function IsUnitInGroup(whichUnit, whichGroup) end

---@param whichUnit unit
---@param whichForce force
---@return boolean
function IsUnitInForce(whichUnit, whichForce) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitOwnedByPlayer(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitAlly(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitEnemy(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitVisible(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitDetected(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitInvisible(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitFogged(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitMasked(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichPlayer player
---@return boolean
function IsUnitSelected(whichUnit, whichPlayer) end

---@param whichUnit unit
---@param whichRace race
---@return boolean
function IsUnitRace(whichUnit, whichRace) end

---@param whichUnit unit
---@param whichUnitType unittype
---@return boolean
function IsUnitType(whichUnit, whichUnitType) end

---@param whichUnit unit
---@param whichSpecifiedUnit unit
---@return boolean
function IsUnit(whichUnit, whichSpecifiedUnit) end

---@param whichUnit unit
---@param otherUnit unit
---@param distance real
---@return boolean
function IsUnitInRange(whichUnit, otherUnit, distance) end

---@param whichUnit unit
---@param x real
---@param y real
---@param distance real
---@return boolean
function IsUnitInRangeXY(whichUnit, x, y, distance) end

---@param whichUnit unit
---@param whichLocation location
---@param distance real
---@return boolean
function IsUnitInRangeLoc(whichUnit, whichLocation, distance) end

---@param whichUnit unit
---@return boolean
function IsUnitHidden(whichUnit) end

---@param whichUnit unit
---@return boolean
function IsUnitIllusion(whichUnit) end


---@param whichUnit unit
---@param whichTransport unit
---@return boolean
function IsUnitInTransport(whichUnit, whichTransport) end

---@param whichUnit unit
---@return boolean
function IsUnitLoaded(whichUnit) end


---@param unitId integer
---@return boolean
function IsHeroUnitId(unitId) end

---@param unitId integer
---@param whichUnitType unittype
---@return boolean
function IsUnitIdType(unitId, whichUnitType) end


---@param whichUnit unit
---@param whichPlayer player
---@param share boolean
function UnitShareVision(whichUnit, whichPlayer, share) end

---@param whichUnit unit
---@param suspend boolean
function UnitSuspendDecay(whichUnit, suspend) end

---@param whichUnit unit
---@param whichUnitType unittype
---@return boolean
function UnitAddType(whichUnit, whichUnitType) end

---@param whichUnit unit
---@param whichUnitType unittype
---@return boolean
function UnitRemoveType(whichUnit, whichUnitType) end


---@param whichUnit unit
---@param abilityId integer
---@return boolean
function UnitAddAbility(whichUnit, abilityId) end

---@param whichUnit unit
---@param abilityId integer
---@return boolean
function UnitRemoveAbility(whichUnit, abilityId) end

---@param whichUnit unit
---@param permanent boolean
---@param abilityId integer
---@return boolean
function UnitMakeAbilityPermanent(whichUnit, permanent, abilityId) end

---@param whichUnit unit
---@param removePositive boolean
---@param removeNegative boolean
function UnitRemoveBuffs(whichUnit, removePositive, removeNegative) end

---@param whichUnit unit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
function UnitRemoveBuffsEx(whichUnit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) end

---@param whichUnit unit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return boolean
function UnitHasBuffsEx(whichUnit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) end

---@param whichUnit unit
---@param removePositive boolean
---@param removeNegative boolean
---@param magic boolean
---@param physical boolean
---@param timedLife boolean
---@param aura boolean
---@param autoDispel boolean
---@return integer
function UnitCountBuffsEx(whichUnit, removePositive, removeNegative, magic, physical, timedLife, aura, autoDispel) end

---@param whichUnit unit
---@param add boolean
function UnitAddSleep(whichUnit, add) end

---@param whichUnit unit
---@return boolean
function UnitCanSleep(whichUnit) end

---@param whichUnit unit
---@param add boolean
function UnitAddSleepPerm(whichUnit, add) end

---@param whichUnit unit
---@return boolean
function UnitCanSleepPerm(whichUnit) end

---@param whichUnit unit
---@return boolean
function UnitIsSleeping(whichUnit) end

---@param whichUnit unit
function UnitWakeUp(whichUnit) end

---@param whichUnit unit
---@param buffId integer
---@param duration real
function UnitApplyTimedLife(whichUnit, buffId, duration) end

---@param whichUnit unit
---@param flag boolean
---@return boolean
function UnitIgnoreAlarm(whichUnit, flag) end

---@param whichUnit unit
---@return boolean
function UnitIgnoreAlarmToggled(whichUnit) end

---@param whichUnit unit
function UnitResetCooldown(whichUnit) end

---@param whichUnit unit
---@param constructionPercentage integer
function UnitSetConstructionProgress(whichUnit, constructionPercentage) end

---@param whichUnit unit
---@param upgradePercentage integer
function UnitSetUpgradeProgress(whichUnit, upgradePercentage) end

---@param whichUnit unit
---@param flag boolean
function UnitPauseTimedLife(whichUnit, flag) end

---@param whichUnit unit
---@param flag boolean
function UnitSetUsesAltIcon(whichUnit, flag) end


---@param whichUnit unit
---@param delay real
---@param radius real
---@param x real
---@param y real
---@param amount real
---@param attack boolean
---@param ranged boolean
---@param attackType attacktype
---@param damageType damagetype
---@param weaponType weapontype
---@return boolean
function UnitDamagePoint(whichUnit, delay, radius, x, y, amount, attack, ranged, attackType, damageType, weaponType) end

---@param whichUnit unit
---@param target widget
---@param amount real
---@param attack boolean
---@param ranged boolean
---@param attackType attacktype
---@param damageType damagetype
---@param weaponType weapontype
---@return boolean
function UnitDamageTarget(whichUnit, target, amount, attack, ranged, attackType, damageType, weaponType) end


---@param whichUnit unit
---@param order string
---@return boolean
function IssueImmediateOrder(whichUnit, order) end

---@param whichUnit unit
---@param order integer
---@return boolean
function IssueImmediateOrderById(whichUnit, order) end

---@param whichUnit unit
---@param order string
---@param x real
---@param y real
---@return boolean
function IssuePointOrder(whichUnit, order, x, y) end

---@param whichUnit unit
---@param order string
---@param whichLocation location
---@return boolean
function IssuePointOrderLoc(whichUnit, order, whichLocation) end

---@param whichUnit unit
---@param order integer
---@param x real
---@param y real
---@return boolean
function IssuePointOrderById(whichUnit, order, x, y) end

---@param whichUnit unit
---@param order integer
---@param whichLocation location
---@return boolean
function IssuePointOrderByIdLoc(whichUnit, order, whichLocation) end

---@param whichUnit unit
---@param order string
---@param targetWidget widget
---@return boolean
function IssueTargetOrder(whichUnit, order, targetWidget) end

---@param whichUnit unit
---@param order integer
---@param targetWidget widget
---@return boolean
function IssueTargetOrderById(whichUnit, order, targetWidget) end

---@param whichUnit unit
---@param order string
---@param x real
---@param y real
---@param instantTargetWidget widget
---@return boolean
function IssueInstantPointOrder(whichUnit, order, x, y, instantTargetWidget) end

---@param whichUnit unit
---@param order integer
---@param x real
---@param y real
---@param instantTargetWidget widget
---@return boolean
function IssueInstantPointOrderById(whichUnit, order, x, y, instantTargetWidget) end

---@param whichUnit unit
---@param order string
---@param targetWidget widget
---@param instantTargetWidget widget
---@return boolean
function IssueInstantTargetOrder(whichUnit, order, targetWidget, instantTargetWidget) end

---@param whichUnit unit
---@param order integer
---@param targetWidget widget
---@param instantTargetWidget widget
---@return boolean
function IssueInstantTargetOrderById(whichUnit, order, targetWidget, instantTargetWidget) end

---@param whichPeon unit
---@param unitToBuild string
---@param x real
---@param y real
---@return boolean
function IssueBuildOrder(whichPeon, unitToBuild, x, y) end

---@param whichPeon unit
---@param unitId integer
---@param x real
---@param y real
---@return boolean
function IssueBuildOrderById(whichPeon, unitId, x, y) end


---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitToBuild string
---@return boolean
function IssueNeutralImmediateOrder(forWhichPlayer, neutralStructure, unitToBuild) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@return boolean
function IssueNeutralImmediateOrderById(forWhichPlayer,neutralStructure, unitId) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitToBuild string
---@param x real
---@param y real
---@return boolean
function IssueNeutralPointOrder(forWhichPlayer,neutralStructure, unitToBuild, x, y) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@param x real
---@param y real
---@return boolean
function IssueNeutralPointOrderById(forWhichPlayer,neutralStructure, unitId, x, y) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitToBuild string
---@param target widget
---@return boolean
function IssueNeutralTargetOrder(forWhichPlayer,neutralStructure, unitToBuild, target) end

---@param forWhichPlayer player
---@param neutralStructure unit
---@param unitId integer
---@param target widget
---@return boolean
function IssueNeutralTargetOrderById(forWhichPlayer,neutralStructure, unitId, target) end


---@param whichUnit unit
---@return integer
function GetUnitCurrentOrder(whichUnit) end


---@param whichUnit unit
---@param amount integer
function SetResourceAmount(whichUnit, amount) end

---@param whichUnit unit
---@param amount integer
function AddResourceAmount(whichUnit, amount) end

---@param whichUnit unit
---@return integer
function GetResourceAmount(whichUnit) end


---@param waygate unit
---@return real
function WaygateGetDestinationX(waygate) end

---@param waygate unit
---@return real
function WaygateGetDestinationY(waygate) end

---@param waygate unit
---@param x real
---@param y real
function WaygateSetDestination(waygate, x, y) end

---@param waygate unit
---@param activate boolean
function WaygateActivate(waygate, activate) end

---@param waygate unit
---@return boolean
function WaygateIsActive(waygate) end


---@param itemId integer
---@param currentStock integer
---@param stockMax integer
function AddItemToAllStock(itemId, currentStock, stockMax) end

---@param whichUnit unit
---@param itemId integer
---@param currentStock integer
---@param stockMax integer
function AddItemToStock(whichUnit, itemId, currentStock, stockMax) end

---@param unitId integer
---@param currentStock integer
---@param stockMax integer
function AddUnitToAllStock(unitId, currentStock, stockMax) end

---@param whichUnit unit
---@param unitId integer
---@param currentStock integer
---@param stockMax integer
function AddUnitToStock(whichUnit, unitId, currentStock, stockMax) end


---@param itemId integer
function RemoveItemFromAllStock(itemId) end

---@param whichUnit unit
---@param itemId integer
function RemoveItemFromStock(whichUnit, itemId) end

---@param unitId integer
function RemoveUnitFromAllStock(unitId) end

---@param whichUnit unit
---@param unitId integer
function RemoveUnitFromStock(whichUnit, unitId) end


---@param slots integer
function SetAllItemTypeSlots(slots) end

---@param slots integer
function SetAllUnitTypeSlots(slots) end

---@param whichUnit unit
---@param slots integer
function SetItemTypeSlots(whichUnit, slots) end

---@param whichUnit unit
---@param slots integer
function SetUnitTypeSlots(whichUnit, slots) end


---@param whichUnit unit
---@return integer
function GetUnitUserData(whichUnit) end

---@param whichUnit unit
---@param data integer
function SetUnitUserData(whichUnit, data) end


--============================================================================
-- Player API
---@param number integer
---@return player
function Player(number) end

---@return player
function GetLocalPlayer() end

---@param whichPlayer player
---@param otherPlayer player
---@return boolean
function IsPlayerAlly(whichPlayer, otherPlayer) end

---@param whichPlayer player
---@param otherPlayer player
---@return boolean
function IsPlayerEnemy(whichPlayer, otherPlayer) end

---@param whichPlayer player
---@param whichForce force
---@return boolean
function IsPlayerInForce(whichPlayer, whichForce) end

---@param whichPlayer player
---@return boolean
function IsPlayerObserver(whichPlayer) end

---@param x real
---@param y real
---@param whichPlayer player
---@return boolean
function IsVisibleToPlayer(x, y, whichPlayer) end

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function IsLocationVisibleToPlayer(whichLocation, whichPlayer) end

---@param x real
---@param y real
---@param whichPlayer player
---@return boolean
function IsFoggedToPlayer(x, y, whichPlayer) end

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function IsLocationFoggedToPlayer(whichLocation, whichPlayer) end

---@param x real
---@param y real
---@param whichPlayer player
---@return boolean
function IsMaskedToPlayer(x, y, whichPlayer) end

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function IsLocationMaskedToPlayer(whichLocation, whichPlayer) end


---@param whichPlayer player
---@return race
function GetPlayerRace(whichPlayer) end

---@param whichPlayer player
---@return integer
function GetPlayerId(whichPlayer) end

---@param whichPlayer player
---@param includeIncomplete boolean
---@return integer
function GetPlayerUnitCount(whichPlayer, includeIncomplete) end

---@param whichPlayer player
---@param unitName string
---@param includeIncomplete boolean
---@param includeUpgrades boolean
---@return integer
function GetPlayerTypedUnitCount(whichPlayer, unitName, includeIncomplete, includeUpgrades) end

---@param whichPlayer player
---@param includeIncomplete boolean
---@return integer
function GetPlayerStructureCount(whichPlayer, includeIncomplete) end

---@param whichPlayer player
---@param whichPlayerState playerstate
---@return integer
function GetPlayerState(whichPlayer, whichPlayerState) end

---@param whichPlayer player
---@param whichPlayerScore playerscore
---@return integer
function GetPlayerScore(whichPlayer, whichPlayerScore) end

---@param sourcePlayer player
---@param otherPlayer player
---@param whichAllianceSetting alliancetype
---@return boolean
function GetPlayerAlliance(sourcePlayer, otherPlayer, whichAllianceSetting) end


---@param whichPlayer player
---@return real
function GetPlayerHandicap(whichPlayer) end

---@param whichPlayer player
---@return real
function GetPlayerHandicapXP(whichPlayer) end

---@param whichPlayer player
---@param handicap real
function SetPlayerHandicap(whichPlayer, handicap) end

---@param whichPlayer player
---@param handicap real
function SetPlayerHandicapXP(whichPlayer, handicap) end


---@param whichPlayer player
---@param techid integer
---@param maximum integer
function SetPlayerTechMaxAllowed(whichPlayer, techid, maximum) end

---@param whichPlayer player
---@param techid integer
---@return integer
function GetPlayerTechMaxAllowed(whichPlayer, techid) end

---@param whichPlayer player
---@param techid integer
---@param levels integer
function AddPlayerTechResearched(whichPlayer, techid, levels) end

---@param whichPlayer player
---@param techid integer
---@param setToLevel integer
function SetPlayerTechResearched(whichPlayer, techid, setToLevel) end

---@param whichPlayer player
---@param techid integer
---@param specificonly boolean
---@return boolean
function GetPlayerTechResearched(whichPlayer, techid, specificonly) end

---@param whichPlayer player
---@param techid integer
---@param specificonly boolean
---@return integer
function GetPlayerTechCount(whichPlayer, techid, specificonly) end


---@param whichPlayer player
---@param newOwner integer
function SetPlayerUnitsOwner(whichPlayer, newOwner) end

---@param whichPlayer player
---@param toWhichPlayers force
---@param flag boolean
function CripplePlayer(whichPlayer, toWhichPlayers, flag) end


---@param whichPlayer player
---@param abilid integer
---@param avail boolean
function SetPlayerAbilityAvailable(whichPlayer, abilid, avail) end


---@param whichPlayer player
---@param whichPlayerState playerstate
---@param value integer
function SetPlayerState(whichPlayer, whichPlayerState, value) end

---@param whichPlayer player
---@param gameResult playergameresult
function RemovePlayer(whichPlayer, gameResult) end


-- Used to store hero level data for the scorescreen
-- before units are moved to neutral passive in melee games
--
---@param whichPlayer player
function CachePlayerHeroData(whichPlayer) end


--============================================================================
-- Fog of War API
---@param forWhichPlayer player
---@param whichState fogstate
---@param where rect
---@param useSharedVision boolean
function SetFogStateRect(forWhichPlayer, whichState, where, useSharedVision) end

---@param forWhichPlayer player
---@param whichState fogstate
---@param centerx real
---@param centerY real
---@param radius real
---@param useSharedVision boolean
function SetFogStateRadius(forWhichPlayer, whichState, centerx, centerY, radius, useSharedVision) end

---@param forWhichPlayer player
---@param whichState fogstate
---@param center location
---@param radius real
---@param useSharedVision boolean
function SetFogStateRadiusLoc(forWhichPlayer, whichState, center, radius, useSharedVision) end

---@param enable boolean
function FogMaskEnable(enable) end

---@return boolean
function IsFogMaskEnabled() end

---@param enable boolean
function FogEnable(enable) end

---@return boolean
function IsFogEnabled() end


---@param forWhichPlayer player
---@param whichState fogstate
---@param where rect
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function CreateFogModifierRect(forWhichPlayer, whichState, where, useSharedVision, afterUnits) end

---@param forWhichPlayer player
---@param whichState fogstate
---@param centerx real
---@param centerY real
---@param radius real
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function CreateFogModifierRadius(forWhichPlayer, whichState, centerx, centerY, radius, useSharedVision, afterUnits) end

---@param forWhichPlayer player
---@param whichState fogstate
---@param center location
---@param radius real
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function CreateFogModifierRadiusLoc(forWhichPlayer, whichState, center, radius, useSharedVision, afterUnits) end

---@param whichFogModifier fogmodifier
function DestroyFogModifier(whichFogModifier) end

---@param whichFogModifier fogmodifier
function FogModifierStart(whichFogModifier) end

---@param whichFogModifier fogmodifier
function FogModifierStop(whichFogModifier) end


--============================================================================
-- Game API
---@return version
function VersionGet() end

---@param whichVersion version
---@return boolean
function VersionCompatible(whichVersion) end

---@param whichVersion version
---@return boolean
function VersionSupported(whichVersion) end


---@param doScoreScreen boolean
function EndGame(doScoreScreen) end


-- Async only!
---@param newLevel string
---@param doScoreScreen boolean
function ChangeLevel(newLevel, doScoreScreen) end

---@param doScoreScreen boolean
function RestartGame(doScoreScreen) end

function ReloadGame() end

-- %%% SetCampaignMenuRace is deprecated.  It must remain to support
-- old maps which use it, but all new maps should use SetCampaignMenuRaceEx
---@param r race
function SetCampaignMenuRace(r) end

---@param campaignIndex integer
function SetCampaignMenuRaceEx(campaignIndex) end

function ForceCampaignSelectScreen() end


---@param saveFileName string
---@param doScoreScreen boolean
function LoadGame(saveFileName, doScoreScreen) end

---@param saveFileName string
function SaveGame(saveFileName) end

---@param sourceDirName string
---@param destDirName string
---@return boolean
function RenameSaveDirectory(sourceDirName, destDirName) end

---@param sourceDirName string
---@return boolean
function RemoveSaveDirectory(sourceDirName) end

---@param sourceSaveName string
---@param destSaveName string
---@return boolean
function CopySaveGame(sourceSaveName, destSaveName) end

---@param saveName string
---@return boolean
function SaveGameExists(saveName) end

function SyncSelections() end

---@param whichFloatGameState fgamestate
---@param value real
function SetFloatGameState(whichFloatGameState, value) end

---@param whichFloatGameState fgamestate
---@return real
function GetFloatGameState(whichFloatGameState) end

---@param whichIntegerGameState igamestate
---@param value integer
function SetIntegerGameState(whichIntegerGameState, value) end

---@param whichIntegerGameState igamestate
---@return integer
function GetIntegerGameState(whichIntegerGameState) end



--============================================================================
-- Campaign API
---@param cleared boolean
function SetTutorialCleared(cleared) end

---@param campaignNumber integer
---@param missionNumber integer
---@param available boolean
function SetMissionAvailable(campaignNumber, missionNumber, available) end

---@param campaignNumber integer
---@param available boolean
function SetCampaignAvailable(campaignNumber, available) end

---@param campaignNumber integer
---@param available boolean
function SetOpCinematicAvailable(campaignNumber, available) end

---@param campaignNumber integer
---@param available boolean
function SetEdCinematicAvailable(campaignNumber, available) end

---@return gamedifficulty
function GetDefaultDifficulty() end

---@param g gamedifficulty
function SetDefaultDifficulty(g) end

---@param whichButton integer
---@param visible boolean
function SetCustomCampaignButtonVisible(whichButton, visible) end

---@param whichButton integer
---@return boolean
function GetCustomCampaignButtonVisible(whichButton) end

function DoNotSaveReplay() end


--============================================================================
-- Dialog API
---@return dialog
function DialogCreate() end

---@param whichDialog dialog
function DialogDestroy(whichDialog) end

---@param whichDialog dialog
function DialogClear(whichDialog) end

---@param whichDialog dialog
---@param messageText string
function DialogSetMessage(whichDialog, messageText) end

---@param whichDialog dialog
---@param buttonText string
---@param hotkey integer
---@return button
function DialogAddButton(whichDialog, buttonText, hotkey) end

---@param whichDialog dialog
---@param doScoreScreen boolean
---@param buttonText string
---@param hotkey integer
---@return button
function DialogAddQuitButton(whichDialog, doScoreScreen, buttonText, hotkey) end

---@param whichPlayer player
---@param whichDialog dialog
---@param flag boolean
function DialogDisplay(whichPlayer, whichDialog, flag) end


-- Creates a new or reads in an existing game cache file stored
-- in the current campaign profile dir
--
---@return boolean
function ReloadGameCachesFromDisk() end


---@param campaignFile string
---@return gamecache
function InitGameCache(campaignFile) end

---@param whichCache gamecache
---@return boolean
function SaveGameCache(whichCache) end


---@param cache gamecache
---@param missionKey string
---@param key string
---@param value integer
function StoreInteger(cache, missionKey, key, value) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param value real
function StoreReal(cache, missionKey, key, value) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param value boolean
function StoreBoolean(cache, missionKey, key, value) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param whichUnit unit
---@return boolean
function StoreUnit(cache, missionKey, key, whichUnit) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param value string
---@return boolean
function StoreString(cache, missionKey, key, value) end


---@param cache gamecache
---@param missionKey string
---@param key string
function SyncStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function SyncStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function SyncStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function SyncStoredUnit(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function SyncStoredString(cache, missionKey, key) end


---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredUnit(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function HaveStoredString(cache, missionKey, key) end


---@param cache gamecache
function FlushGameCache(cache) end

---@param cache gamecache
---@param missionKey string
function FlushStoredMission(cache, missionKey) end

---@param cache gamecache
---@param missionKey string
---@param key string
function FlushStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function FlushStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function FlushStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function FlushStoredUnit(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
function FlushStoredString(cache, missionKey, key) end


-- Will return 0 if the specified value's data is not found in the cache
---@param cache gamecache
---@param missionKey string
---@param key string
---@return integer
function GetStoredInteger(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return real
function GetStoredReal(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return boolean
function GetStoredBoolean(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@return string
function GetStoredString(cache, missionKey, key) end

---@param cache gamecache
---@param missionKey string
---@param key string
---@param forWhichPlayer player
---@param x real
---@param y real
---@param facing real
---@return unit
function RestoreUnit(cache, missionKey, key, forWhichPlayer, x, y, facing) end



---@return hashtable
function InitHashtable() end


---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value integer
function SaveInteger(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value real
function SaveReal(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value boolean
function SaveBoolean(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param value string
---@return boolean
function SaveStr(table, parentKey, childKey, value) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichPlayer player
---@return boolean
function SavePlayerHandle(table, parentKey, childKey, whichPlayer) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichWidget widget
---@return boolean
function SaveWidgetHandle(table, parentKey, childKey, whichWidget) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichDestructable destructable
---@return boolean
function SaveDestructableHandle(table, parentKey, childKey, whichDestructable) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichItem item
---@return boolean
function SaveItemHandle(table, parentKey, childKey, whichItem) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichUnit unit
---@return boolean
function SaveUnitHandle(table, parentKey, childKey, whichUnit) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichAbility ability
---@return boolean
function SaveAbilityHandle(table, parentKey, childKey, whichAbility) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTimer timer
---@return boolean
function SaveTimerHandle(table, parentKey, childKey, whichTimer) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTrigger trigger
---@return boolean
function SaveTriggerHandle(table, parentKey, childKey, whichTrigger) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTriggercondition triggercondition
---@return boolean
function SaveTriggerConditionHandle(table, parentKey, childKey, whichTriggercondition) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTriggeraction triggeraction
---@return boolean
function SaveTriggerActionHandle(table, parentKey, childKey, whichTriggeraction) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichEvent event
---@return boolean
function SaveTriggerEventHandle(table, parentKey, childKey, whichEvent) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichForce force
---@return boolean
function SaveForceHandle(table, parentKey, childKey, whichForce) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichGroup group
---@return boolean
function SaveGroupHandle(table, parentKey, childKey, whichGroup) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichLocation location
---@return boolean
function SaveLocationHandle(table, parentKey, childKey, whichLocation) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichRect rect
---@return boolean
function SaveRectHandle(table, parentKey, childKey, whichRect) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichBoolexpr boolexpr
---@return boolean
function SaveBooleanExprHandle(table, parentKey, childKey, whichBoolexpr) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichSound sound
---@return boolean
function SaveSoundHandle(table, parentKey, childKey, whichSound) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichEffect effect
---@return boolean
function SaveEffectHandle(table, parentKey, childKey, whichEffect) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichUnitpool unitpool
---@return boolean
function SaveUnitPoolHandle(table, parentKey, childKey, whichUnitpool) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichItempool itempool
---@return boolean
function SaveItemPoolHandle(table, parentKey, childKey, whichItempool) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichQuest quest
---@return boolean
function SaveQuestHandle(table, parentKey, childKey, whichQuest) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichQuestitem questitem
---@return boolean
function SaveQuestItemHandle(table, parentKey, childKey, whichQuestitem) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichDefeatcondition defeatcondition
---@return boolean
function SaveDefeatConditionHandle(table, parentKey, childKey, whichDefeatcondition) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTimerdialog timerdialog
---@return boolean
function SaveTimerDialogHandle(table, parentKey, childKey, whichTimerdialog) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichLeaderboard leaderboard
---@return boolean
function SaveLeaderboardHandle(table, parentKey, childKey, whichLeaderboard) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichMultiboard multiboard
---@return boolean
function SaveMultiboardHandle(table, parentKey, childKey, whichMultiboard) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichMultiboarditem multiboarditem
---@return boolean
function SaveMultiboardItemHandle(table, parentKey, childKey, whichMultiboarditem) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTrackable trackable
---@return boolean
function SaveTrackableHandle(table, parentKey, childKey, whichTrackable) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichDialog dialog
---@return boolean
function SaveDialogHandle(table, parentKey, childKey, whichDialog) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichButton button
---@return boolean
function SaveButtonHandle(table, parentKey, childKey, whichButton) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichTexttag texttag
---@return boolean
function SaveTextTagHandle(table, parentKey, childKey, whichTexttag) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichLightning lightning
---@return boolean
function SaveLightningHandle(table, parentKey, childKey, whichLightning) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichImage image
---@return boolean
function SaveImageHandle(table, parentKey, childKey, whichImage) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichUbersplat ubersplat
---@return boolean
function SaveUbersplatHandle(table, parentKey, childKey, whichUbersplat) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichRegion region
---@return boolean
function SaveRegionHandle(table, parentKey, childKey, whichRegion) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichFogState fogstate
---@return boolean
function SaveFogStateHandle(table, parentKey, childKey, whichFogState) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichFogModifier fogmodifier
---@return boolean
function SaveFogModifierHandle(table, parentKey, childKey, whichFogModifier) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichAgent agent
---@return boolean
function SaveAgentHandle(table, parentKey, childKey, whichAgent) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichHashtable hashtable
---@return boolean
function SaveHashtableHandle(table, parentKey, childKey, whichHashtable) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@param whichFrameHandle framehandle
---@return boolean
function SaveFrameHandle(table, parentKey, childKey, whichFrameHandle) end



---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return integer
function LoadInteger(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return real
function LoadReal(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function LoadBoolean(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return string
function LoadStr(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return player
function LoadPlayerHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return widget
function LoadWidgetHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return destructable
function LoadDestructableHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return item
function LoadItemHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return unit
function LoadUnitHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return ability
function LoadAbilityHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return timer
function LoadTimerHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return trigger
function LoadTriggerHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return triggercondition
function LoadTriggerConditionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return triggeraction
function LoadTriggerActionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return event
function LoadTriggerEventHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return force
function LoadForceHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return group
function LoadGroupHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return location
function LoadLocationHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return rect
function LoadRectHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolexpr
function LoadBooleanExprHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return sound
function LoadSoundHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return effect
function LoadEffectHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return unitpool
function LoadUnitPoolHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return itempool
function LoadItemPoolHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return quest
function LoadQuestHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return questitem
function LoadQuestItemHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return defeatcondition
function LoadDefeatConditionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return timerdialog
function LoadTimerDialogHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return leaderboard
function LoadLeaderboardHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return multiboard
function LoadMultiboardHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return multiboarditem
function LoadMultiboardItemHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return trackable
function LoadTrackableHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return dialog
function LoadDialogHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return button
function LoadButtonHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return texttag
function LoadTextTagHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return lightning
function LoadLightningHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return image
function LoadImageHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return ubersplat
function LoadUbersplatHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return region
function LoadRegionHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return fogstate
function LoadFogStateHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return fogmodifier
function LoadFogModifierHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return hashtable
function LoadHashtableHandle(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return framehandle
function LoadFrameHandle(table, parentKey, childKey) end


---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function HaveSavedInteger(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function HaveSavedReal(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function HaveSavedBoolean(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function HaveSavedString(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
---@return boolean
function HaveSavedHandle(table, parentKey, childKey) end


---@param table hashtable
---@param parentKey integer
---@param childKey integer
function RemoveSavedInteger(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
function RemoveSavedReal(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
function RemoveSavedBoolean(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
function RemoveSavedString(table, parentKey, childKey) end

---@param table hashtable
---@param parentKey integer
---@param childKey integer
function RemoveSavedHandle(table, parentKey, childKey) end


---@param table hashtable
function FlushParentHashtable(table) end

---@param table hashtable
---@param parentKey integer
function FlushChildHashtable(table, parentKey) end



--============================================================================
-- Randomization API
---@param lowBound integer
---@param highBound integer
---@return integer
function GetRandomInt(lowBound, highBound) end

---@param lowBound real
---@param highBound real
---@return real
function GetRandomReal(lowBound, highBound) end


---@return unitpool
function CreateUnitPool() end

---@param whichPool unitpool
function DestroyUnitPool(whichPool) end

---@param whichPool unitpool
---@param unitId integer
---@param weight real
function UnitPoolAddUnitType(whichPool, unitId, weight) end

---@param whichPool unitpool
---@param unitId integer
function UnitPoolRemoveUnitType(whichPool, unitId) end

---@param whichPool unitpool
---@param forWhichPlayer player
---@param x real
---@param y real
---@param facing real
---@return unit
function PlaceRandomUnit(whichPool, forWhichPlayer, x, y, facing) end


---@return itempool
function CreateItemPool() end

---@param whichItemPool itempool
function DestroyItemPool(whichItemPool) end

---@param whichItemPool itempool
---@param itemId integer
---@param weight real
function ItemPoolAddItemType(whichItemPool, itemId, weight) end

---@param whichItemPool itempool
---@param itemId integer
function ItemPoolRemoveItemType(whichItemPool, itemId) end

---@param whichItemPool itempool
---@param x real
---@param y real
---@return item
function PlaceRandomItem(whichItemPool, x, y) end


-- Choose any random unit/item. (NP means Neutral Passive)
---@param level integer
---@return integer
function ChooseRandomCreep(level) end

---@return integer
function ChooseRandomNPBuilding() end

---@param level integer
---@return integer
function ChooseRandomItem(level) end

---@param whichType itemtype
---@param level integer
---@return integer
function ChooseRandomItemEx(whichType, level) end

---@param seed integer
function SetRandomSeed(seed) end


--============================================================================
-- Visual API
---@param a real
---@param b real
---@param c real
---@param d real
---@param e real
function SetTerrainFog(a, b, c, d, e) end

function ResetTerrainFog() end


---@param a real
---@param b real
---@param c real
---@param d real
---@param e real
function SetUnitFog(a, b, c, d, e) end

---@param style integer
---@param zstart real
---@param zend real
---@param density real
---@param red real
---@param green real
---@param blue real
function SetTerrainFogEx(style, zstart, zend, density, red, green, blue) end

---@param toPlayer player
---@param x real
---@param y real
---@param message string
function DisplayTextToPlayer(toPlayer, x, y, message) end

---@param toPlayer player
---@param x real
---@param y real
---@param duration real
---@param message string
function DisplayTimedTextToPlayer(toPlayer, x, y, duration, message) end

---@param toPlayer player
---@param x real
---@param y real
---@param duration real
---@param message string
function DisplayTimedTextFromPlayer(toPlayer, x, y, duration, message) end

function ClearTextMessages() end

---@param terrainDNCFile string
---@param unitDNCFile string
function SetDayNightModels(terrainDNCFile, unitDNCFile) end

---@param skyModelFile string
function SetSkyModel(skyModelFile) end

---@param b boolean
function EnableUserControl(b) end

---@param b boolean
function EnableUserUI(b) end

---@param b boolean
function SuspendTimeOfDay(b) end

---@param r real
function SetTimeOfDayScale(r) end

---@return real
function GetTimeOfDayScale() end

---@param flag boolean
---@param fadeDuration real
function ShowInterface(flag, fadeDuration) end

---@param flag boolean
function PauseGame(flag) end

---@param whichUnit unit
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function UnitAddIndicator(whichUnit, red, green, blue, alpha) end

---@param whichWidget widget
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function AddIndicator(whichWidget, red, green, blue, alpha) end

---@param x real
---@param y real
---@param duration real
function PingMinimap(x, y, duration) end

---@param x real
---@param y real
---@param duration real
---@param red integer
---@param green integer
---@param blue integer
---@param extraEffects boolean
function PingMinimapEx(x, y, duration, red, green, blue, extraEffects) end

---@param flag boolean
function EnableOcclusion(flag) end

---@param introText string
function SetIntroShotText(introText) end

---@param introModelPath string
function SetIntroShotModel(introModelPath) end

---@param b boolean
function EnableWorldFogBoundary(b) end

---@param modelName string
function PlayModelCinematic(modelName) end

---@param movieName string
function PlayCinematic(movieName) end

---@param key string
function ForceUIKey(key) end

function ForceUICancel() end

function DisplayLoadDialog() end

---@param iconPath string
function SetAltMinimapIcon(iconPath) end

---@param flag boolean
function DisableRestartMission(flag) end


---@return texttag
function CreateTextTag() end

---@param t texttag
function DestroyTextTag(t) end

---@param t texttag
---@param s string
---@param height real
function SetTextTagText(t, s, height) end

---@param t texttag
---@param x real
---@param y real
---@param heightOffset real
function SetTextTagPos(t, x, y, heightOffset) end

---@param t texttag
---@param whichUnit unit
---@param heightOffset real
function SetTextTagPosUnit(t, whichUnit, heightOffset) end

---@param t texttag
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetTextTagColor(t, red, green, blue, alpha) end

---@param t texttag
---@param xvel real
---@param yvel real
function SetTextTagVelocity(t, xvel, yvel) end

---@param t texttag
---@param flag boolean
function SetTextTagVisibility(t, flag) end

---@param t texttag
---@param flag boolean
function SetTextTagSuspended(t, flag) end

---@param t texttag
---@param flag boolean
function SetTextTagPermanent(t, flag) end

---@param t texttag
---@param age real
function SetTextTagAge(t, age) end

---@param t texttag
---@param lifespan real
function SetTextTagLifespan(t, lifespan) end

---@param t texttag
---@param fadepoint real
function SetTextTagFadepoint(t, fadepoint) end


---@param reserved integer
function SetReservedLocalHeroButtons(reserved) end

---@return integer
function GetAllyColorFilterState() end

---@param state integer
function SetAllyColorFilterState(state) end

---@return boolean
function GetCreepCampFilterState() end

---@param state boolean
function SetCreepCampFilterState(state) end

---@param enableAlly boolean
---@param enableCreep boolean
function EnableMinimapFilterButtons(enableAlly, enableCreep) end

---@param state boolean
---@param ui boolean
function EnableDragSelect(state, ui) end

---@param state boolean
---@param ui boolean
function EnablePreSelect(state, ui) end

---@param state boolean
---@param ui boolean
function EnableSelect(state, ui) end


--============================================================================
-- Trackable API
---@param trackableModelPath string
---@param x real
---@param y real
---@param facing real
---@return trackable
function CreateTrackable(trackableModelPath, x, y, facing) end


--============================================================================
-- Quest API
---@return quest
function CreateQuest() end

---@param whichQuest quest
function DestroyQuest(whichQuest) end

---@param whichQuest quest
---@param title string
function QuestSetTitle(whichQuest, title) end

---@param whichQuest quest
---@param description string
function QuestSetDescription(whichQuest, description) end

---@param whichQuest quest
---@param iconPath string
function QuestSetIconPath(whichQuest, iconPath) end


---@param whichQuest quest
---@param required boolean
function QuestSetRequired(whichQuest, required) end

---@param whichQuest quest
---@param completed boolean
function QuestSetCompleted(whichQuest, completed) end

---@param whichQuest quest
---@param discovered boolean
function QuestSetDiscovered(whichQuest, discovered) end

---@param whichQuest quest
---@param failed boolean
function QuestSetFailed(whichQuest, failed) end

---@param whichQuest quest
---@param enabled boolean
function QuestSetEnabled(whichQuest, enabled) end


---@param whichQuest quest
---@return boolean
function IsQuestRequired(whichQuest) end

---@param whichQuest quest
---@return boolean
function IsQuestCompleted(whichQuest) end

---@param whichQuest quest
---@return boolean
function IsQuestDiscovered(whichQuest) end

---@param whichQuest quest
---@return boolean
function IsQuestFailed(whichQuest) end

---@param whichQuest quest
---@return boolean
function IsQuestEnabled(whichQuest) end


---@param whichQuest quest
---@return questitem
function QuestCreateItem(whichQuest) end

---@param whichQuestItem questitem
---@param description string
function QuestItemSetDescription(whichQuestItem, description) end

---@param whichQuestItem questitem
---@param completed boolean
function QuestItemSetCompleted(whichQuestItem, completed) end


---@param whichQuestItem questitem
---@return boolean
function IsQuestItemCompleted(whichQuestItem) end


---@return defeatcondition
function CreateDefeatCondition() end

---@param whichCondition defeatcondition
function DestroyDefeatCondition(whichCondition) end

---@param whichCondition defeatcondition
---@param description string
function DefeatConditionSetDescription(whichCondition, description) end


function FlashQuestDialogButton() end

function ForceQuestDialogUpdate() end


--============================================================================
-- Timer Dialog API
---@param t timer
---@return timerdialog
function CreateTimerDialog(t) end

---@param whichDialog timerdialog
function DestroyTimerDialog(whichDialog) end

---@param whichDialog timerdialog
---@param title string
function TimerDialogSetTitle(whichDialog, title) end

---@param whichDialog timerdialog
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function TimerDialogSetTitleColor(whichDialog, red, green, blue, alpha) end

---@param whichDialog timerdialog
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function TimerDialogSetTimeColor(whichDialog, red, green, blue, alpha) end

---@param whichDialog timerdialog
---@param speedMultFactor real
function TimerDialogSetSpeed(whichDialog, speedMultFactor) end

---@param whichDialog timerdialog
---@param display boolean
function TimerDialogDisplay(whichDialog, display) end

---@param whichDialog timerdialog
---@return boolean
function IsTimerDialogDisplayed(whichDialog) end

---@param whichDialog timerdialog
---@param timeRemaining real
function TimerDialogSetRealTimeRemaining(whichDialog, timeRemaining) end


--============================================================================
-- Leaderboard API

-- Create a leaderboard object
---@return leaderboard
function CreateLeaderboard() end

---@param lb leaderboard
function DestroyLeaderboard(lb) end


---@param lb leaderboard
---@param show boolean
function LeaderboardDisplay(lb, show) end

---@param lb leaderboard
---@return boolean
function IsLeaderboardDisplayed(lb) end


---@param lb leaderboard
---@return integer
function LeaderboardGetItemCount(lb) end


---@param lb leaderboard
---@param count integer
function LeaderboardSetSizeByItemCount(lb, count) end

---@param lb leaderboard
---@param label string
---@param value integer
---@param p player
function LeaderboardAddItem(lb, label, value, p) end

---@param lb leaderboard
---@param index integer
function LeaderboardRemoveItem(lb, index) end

---@param lb leaderboard
---@param p player
function LeaderboardRemovePlayerItem(lb, p) end

---@param lb leaderboard
function LeaderboardClear(lb) end


---@param lb leaderboard
---@param ascending boolean
function LeaderboardSortItemsByValue(lb, ascending) end

---@param lb leaderboard
---@param ascending boolean
function LeaderboardSortItemsByPlayer(lb, ascending) end

---@param lb leaderboard
---@param ascending boolean
function LeaderboardSortItemsByLabel(lb, ascending) end


---@param lb leaderboard
---@param p player
---@return boolean
function LeaderboardHasPlayerItem(lb, p) end

---@param lb leaderboard
---@param p player
---@return integer
function LeaderboardGetPlayerIndex(lb, p) end

---@param lb leaderboard
---@param label string
function LeaderboardSetLabel(lb, label) end

---@param lb leaderboard
---@return string
function LeaderboardGetLabelText(lb) end


---@param toPlayer player
---@param lb leaderboard
function PlayerSetLeaderboard(toPlayer, lb) end

---@param toPlayer player
---@return leaderboard
function PlayerGetLeaderboard(toPlayer) end


---@param lb leaderboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function LeaderboardSetLabelColor(lb, red, green, blue, alpha) end

---@param lb leaderboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function LeaderboardSetValueColor(lb, red, green, blue, alpha) end

---@param lb leaderboard
---@param showLabel boolean
---@param showNames boolean
---@param showValues boolean
---@param showIcons boolean
function LeaderboardSetStyle(lb, showLabel, showNames, showValues, showIcons) end


---@param lb leaderboard
---@param whichItem integer
---@param val integer
function LeaderboardSetItemValue(lb, whichItem, val) end

---@param lb leaderboard
---@param whichItem integer
---@param val string
function LeaderboardSetItemLabel(lb, whichItem, val) end

---@param lb leaderboard
---@param whichItem integer
---@param showLabel boolean
---@param showValue boolean
---@param showIcon boolean
function LeaderboardSetItemStyle(lb, whichItem, showLabel, showValue, showIcon) end

---@param lb leaderboard
---@param whichItem integer
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function LeaderboardSetItemLabelColor(lb, whichItem, red, green, blue, alpha) end

---@param lb leaderboard
---@param whichItem integer
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function LeaderboardSetItemValueColor(lb, whichItem, red, green, blue, alpha) end


--============================================================================
-- Multiboard API
--============================================================================

-- Create a multiboard object
---@return multiboard
function CreateMultiboard() end

---@param lb multiboard
function DestroyMultiboard(lb) end


---@param lb multiboard
---@param show boolean
function MultiboardDisplay(lb, show) end

---@param lb multiboard
---@return boolean
function IsMultiboardDisplayed(lb) end


---@param lb multiboard
---@param minimize boolean
function MultiboardMinimize(lb, minimize) end

---@param lb multiboard
---@return boolean
function IsMultiboardMinimized(lb) end

---@param lb multiboard
function MultiboardClear(lb) end


---@param lb multiboard
---@param label string
function MultiboardSetTitleText(lb, label) end

---@param lb multiboard
---@return string
function MultiboardGetTitleText(lb) end

---@param lb multiboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function MultiboardSetTitleTextColor(lb, red, green, blue, alpha) end


---@param lb multiboard
---@return integer
function MultiboardGetRowCount(lb) end

---@param lb multiboard
---@return integer
function MultiboardGetColumnCount(lb) end


---@param lb multiboard
---@param count integer
function MultiboardSetColumnCount(lb, count) end

---@param lb multiboard
---@param count integer
function MultiboardSetRowCount(lb, count) end


-- broadcast settings to all items
---@param lb multiboard
---@param showValues boolean
---@param showIcons boolean
function MultiboardSetItemsStyle(lb, showValues, showIcons) end

---@param lb multiboard
---@param value string
function MultiboardSetItemsValue(lb, value) end

---@param lb multiboard
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function MultiboardSetItemsValueColor(lb, red, green, blue, alpha) end

---@param lb multiboard
---@param width real
function MultiboardSetItemsWidth(lb, width) end

---@param lb multiboard
---@param iconPath string
function MultiboardSetItemsIcon(lb, iconPath) end



-- funcs for modifying individual items
---@param lb multiboard
---@param row integer
---@param column integer
---@return multiboarditem
function MultiboardGetItem(lb, row, column) end

---@param mbi multiboarditem
function MultiboardReleaseItem(mbi) end


---@param mbi multiboarditem
---@param showValue boolean
---@param showIcon boolean
function MultiboardSetItemStyle(mbi, showValue, showIcon) end

---@param mbi multiboarditem
---@param val string
function MultiboardSetItemValue(mbi, val) end

---@param mbi multiboarditem
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function MultiboardSetItemValueColor(mbi, red, green, blue, alpha) end

---@param mbi multiboarditem
---@param width real
function MultiboardSetItemWidth(mbi, width) end

---@param mbi multiboarditem
---@param iconFileName string
function MultiboardSetItemIcon(mbi, iconFileName) end


-- meant to unequivocally suspend display of existing and
-- subsequently displayed multiboards
--
---@param flag boolean
function MultiboardSuppressDisplay(flag) end


--============================================================================
-- Camera API
---@param x real
---@param y real
function SetCameraPosition(x, y) end

---@param x real
---@param y real
function SetCameraQuickPosition(x, y) end

---@param x1 real
---@param y1 real
---@param x2 real
---@param y2 real
---@param x3 real
---@param y3 real
---@param x4 real
---@param y4 real
function SetCameraBounds(x1, y1, x2, y2, x3, y3, x4, y4) end

function StopCamera() end

---@param duration real
function ResetToGameCamera(duration) end

---@param x real
---@param y real
function PanCameraTo(x, y) end

---@param x real
---@param y real
---@param duration real
function PanCameraToTimed(x, y, duration) end

---@param x real
---@param y real
---@param zOffsetDest real
function PanCameraToWithZ(x, y, zOffsetDest) end

---@param x real
---@param y real
---@param zOffsetDest real
---@param duration real
function PanCameraToTimedWithZ(x, y, zOffsetDest, duration) end

---@param cameraModelFile string
function SetCinematicCamera(cameraModelFile) end

---@param x real
---@param y real
---@param radiansToSweep real
---@param duration real
function SetCameraRotateMode(x, y, radiansToSweep, duration) end

---@param whichField camerafield
---@param value real
---@param duration real
function SetCameraField(whichField, value, duration) end

---@param whichField camerafield
---@param offset real
---@param duration real
function AdjustCameraField(whichField, offset, duration) end

---@param whichUnit unit
---@param xoffset real
---@param yoffset real
---@param inheritOrientation boolean
function SetCameraTargetController(whichUnit, xoffset, yoffset, inheritOrientation) end

---@param whichUnit unit
---@param xoffset real
---@param yoffset real
function SetCameraOrientController(whichUnit, xoffset, yoffset) end


---@return camerasetup
function CreateCameraSetup() end

---@param whichSetup camerasetup
---@param whichField camerafield
---@param value real
---@param duration real
function CameraSetupSetField(whichSetup, whichField, value, duration) end

---@param whichSetup camerasetup
---@param whichField camerafield
---@return real
function CameraSetupGetField(whichSetup, whichField) end

---@param whichSetup camerasetup
---@param x real
---@param y real
---@param duration real
function CameraSetupSetDestPosition(whichSetup, x, y, duration) end

---@param whichSetup camerasetup
---@return location
function CameraSetupGetDestPositionLoc(whichSetup) end

---@param whichSetup camerasetup
---@return real
function CameraSetupGetDestPositionX(whichSetup) end

---@param whichSetup camerasetup
---@return real
function CameraSetupGetDestPositionY(whichSetup) end

---@param whichSetup camerasetup
---@param doPan boolean
---@param panTimed boolean
function CameraSetupApply(whichSetup, doPan, panTimed) end

---@param whichSetup camerasetup
---@param zDestOffset real
function CameraSetupApplyWithZ(whichSetup, zDestOffset) end

---@param whichSetup camerasetup
---@param doPan boolean
---@param forceDuration real
function CameraSetupApplyForceDuration(whichSetup, doPan, forceDuration) end

---@param whichSetup camerasetup
---@param zDestOffset real
---@param forceDuration real
function CameraSetupApplyForceDurationWithZ(whichSetup, zDestOffset, forceDuration) end


---@param mag real
---@param velocity real
function CameraSetTargetNoise(mag, velocity) end

---@param mag real
---@param velocity real
function CameraSetSourceNoise(mag, velocity) end


---@param mag real
---@param velocity real
---@param vertOnly boolean
function CameraSetTargetNoiseEx(mag, velocity, vertOnly) end

---@param mag real
---@param velocity real
---@param vertOnly boolean
function CameraSetSourceNoiseEx(mag, velocity, vertOnly) end


---@param factor real
function CameraSetSmoothingFactor(factor) end


---@param filename string
function SetCineFilterTexture(filename) end

---@param whichMode blendmode
function SetCineFilterBlendMode(whichMode) end

---@param whichFlags texmapflags
function SetCineFilterTexMapFlags(whichFlags) end

---@param minu real
---@param minv real
---@param maxu real
---@param maxv real
function SetCineFilterStartUV(minu, minv, maxu, maxv) end

---@param minu real
---@param minv real
---@param maxu real
---@param maxv real
function SetCineFilterEndUV(minu, minv, maxu, maxv) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetCineFilterStartColor(red, green, blue, alpha) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetCineFilterEndColor(red, green, blue, alpha) end

---@param duration real
function SetCineFilterDuration(duration) end

---@param flag boolean
function DisplayCineFilter(flag) end

---@return boolean
function IsCineFilterDisplayed() end


---@param portraitUnitId integer
---@param color playercolor
---@param speakerTitle string
---@param text string
---@param sceneDuration real
---@param voiceoverDuration real
function SetCinematicScene(portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration) end

function EndCinematicScene() end

---@param flag boolean
function ForceCinematicSubtitles(flag) end


---@param whichMargin integer
---@return real
function GetCameraMargin(whichMargin) end


-- These return values for the local players camera only...
---@return real
function GetCameraBoundMinX() end

---@return real
function GetCameraBoundMinY() end

---@return real
function GetCameraBoundMaxX() end

---@return real
function GetCameraBoundMaxY() end

---@param whichField camerafield
---@return real
function GetCameraField(whichField) end

---@return real
function GetCameraTargetPositionX() end

---@return real
function GetCameraTargetPositionY() end

---@return real
function GetCameraTargetPositionZ() end

---@return location
function GetCameraTargetPositionLoc() end

---@return real
function GetCameraEyePositionX() end

---@return real
function GetCameraEyePositionY() end

---@return real
function GetCameraEyePositionZ() end

---@return location
function GetCameraEyePositionLoc() end


--============================================================================
-- Sound API
--
---@param environmentName string
function NewSoundEnvironment(environmentName) end


---@param fileName string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@param eaxSetting string
---@return sound
function CreateSound(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, eaxSetting) end

---@param fileName string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@param SLKEntryName string
---@return sound
function CreateSoundFilenameWithLabel(fileName, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate, SLKEntryName) end

---@param soundLabel string
---@param looping boolean
---@param is3D boolean
---@param stopwhenoutofrange boolean
---@param fadeInRate integer
---@param fadeOutRate integer
---@return sound
function CreateSoundFromLabel(soundLabel, looping, is3D, stopwhenoutofrange, fadeInRate, fadeOutRate) end

---@param soundLabel string
---@param fadeInRate integer
---@param fadeOutRate integer
---@return sound
function CreateMIDISound(soundLabel, fadeInRate, fadeOutRate) end


---@param soundHandle sound
---@param soundLabel string
function SetSoundParamsFromLabel(soundHandle, soundLabel) end

---@param soundHandle sound
---@param cutoff real
function SetSoundDistanceCutoff(soundHandle, cutoff) end

---@param soundHandle sound
---@param channel integer
function SetSoundChannel(soundHandle, channel) end

---@param soundHandle sound
---@param volume integer
function SetSoundVolume(soundHandle, volume) end

---@param soundHandle sound
---@param pitch real
function SetSoundPitch(soundHandle, pitch) end


-- the following method must be called immediately after calling "StartSound"
---@param soundHandle sound
---@param millisecs integer
function SetSoundPlayPosition(soundHandle, millisecs) end


-- these calls are only valid if the sound was created with 3d enabled
---@param soundHandle sound
---@param minDist real
---@param maxDist real
function SetSoundDistances(soundHandle, minDist, maxDist) end

---@param soundHandle sound
---@param inside real
---@param outside real
---@param outsideVolume integer
function SetSoundConeAngles(soundHandle, inside, outside, outsideVolume) end

---@param soundHandle sound
---@param x real
---@param y real
---@param z real
function SetSoundConeOrientation(soundHandle, x, y, z) end

---@param soundHandle sound
---@param x real
---@param y real
---@param z real
function SetSoundPosition(soundHandle, x, y, z) end

---@param soundHandle sound
---@param x real
---@param y real
---@param z real
function SetSoundVelocity(soundHandle, x, y, z) end

---@param soundHandle sound
---@param whichUnit unit
function AttachSoundToUnit(soundHandle, whichUnit) end


---@param soundHandle sound
function StartSound(soundHandle) end

---@param soundHandle sound
---@param killWhenDone boolean
---@param fadeOut boolean
function StopSound(soundHandle, killWhenDone, fadeOut) end

---@param soundHandle sound
function KillSoundWhenDone(soundHandle) end


-- Music Interface. Note that if music is disabled, these calls do nothing
---@param musicName string
---@param random boolean
---@param index integer
function SetMapMusic(musicName, random, index) end

function ClearMapMusic() end


---@param musicName string
function PlayMusic(musicName) end

---@param musicName string
---@param frommsecs integer
---@param fadeinmsecs integer
function PlayMusicEx(musicName, frommsecs, fadeinmsecs) end

---@param fadeOut boolean
function StopMusic(fadeOut) end

function ResumeMusic() end


---@param musicFileName string
function PlayThematicMusic(musicFileName) end

---@param musicFileName string
---@param frommsecs integer
function PlayThematicMusicEx(musicFileName, frommsecs) end

function EndThematicMusic() end


---@param volume integer
function SetMusicVolume(volume) end

---@param millisecs integer
function SetMusicPlayPosition(millisecs) end

---@param millisecs integer
function SetThematicMusicPlayPosition(millisecs) end


-- other music and sound calls
---@param soundHandle sound
---@param duration integer
function SetSoundDuration(soundHandle, duration) end

---@param soundHandle sound
---@return integer
function GetSoundDuration(soundHandle) end

---@param musicFileName string
---@return integer
function GetSoundFileDuration(musicFileName) end


---@param vgroup volumegroup
---@param scale real
function VolumeGroupSetVolume(vgroup, scale) end

function VolumeGroupReset() end


---@param soundHandle sound
---@return boolean
function GetSoundIsPlaying(soundHandle) end

---@param soundHandle sound
---@return boolean
function GetSoundIsLoading(soundHandle) end


---@param soundHandle sound
---@param byPosition boolean
---@param rectwidth real
---@param rectheight real
function RegisterStackedSound(soundHandle, byPosition, rectwidth, rectheight) end

---@param soundHandle sound
---@param byPosition boolean
---@param rectwidth real
---@param rectheight real
function UnregisterStackedSound(soundHandle, byPosition, rectwidth, rectheight) end


--============================================================================
-- Effects API
--
---@param where rect
---@param effectID integer
---@return weathereffect
function AddWeatherEffect(where, effectID) end

---@param whichEffect weathereffect
function RemoveWeatherEffect(whichEffect) end

---@param whichEffect weathereffect
---@param enable boolean
function EnableWeatherEffect(whichEffect, enable) end


---@param x real
---@param y real
---@param radius real
---@param depth real
---@param duration integer
---@param permanent boolean
---@return terraindeformation
function TerrainDeformCrater(x, y, radius, depth, duration, permanent) end

---@param x real
---@param y real
---@param radius real
---@param depth real
---@param duration integer
---@param count integer
---@param spaceWaves real
---@param timeWaves real
---@param radiusStartPct real
---@param limitNeg boolean
---@return terraindeformation
function TerrainDeformRipple(x, y, radius, depth, duration, count, spaceWaves, timeWaves, radiusStartPct, limitNeg) end

---@param x real
---@param y real
---@param dirX real
---@param dirY real
---@param distance real
---@param speed real
---@param radius real
---@param depth real
---@param trailTime integer
---@param count integer
---@return terraindeformation
function TerrainDeformWave(x, y, dirX, dirY, distance, speed, radius, depth, trailTime, count) end

---@param x real
---@param y real
---@param radius real
---@param minDelta real
---@param maxDelta real
---@param duration integer
---@param updateInterval integer
---@return terraindeformation
function TerrainDeformRandom(x, y, radius, minDelta, maxDelta, duration, updateInterval) end

---@param deformation terraindeformation
---@param duration integer
function TerrainDeformStop(deformation, duration) end

function TerrainDeformStopAll() end


---@param modelName string
---@param x real
---@param y real
---@return effect
function AddSpecialEffect(modelName, x, y) end

---@param modelName string
---@param where location
---@return effect
function AddSpecialEffectLoc(modelName, where) end

---@param modelName string
---@param targetWidget widget
---@param attachPointName string
---@return effect
function AddSpecialEffectTarget(modelName, targetWidget, attachPointName) end

---@param whichEffect effect
function DestroyEffect(whichEffect) end


---@param abilityString string
---@param t effecttype
---@param x real
---@param y real
---@return effect
function AddSpellEffect(abilityString, t, x, y) end

---@param abilityString string
---@param t effecttype
---@param where location
---@return effect
function AddSpellEffectLoc(abilityString, t,where) end

---@param abilityId integer
---@param t effecttype
---@param x real
---@param y real
---@return effect
function AddSpellEffectById(abilityId, t,x, y) end

---@param abilityId integer
---@param t effecttype
---@param where location
---@return effect
function AddSpellEffectByIdLoc(abilityId, t,where) end

---@param modelName string
---@param t effecttype
---@param targetWidget widget
---@param attachPoint string
---@return effect
function AddSpellEffectTarget(modelName, t, targetWidget, attachPoint) end

---@param abilityId integer
---@param t effecttype
---@param targetWidget widget
---@param attachPoint string
---@return effect
function AddSpellEffectTargetById(abilityId, t, targetWidget, attachPoint) end


---@param codeName string
---@param checkVisibility boolean
---@param x1 real
---@param y1 real
---@param x2 real
---@param y2 real
---@return lightning
function AddLightning(codeName, checkVisibility, x1, y1, x2, y2) end

---@param codeName string
---@param checkVisibility boolean
---@param x1 real
---@param y1 real
---@param z1 real
---@param x2 real
---@param y2 real
---@param z2 real
---@return lightning
function AddLightningEx(codeName, checkVisibility, x1, y1, z1, x2, y2, z2) end

---@param whichBolt lightning
---@return boolean
function DestroyLightning(whichBolt) end

---@param whichBolt lightning
---@param checkVisibility boolean
---@param x1 real
---@param y1 real
---@param x2 real
---@param y2 real
---@return boolean
function MoveLightning(whichBolt, checkVisibility, x1, y1, x2, y2) end

---@param whichBolt lightning
---@param checkVisibility boolean
---@param x1 real
---@param y1 real
---@param z1 real
---@param x2 real
---@param y2 real
---@param z2 real
---@return boolean
function MoveLightningEx(whichBolt, checkVisibility, x1, y1, z1, x2, y2, z2) end

---@param whichBolt lightning
---@return real
function GetLightningColorA(whichBolt) end

---@param whichBolt lightning
---@return real
function GetLightningColorR(whichBolt) end

---@param whichBolt lightning
---@return real
function GetLightningColorG(whichBolt) end

---@param whichBolt lightning
---@return real
function GetLightningColorB(whichBolt) end

---@param whichBolt lightning
---@param r real
---@param g real
---@param b real
---@param a real
---@return boolean
function SetLightningColor(whichBolt, r, g, b, a) end


---@param abilityString string
---@param t effecttype
---@param index integer
---@return string
function GetAbilityEffect(abilityString, t, index) end

---@param abilityId integer
---@param t effecttype
---@param index integer
---@return string
function GetAbilityEffectById(abilityId, t, index) end

---@param abilityString string
---@param t soundtype
---@return string
function GetAbilitySound(abilityString, t) end

---@param abilityId integer
---@param t soundtype
---@return string
function GetAbilitySoundById(abilityId, t) end


--============================================================================
-- Terrain API
--
---@param x real
---@param y real
---@return integer
function GetTerrainCliffLevel(x, y) end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetWaterBaseColor(red, green, blue, alpha) end

---@param val boolean
function SetWaterDeforms(val) end

---@param x real
---@param y real
---@return integer
function GetTerrainType(x, y) end

---@param x real
---@param y real
---@return integer
function GetTerrainVariance(x, y) end

---@param x real
---@param y real
---@param terrainType integer
---@param variation integer
---@param area integer
---@param shape integer
function SetTerrainType(x, y, terrainType, variation, area, shape) end

---@param x real
---@param y real
---@param t pathingtype
---@return boolean
function IsTerrainPathable(x, y, t) end

---@param x real
---@param y real
---@param t pathingtype
---@param flag boolean
function SetTerrainPathable(x, y, t, flag) end


--============================================================================
-- Image API
--
---@param file string
---@param sizeX real
---@param sizeY real
---@param sizeZ real
---@param posX real
---@param posY real
---@param posZ real
---@param originX real
---@param originY real
---@param originZ real
---@param imageType integer
---@return image
function CreateImage(file, sizeX, sizeY, sizeZ, posX, posY, posZ, originX, originY, originZ, imageType) end

---@param whichImage image
function DestroyImage(whichImage) end

---@param whichImage image
---@param flag boolean
function ShowImage(whichImage, flag) end

---@param whichImage image
---@param flag boolean
---@param height real
function SetImageConstantHeight(whichImage, flag, height) end

---@param whichImage image
---@param x real
---@param y real
---@param z real
function SetImagePosition(whichImage, x, y, z) end

---@param whichImage image
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function SetImageColor(whichImage, red, green, blue, alpha) end

---@param whichImage image
---@param flag boolean
function SetImageRender(whichImage, flag) end

---@param whichImage image
---@param flag boolean
function SetImageRenderAlways(whichImage, flag) end

---@param whichImage image
---@param flag boolean
---@param useWaterAlpha boolean
function SetImageAboveWater(whichImage, flag, useWaterAlpha) end

---@param whichImage image
---@param imageType integer
function SetImageType(whichImage, imageType) end


--============================================================================
-- Ubersplat API
--
---@param x real
---@param y real
---@param name string
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param forcePaused boolean
---@param noBirthTime boolean
---@return ubersplat
function CreateUbersplat(x, y, name, red, green, blue, alpha, forcePaused, noBirthTime) end

---@param whichSplat ubersplat
function DestroyUbersplat(whichSplat) end

---@param whichSplat ubersplat
function ResetUbersplat(whichSplat) end

---@param whichSplat ubersplat
function FinishUbersplat(whichSplat) end

---@param whichSplat ubersplat
---@param flag boolean
function ShowUbersplat(whichSplat, flag) end

---@param whichSplat ubersplat
---@param flag boolean
function SetUbersplatRender(whichSplat, flag) end

---@param whichSplat ubersplat
---@param flag boolean
function SetUbersplatRenderAlways(whichSplat, flag) end


--============================================================================
-- Blight API
--
---@param whichPlayer player
---@param x real
---@param y real
---@param radius real
---@param addBlight boolean
function SetBlight(whichPlayer, x, y, radius, addBlight) end

---@param whichPlayer player
---@param r rect
---@param addBlight boolean
function SetBlightRect(whichPlayer, r, addBlight) end

---@param whichPlayer player
---@param x real
---@param y real
---@param addBlight boolean
function SetBlightPoint(whichPlayer, x, y, addBlight) end

---@param whichPlayer player
---@param whichLocation location
---@param radius real
---@param addBlight boolean
function SetBlightLoc(whichPlayer, whichLocation, radius, addBlight) end

---@param id player
---@param x real
---@param y real
---@param face real
---@return unit
function CreateBlightedGoldmine(id, x, y, face) end

---@param x real
---@param y real
---@return boolean
function IsPointBlighted(x, y) end


--============================================================================
-- Doodad API
--
---@param x real
---@param y real
---@param radius real
---@param doodadID integer
---@param nearestOnly boolean
---@param animName string
---@param animRandom boolean
function SetDoodadAnimation(x, y, radius, doodadID, nearestOnly, animName, animRandom) end

---@param r rect
---@param doodadID integer
---@param animName string
---@param animRandom boolean
function SetDoodadAnimationRect(r, doodadID, animName, animRandom) end


--============================================================================
-- Computer AI interface
--
---@param num player
---@param script string
function StartMeleeAI(num, script) end

---@param num player
---@param script string
function StartCampaignAI(num, script) end

---@param num player
---@param command integer
---@param data integer
function CommandAI(num, command, data) end

---@param p player
---@param pause boolean
function PauseCompAI(p,   pause) end

---@param num player
---@return aidifficulty
function GetAIDifficulty(num) end


---@param hUnit unit
function RemoveGuardPosition(hUnit) end

---@param hUnit unit
function RecycleGuardPosition(hUnit) end

---@param num player
function RemoveAllGuardPositions(num) end


--============================================================================
---@param cheatStr string
function Cheat(cheatStr) end

---@return boolean
function IsNoVictoryCheat() end

---@return boolean
function IsNoDefeatCheat() end


---@param filename string
function Preload(filename) end

---@param timeout real
function PreloadEnd(timeout) end


function PreloadStart() end

function PreloadRefresh() end

function PreloadEndEx() end


function PreloadGenClear() end

function PreloadGenStart() end

---@param filename string
function PreloadGenEnd(filename) end

---@param filename string
function Preloader(filename) end


-- Automation Test
---@param testType string
function AutomationSetTestType(testType) end

---@param testName string
function AutomationTestStart(testName) end

function AutomationTestEnd() end

function AutomationTestingFinished() end


-- JAPI Functions
---@return real
function BlzGetTriggerPlayerMouseX() end

---@return real
function BlzGetTriggerPlayerMouseY() end

---@return location
function BlzGetTriggerPlayerMousePosition() end

---@return mousebuttontype
function BlzGetTriggerPlayerMouseButton() end

---@param abilCode integer
---@param tooltip string
---@param level integer
function BlzSetAbilityTooltip(abilCode, tooltip, level) end

---@param abilCode integer
---@param tooltip string
---@param level integer
function BlzSetAbilityActivatedTooltip(abilCode, tooltip, level) end

---@param abilCode integer
---@param extendedTooltip string
---@param level integer
function BlzSetAbilityExtendedTooltip(abilCode, extendedTooltip, level) end

---@param abilCode integer
---@param extendedTooltip string
---@param level integer
function BlzSetAbilityActivatedExtendedTooltip(abilCode, extendedTooltip, level) end

---@param abilCode integer
---@param researchTooltip string
---@param level integer
function BlzSetAbilityResearchTooltip(abilCode, researchTooltip, level) end

---@param abilCode integer
---@param researchExtendedTooltip string
---@param level integer
function BlzSetAbilityResearchExtendedTooltip(abilCode, researchExtendedTooltip, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityActivatedTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityExtendedTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityActivatedExtendedTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityResearchTooltip(abilCode, level) end

---@param abilCode integer
---@param level integer
---@return string
function BlzGetAbilityResearchExtendedTooltip(abilCode, level) end

---@param abilCode integer
---@param iconPath string
function BlzSetAbilityIcon(abilCode, iconPath) end

---@param abilCode integer
---@return string
function BlzGetAbilityIcon(abilCode) end

---@param abilCode integer
---@param iconPath string
function BlzSetAbilityActivatedIcon(abilCode, iconPath) end

---@param abilCode integer
---@return string
function BlzGetAbilityActivatedIcon(abilCode) end

---@param abilCode integer
---@return integer
function BlzGetAbilityPosX(abilCode) end

---@param abilCode integer
---@return integer
function BlzGetAbilityPosY(abilCode) end

---@param abilCode integer
---@param x integer
function BlzSetAbilityPosX(abilCode, x) end

---@param abilCode integer
---@param y integer
function BlzSetAbilityPosY(abilCode, y) end

---@param abilCode integer
---@return integer
function BlzGetAbilityActivatedPosX(abilCode) end

---@param abilCode integer
---@return integer
function BlzGetAbilityActivatedPosY(abilCode) end

---@param abilCode integer
---@param x integer
function BlzSetAbilityActivatedPosX(abilCode, x) end

---@param abilCode integer
---@param y integer
function BlzSetAbilityActivatedPosY(abilCode, y) end

---@param whichUnit unit
---@return integer
function BlzGetUnitMaxHP(whichUnit) end

---@param whichUnit unit
---@param hp integer
function BlzSetUnitMaxHP(whichUnit, hp) end

---@param whichUnit unit
---@return integer
function BlzGetUnitMaxMana(whichUnit) end

---@param whichUnit unit
---@param mana integer
function BlzSetUnitMaxMana(whichUnit, mana) end

---@param whichItem item
---@param name string
function BlzSetItemName(whichItem, name) end

---@param whichItem item
---@param description string
function BlzSetItemDescription(whichItem, description) end

---@param whichItem item
---@return string
function BlzGetItemDescription(whichItem) end

---@param whichItem item
---@param tooltip string
function BlzSetItemTooltip(whichItem, tooltip) end

---@param whichItem item
---@return string
function BlzGetItemTooltip(whichItem) end

---@param whichItem item
---@param extendedTooltip string
function BlzSetItemExtendedTooltip(whichItem, extendedTooltip) end

---@param whichItem item
---@return string
function BlzGetItemExtendedTooltip(whichItem) end

---@param whichItem item
---@param iconPath string
function BlzSetItemIconPath(whichItem, iconPath) end

---@param whichItem item
---@return string
function BlzGetItemIconPath(whichItem) end

---@param whichUnit unit
---@param name string
function BlzSetUnitName(whichUnit, name) end

---@param whichUnit unit
---@param heroProperName string
function BlzSetHeroProperName(whichUnit, heroProperName) end

---@param whichUnit unit
---@param weaponIndex integer
---@return integer
function BlzGetUnitBaseDamage(whichUnit, weaponIndex) end

---@param whichUnit unit
---@param baseDamage integer
---@param weaponIndex integer
function BlzSetUnitBaseDamage(whichUnit, baseDamage, weaponIndex) end

---@param whichUnit unit
---@param weaponIndex integer
---@return integer
function BlzGetUnitDiceNumber(whichUnit, weaponIndex) end

---@param whichUnit unit
---@param diceNumber integer
---@param weaponIndex integer
function BlzSetUnitDiceNumber(whichUnit, diceNumber, weaponIndex) end

---@param whichUnit unit
---@param weaponIndex integer
---@return integer
function BlzGetUnitDiceSides(whichUnit, weaponIndex) end

---@param whichUnit unit
---@param diceSides integer
---@param weaponIndex integer
function BlzSetUnitDiceSides(whichUnit, diceSides, weaponIndex) end

---@param whichUnit unit
---@param weaponIndex integer
---@return real
function BlzGetUnitAttackCooldown(whichUnit, weaponIndex) end

---@param whichUnit unit
---@param cooldown real
---@param weaponIndex integer
function BlzSetUnitAttackCooldown(whichUnit, cooldown, weaponIndex) end

---@param whichEffect effect
---@param whichPlayer player
function BlzSetSpecialEffectColorByPlayer(whichEffect, whichPlayer) end

---@param whichEffect effect
---@param r integer
---@param g integer
---@param b integer
function BlzSetSpecialEffectColor(whichEffect, r, g, b) end

---@param whichEffect effect
---@param alpha integer
function BlzSetSpecialEffectAlpha(whichEffect, alpha) end

---@param whichEffect effect
---@param scale real
function BlzSetSpecialEffectScale(whichEffect, scale) end

---@param whichEffect effect
---@param x real
---@param y real
---@param z real
function BlzSetSpecialEffectPosition(whichEffect, x, y, z) end

---@param whichEffect effect
---@param height real
function BlzSetSpecialEffectHeight(whichEffect, height) end

---@param whichEffect effect
---@param timeScale real
function BlzSetSpecialEffectTimeScale(whichEffect, timeScale) end

---@param whichEffect effect
---@param time real
function BlzSetSpecialEffectTime(whichEffect, time) end

---@param whichEffect effect
---@param yaw real
---@param pitch real
---@param roll real
function BlzSetSpecialEffectOrientation(whichEffect, yaw, pitch, roll) end

---@param whichEffect effect
---@param yaw real
function BlzSetSpecialEffectYaw(whichEffect, yaw) end

---@param whichEffect effect
---@param pitch real
function BlzSetSpecialEffectPitch(whichEffect, pitch) end

---@param whichEffect effect
---@param roll real
function BlzSetSpecialEffectRoll(whichEffect, roll) end

---@param whichEffect effect
---@param x real
function BlzSetSpecialEffectX(whichEffect, x) end

---@param whichEffect effect
---@param y real
function BlzSetSpecialEffectY(whichEffect, y) end

---@param whichEffect effect
---@param z real
function BlzSetSpecialEffectZ(whichEffect, z) end

---@param whichEffect effect
---@param loc location
function BlzSetSpecialEffectPositionLoc(whichEffect, loc) end

---@param whichEffect effect
---@return real
function BlzGetLocalSpecialEffectX(whichEffect) end

---@param whichEffect effect
---@return real
function BlzGetLocalSpecialEffectY(whichEffect) end

---@param whichEffect effect
---@return real
function BlzGetLocalSpecialEffectZ(whichEffect) end

---@param whichEffect effect
function BlzSpecialEffectClearSubAnimations(whichEffect) end

---@param whichEffect effect
---@param whichSubAnim subanimtype
function BlzSpecialEffectRemoveSubAnimation(whichEffect, whichSubAnim) end

---@param whichEffect effect
---@param whichSubAnim subanimtype
function BlzSpecialEffectAddSubAnimation(whichEffect, whichSubAnim) end

---@param whichEffect effect
---@param whichAnim animtype
function BlzPlaySpecialEffect(whichEffect, whichAnim) end

---@param whichEffect effect
---@param whichAnim animtype
---@param timeScale real
function BlzPlaySpecialEffectWithTimeScale(whichEffect, whichAnim, timeScale) end

---@param whichAnim animtype
---@return string
function BlzGetAnimName(whichAnim) end

---@param whichUnit unit
---@return real
function BlzGetUnitArmor(whichUnit) end

---@param whichUnit unit
---@param armorAmount real
function BlzSetUnitArmor(whichUnit, armorAmount) end

---@param whichUnit unit
---@param abilId integer
---@param flag boolean
function BlzUnitHideAbility(whichUnit, abilId, flag) end

---@param whichUnit unit
---@param abilId integer
---@param flag boolean
---@param hideUI boolean
function BlzUnitDisableAbility(whichUnit, abilId, flag, hideUI) end

---@param whichUnit unit
function BlzUnitCancelTimedLife(whichUnit) end

---@param whichUnit unit
---@return boolean
function BlzIsUnitSelectable(whichUnit) end

---@param whichUnit unit
---@return boolean
function BlzIsUnitInvulnerable(whichUnit) end

---@param whichUnit unit
function BlzUnitInterruptAttack(whichUnit) end

---@param whichUnit unit
---@return real
function BlzGetUnitCollisionSize(whichUnit) end

---@param abilId integer
---@param level integer
---@return integer
function BlzGetAbilityManaCost(abilId, level) end

---@param abilId integer
---@param level integer
---@return real
function BlzGetAbilityCooldown(abilId, level) end

---@param whichUnit unit
---@param abilId integer
---@param level integer
---@param cooldown real
function BlzSetUnitAbilityCooldown(whichUnit, abilId, level, cooldown) end

---@param whichUnit unit
---@param abilId integer
---@param level integer
---@return real
function BlzGetUnitAbilityCooldown(whichUnit, abilId, level) end

---@param whichUnit unit
---@param abilId integer
---@return real
function BlzGetUnitAbilityCooldownRemaining(whichUnit, abilId) end

---@param whichUnit unit
---@param abilCode integer
function BlzEndUnitAbilityCooldown(whichUnit, abilCode) end

---@param whichUnit unit
---@param abilId integer
---@param level integer
---@return integer
function BlzGetUnitAbilityManaCost(whichUnit, abilId, level) end

---@param whichUnit unit
---@param abilId integer
---@param level integer
---@param manaCost integer
function BlzSetUnitAbilityManaCost(whichUnit, abilId, level, manaCost) end

---@param whichUnit unit
---@return real
function BlzGetLocalUnitZ(whichUnit) end

---@param whichPlayer player
---@param techid integer
---@param levels integer
function BlzDecPlayerTechResearched(whichPlayer, techid, levels) end

---@param damage real
function BlzSetEventDamage(damage) end

---@return unit
function BlzGetEventDamageTarget() end

---@return attacktype
function BlzGetEventAttackType() end

---@return damagetype
function BlzGetEventDamageType() end

---@return weapontype
function BlzGetEventWeaponType() end

---@param attackType attacktype
---@return boolean
function BlzSetEventAttackType(attackType) end

---@param damageType damagetype
---@return boolean
function BlzSetEventDamageType(damageType) end

---@param weaponType weapontype
---@return boolean
function BlzSetEventWeaponType(weaponType) end

---@param dataType integer
---@param whichPlayer player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return integer
function RequestExtraIntegerData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6) end

---@param dataType integer
---@param whichPlayer player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return boolean
function RequestExtraBooleanData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6) end

---@param dataType integer
---@param whichPlayer player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return string
function RequestExtraStringData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6) end

---@param dataType integer
---@param whichPlayer player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return real
function RequestExtraRealData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6) end

-- Add this function to follow the style of GetUnitX and GetUnitY, it has the same result as BlzGetLocalUnitZ
---@param whichUnit unit
---@return real
function BlzGetUnitZ(whichUnit) end

---@param enableSelection boolean
---@param enableSelectionCircle boolean
function BlzEnableSelections(enableSelection, enableSelectionCircle) end

---@return boolean
function BlzIsSelectionEnabled() end

---@return boolean
function BlzIsSelectionCircleEnabled() end

---@param whichSetup camerasetup
---@param doPan boolean
---@param forcedDuration real
---@param easeInDuration real
---@param easeOutDuration real
---@param smoothFactor real
function BlzCameraSetupApplyForceDurationSmooth(whichSetup, doPan, forcedDuration, easeInDuration, easeOutDuration, smoothFactor) end

---@param enable boolean
function BlzEnableTargetIndicator(enable) end

---@return boolean
function BlzIsTargetIndicatorEnabled() end


---@param frameType originframetype
---@param index integer
---@return framehandle
function BlzGetOriginFrame(frameType, index) end

---@param enable boolean
function BlzEnableUIAutoPosition(enable) end

---@param enable boolean
function BlzHideOriginFrames(enable) end

---@param a integer
---@param r integer
---@param g integer
---@param b integer
---@return integer
function BlzConvertColor(a, r, g, b) end

---@param TOCFile string
---@return boolean
function BlzLoadTOCFile(TOCFile) end

---@param name string
---@param owner framehandle
---@param priority integer
---@param createContext integer
---@return framehandle
function BlzCreateFrame(name, owner, priority, createContext) end

---@param name string
---@param owner framehandle
---@param createContext integer
---@return framehandle
function BlzCreateSimpleFrame(name, owner, createContext) end

---@param typeName string
---@param name string
---@param owner framehandle
---@param inherits string
---@param createContext integer
---@return framehandle
function BlzCreateFrameByType(typeName, name, owner, inherits, createContext) end

---@param frame framehandle
function BlzDestroyFrame(frame) end

---@param frame framehandle
---@param point framepointtype
---@param relative framehandle
---@param relativePoint framepointtype
---@param x real
---@param y real
function BlzFrameSetPoint(frame, point, relative, relativePoint, x, y) end

---@param frame framehandle
---@param point framepointtype
---@param x real
---@param y real
function BlzFrameSetAbsPoint(frame, point, x, y) end

---@param frame framehandle
function BlzFrameClearAllPoints(frame) end

---@param frame framehandle
---@param relative framehandle
function BlzFrameSetAllPoints(frame, relative) end

---@param frame framehandle
---@param visible boolean
function BlzFrameSetVisible(frame, visible) end

---@param frame framehandle
---@return boolean
function BlzFrameIsVisible(frame) end

---@param name string
---@param createContext integer
---@return framehandle
function BlzGetFrameByName(name, createContext) end

---@param frame framehandle
---@return string
function BlzFrameGetName(frame) end

---@param frame framehandle
function BlzFrameClick(frame) end

---@param frame framehandle
---@param text string
function BlzFrameSetText(frame, text) end

---@param frame framehandle
---@return string
function BlzFrameGetText(frame) end

---@param frame framehandle
---@param text string
function BlzFrameAddText(frame, text) end

---@param frame framehandle
---@param size integer
function BlzFrameSetTextSizeLimit(frame, size) end

---@param frame framehandle
---@return integer
function BlzFrameGetTextSizeLimit(frame) end

---@param frame framehandle
---@param color integer
function BlzFrameSetTextColor(frame, color) end

---@param frame framehandle
---@param flag boolean
function BlzFrameSetFocus(frame, flag) end

---@param frame framehandle
---@param modelFile string
---@param cameraIndex integer
function BlzFrameSetModel(frame, modelFile, cameraIndex) end

---@param frame framehandle
---@param enabled boolean
function BlzFrameSetEnable(frame, enabled) end

---@param frame framehandle
---@return boolean
function BlzFrameGetEnable(frame) end

---@param frame framehandle
---@param alpha integer
function BlzFrameSetAlpha(frame, alpha) end

---@param frame framehandle
---@return integer
function BlzFrameGetAlpha(frame) end

---@param frame framehandle
---@param primaryProp integer
---@param flags integer
function BlzFrameSetSpriteAnimate(frame, primaryProp, flags) end

---@param frame framehandle
---@param texFile string
---@param flag integer
---@param blend boolean
function BlzFrameSetTexture(frame, texFile, flag, blend) end

---@param frame framehandle
---@param scale real
function BlzFrameSetScale(frame, scale) end

---@param frame framehandle
---@param tooltip framehandle
function BlzFrameSetTooltip(frame, tooltip) end

---@param frame framehandle
---@param enable boolean
function BlzFrameCageMouse(frame, enable) end

---@param frame framehandle
---@param value real
function BlzFrameSetValue(frame, value) end

---@param frame framehandle
---@return real
function BlzFrameGetValue(frame) end

---@param frame framehandle
---@param minValue real
---@param maxValue real
function BlzFrameSetMinMaxValue(frame, minValue, maxValue) end

---@param frame framehandle
---@param stepSize real
function BlzFrameSetStepSize(frame, stepSize) end

---@param frame framehandle
---@param width real
---@param height real
function BlzFrameSetSize(frame, width, height) end

---@param frame framehandle
---@param color integer
function BlzFrameSetVertexColor(frame, color) end

---@param frame framehandle
---@param level integer
function BlzFrameSetLevel(frame, level) end

---@param frame framehandle
---@param parent framehandle
function BlzFrameSetParent(frame, parent) end

---@param frame framehandle
---@return framehandle
function BlzFrameGetParent(frame) end

---@param frame framehandle
---@return real
function BlzFrameGetHeight(frame) end

---@param frame framehandle
---@return real
function BlzFrameGetWidth(frame) end

---@param frame framehandle
---@param fileName string
---@param height real
---@param flags integer
function BlzFrameSetFont(frame, fileName, height, flags) end

---@param frame framehandle
---@param vert textaligntype
---@param horz textaligntype
function BlzFrameSetTextAlignment(frame, vert, horz) end

---@param whichTrigger trigger
---@param frame framehandle
---@param eventId frameeventtype
---@return event
function BlzTriggerRegisterFrameEvent(whichTrigger, frame, eventId) end

---@return framehandle
function BlzGetTriggerFrame() end

---@return frameeventtype
function BlzGetTriggerFrameEvent() end

---@return real
function BlzGetTriggerFrameValue() end

---@return string
function BlzGetTriggerFrameText() end

---@param whichTrigger trigger
---@param whichPlayer player
---@param prefix string
---@param fromServer boolean
---@return event
function BlzTriggerRegisterPlayerSyncEvent(whichTrigger, whichPlayer, prefix, fromServer) end

---@param prefix string
---@param data string
---@return boolean
function BlzSendSyncData(prefix, data) end

---@return string
function BlzGetTriggerSyncPrefix() end

---@return string
function BlzGetTriggerSyncData() end

---@param whichTrigger trigger
---@param whichPlayer player
---@param key oskeytype
---@param metaKey integer
---@param keyDown boolean
---@return event
function BlzTriggerRegisterPlayerKeyEvent(whichTrigger, whichPlayer, key, metaKey, keyDown) end

---@return oskeytype
function BlzGetTriggerPlayerKey() end

---@return integer
function BlzGetTriggerPlayerMetaKey() end

---@return boolean
function BlzGetTriggerPlayerIsKeyDown() end

---@param enable boolean
function BlzEnableCursor(enable) end

---@param x integer
---@param y integer
function BlzSetMousePos(x, y) end

---@return integer
function BlzGetLocalClientWidth() end

---@return integer
function BlzGetLocalClientHeight() end

---@return boolean
function BlzIsLocalClientActive() end

---@return unit
function BlzGetMouseFocusUnit() end

---@param texFile string
---@return boolean
function BlzChangeMinimapTerrainTex(texFile) end

---@return string
function BlzGetLocale() end

---@param whichEffect effect
---@return real
function BlzGetSpecialEffectScale(whichEffect) end

---@param whichEffect effect
---@param x real
---@param y real
---@param z real
function BlzSetSpecialEffectMatrixScale(whichEffect, x, y, z) end

---@param whichEffect effect
function BlzResetSpecialEffectMatrix(whichEffect) end

---@param whichUnit unit
---@param abilId integer
---@return ability
function BlzGetUnitAbility(whichUnit, abilId) end

---@param whichUnit unit
---@param index integer
---@return ability
function BlzGetUnitAbilityByIndex(whichUnit, index) end

---@param whichPlayer player
---@param recipient integer
---@param message string
function BlzDisplayChatMessage(whichPlayer, recipient, message) end

---@param whichUnit unit
---@param flag boolean
function BlzPauseUnitEx(whichUnit, flag) end

--  BlzFourCC2S                                 takes integer value returns string
--  BlzS2FourCC                                 takes string value returns integer

-- Bit Operations
---@param x integer
---@param y integer
---@return integer
function BlzBitOr(x, y) end

---@param x integer
---@param y integer
---@return integer
function BlzBitAnd(x, y) end

---@param x integer
---@param y integer
---@return integer
function BlzBitXor(x, y) end


-- Intanced Object Operations
-- Ability
---@param whichAbility ability
---@param whichField abilitybooleanfield
---@return boolean
function BlzGetAbilityBooleanField(whichAbility, whichField) end

---@param whichAbility ability
---@param whichField abilityintegerfield
---@return integer
function BlzGetAbilityIntegerField(whichAbility, whichField) end

---@param whichAbility ability
---@param whichField abilityrealfield
---@return real
function BlzGetAbilityRealField(whichAbility, whichField) end

---@param whichAbility ability
---@param whichField abilitystringfield
---@return string
function BlzGetAbilityStringField(whichAbility, whichField) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelfield
---@param level integer
---@return boolean
function BlzGetAbilityBooleanLevelField(whichAbility, whichField, level) end

---@param whichAbility ability
---@param whichField abilityintegerlevelfield
---@param level integer
---@return integer
function BlzGetAbilityIntegerLevelField(whichAbility, whichField, level) end

---@param whichAbility ability
---@param whichField abilityreallevelfield
---@param level integer
---@return real
function BlzGetAbilityRealLevelField(whichAbility, whichField, level) end

---@param whichAbility ability
---@param whichField abilitystringlevelfield
---@param level integer
---@return string
function BlzGetAbilityStringLevelField(whichAbility, whichField, level) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@return boolean
function BlzGetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index) end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@return integer
function BlzGetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index) end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param index integer
---@return real
function BlzGetAbilityRealLevelArrayField(whichAbility, whichField, level, index) end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@return string
function BlzGetAbilityStringLevelArrayField(whichAbility, whichField, level, index) end

---@param whichAbility ability
---@param whichField abilitybooleanfield
---@param value boolean
---@return boolean
function BlzSetAbilityBooleanField(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilityintegerfield
---@param value integer
---@return boolean
function BlzSetAbilityIntegerField(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilityrealfield
---@param value real
---@return boolean
function BlzSetAbilityRealField(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilitystringfield
---@param value string
---@return boolean
function BlzSetAbilityStringField(whichAbility, whichField, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelfield
---@param level integer
---@param value boolean
---@return boolean
function BlzSetAbilityBooleanLevelField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelfield
---@param level integer
---@param value integer
---@return boolean
function BlzSetAbilityIntegerLevelField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityreallevelfield
---@param level integer
---@param value real
---@return boolean
function BlzSetAbilityRealLevelField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelfield
---@param level integer
---@param value string
---@return boolean
function BlzSetAbilityStringLevelField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param index integer
---@param value boolean
---@return boolean
function BlzSetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param index integer
---@param value integer
---@return boolean
function BlzSetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param index integer
---@param value real
---@return boolean
function BlzSetAbilityRealLevelArrayField(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param index integer
---@param value string
---@return boolean
function BlzSetAbilityStringLevelArrayField(whichAbility, whichField, level, index, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function BlzAddAbilityBooleanLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function BlzAddAbilityIntegerLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value real
---@return boolean
function BlzAddAbilityRealLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function BlzAddAbilityStringLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function BlzRemoveAbilityBooleanLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function BlzRemoveAbilityIntegerLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value real
---@return boolean
function BlzRemoveAbilityRealLevelArrayField(whichAbility, whichField, level, value) end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function BlzRemoveAbilityStringLevelArrayField(whichAbility, whichField, level, value) end


-- Item
---@param whichItem item
---@param index integer
---@return ability
function BlzGetItemAbilityByIndex(whichItem, index) end

---@param whichItem item
---@param abilCode integer
---@return ability
function BlzGetItemAbility(whichItem, abilCode) end

---@param whichItem item
---@param abilCode integer
---@return boolean
function BlzItemAddAbility(whichItem, abilCode) end

---@param whichItem item
---@param whichField itembooleanfield
---@return boolean
function BlzGetItemBooleanField(whichItem, whichField) end

---@param whichItem item
---@param whichField itemintegerfield
---@return integer
function BlzGetItemIntegerField(whichItem, whichField) end

---@param whichItem item
---@param whichField itemrealfield
---@return real
function BlzGetItemRealField(whichItem, whichField) end

---@param whichItem item
---@param whichField itemstringfield
---@return string
function BlzGetItemStringField(whichItem, whichField) end

---@param whichItem item
---@param whichField itembooleanfield
---@param value boolean
---@return boolean
function BlzSetItemBooleanField(whichItem, whichField, value) end

---@param whichItem item
---@param whichField itemintegerfield
---@param value integer
---@return boolean
function BlzSetItemIntegerField(whichItem, whichField, value) end

---@param whichItem item
---@param whichField itemrealfield
---@param value real
---@return boolean
function BlzSetItemRealField(whichItem, whichField, value) end

---@param whichItem item
---@param whichField itemstringfield
---@param value string
---@return boolean
function BlzSetItemStringField(whichItem, whichField, value) end

---@param whichItem item
---@param abilCode integer
---@return boolean
function BlzItemRemoveAbility(whichItem, abilCode) end


-- Unit
---@param whichUnit unit
---@param whichField unitbooleanfield
---@return boolean
function BlzGetUnitBooleanField(whichUnit, whichField) end

---@param whichUnit unit
---@param whichField unitintegerfield
---@return integer
function BlzGetUnitIntegerField(whichUnit, whichField) end

---@param whichUnit unit
---@param whichField unitrealfield
---@return real
function BlzGetUnitRealField(whichUnit, whichField) end

---@param whichUnit unit
---@param whichField unitstringfield
---@return string
function BlzGetUnitStringField(whichUnit, whichField) end

---@param whichUnit unit
---@param whichField unitbooleanfield
---@param value boolean
---@return boolean
function BlzSetUnitBooleanField(whichUnit, whichField, value) end

---@param whichUnit unit
---@param whichField unitintegerfield
---@param value integer
---@return boolean
function BlzSetUnitIntegerField(whichUnit, whichField, value) end

---@param whichUnit unit
---@param whichField unitrealfield
---@param value real
---@return boolean
function BlzSetUnitRealField(whichUnit, whichField, value) end

---@param whichUnit unit
---@param whichField unitstringfield
---@param value string
---@return boolean
function BlzSetUnitStringField(whichUnit, whichField, value) end


-- Unit Weapon
---@param whichUnit unit
---@param whichField unitweaponbooleanfield
---@param index integer
---@return boolean
function BlzGetUnitWeaponBooleanField(whichUnit, whichField, index) end

---@param whichUnit unit
---@param whichField unitweaponintegerfield
---@param index integer
---@return integer
function BlzGetUnitWeaponIntegerField(whichUnit, whichField, index) end

---@param whichUnit unit
---@param whichField unitweaponrealfield
---@param index integer
---@return real
function BlzGetUnitWeaponRealField(whichUnit, whichField, index) end

---@param whichUnit unit
---@param whichField unitweaponstringfield
---@param index integer
---@return string
function BlzGetUnitWeaponStringField(whichUnit, whichField, index) end

---@param whichUnit unit
---@param whichField unitweaponbooleanfield
---@param index integer
---@param value boolean
---@return boolean
function BlzSetUnitWeaponBooleanField(whichUnit, whichField, index, value) end

---@param whichUnit unit
---@param whichField unitweaponintegerfield
---@param index integer
---@param value integer
---@return boolean
function BlzSetUnitWeaponIntegerField(whichUnit, whichField, index, value) end

---@param whichUnit unit
---@param whichField unitweaponrealfield
---@param index integer
---@param value real
---@return boolean
function BlzSetUnitWeaponRealField(whichUnit, whichField, index, value) end

---@param whichUnit unit
---@param whichField unitweaponstringfield
---@param index integer
---@param value string
---@return boolean
function BlzSetUnitWeaponStringField(whichUnit, whichField, index, value) end


