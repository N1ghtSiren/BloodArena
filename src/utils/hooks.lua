of_ui = ORIGIN_FRAME_GAME_UI
of_cb = ORIGIN_FRAME_COMMAND_BUTTON

fourcc = FourCC
DestroyTimer_hook = DestroyTimer
GetUnitAbsZ = GetUnitFlyHeight

function DestroyTimer_ForSure()
    PauseTimer(GetExpiredTimer())
    DestroyTimer_hook(GetExpiredTimer())
end

function DestroyTimer(timer)
    TimerStart(timer, 0.0, false, DestroyTimer_ForSure)
end

CreateItem_hook = CreateItem

---@param itemid string
---@param x real
---@param y real
---@return item
function CreateItem(itemid,x,y)
    return CreateItem_hook(fourcc(itemid), x, y)
end

UnitAddAbility_hook = UnitAddAbility

function UnitAddAbility(hero, id)
    UnitAddAbility_hook(hero, fourcc(id))
    --printTimed("AbilityAdded: "..id)
    return BlzGetUnitAbility(hero, fourcc(id))
end

UnitRemoveAbility_hook = UnitRemoveAbility

function UnitRemoveAbility(whichUnit, abilityId)
    UnitRemoveAbility_hook(whichUnit, fourcc(abilityId))
end

SetHeroDef = BlzSetUnitArmor
SetHeroName = BlzSetHeroProperName

function SetHeroMoveSpeed(unit,value)
    SetUnitMoveSpeed(unit,MathNegator(value))
end

function GetHeroDef(unit)
    return R2I(BlzGetUnitArmor(unit))
end

function SetHeroDmg(hero, damage, weaponindex)
    BlzSetUnitBaseDamage(hero, R2I(damage), weaponindex)
end

function emptyfunc()
    return
end

function returnfalse()
    return false
end

function destroyTriggerTable(table)
    for k, v in pairs(table) do
        DestroyTrigger(v)
    end
end

function nilTable(t)
    for k, v in pairs(table) do
        table.k = nil
    end
end

function PolarProjection(u, dist, angle)
    local PPx = GetUnitX(u) + dist * Cos(angle * bj_DEGTORAD)
    local PPy = GetUnitY(u) + dist * Sin(angle * bj_DEGTORAD)
    return PPx, PPy
end

function PolarProjectionXY(x, y, dist, angle)
    local PPx = x + dist * Cos(angle * bj_DEGTORAD)
    local PPy = y + dist * Sin(angle * bj_DEGTORAD)
    return PPx, PPy
end

function PolarProjectionXYZ(x, y, z, dist, GroundAngle, FacingAngle)
    --FacingAngle - 0-360 -- yaw
    --GroundAngle - 0-180 -- pitch
    local x1 = x + dist*SinBJ(GroundAngle)*CosBJ(FacingAngle)
    local y1 = y + dist*SinBJ(GroundAngle)*SinBJ(FacingAngle)
    local z1 = z + dist*CosBJ(GroundAngle)
    --
    return x1,y1,z1
end

function GetDistanceBetweenPointsZ(x1, y1, z1, x2, y2, z2)
    local dx = x2 - x1
    local dy = y2 - y1
    local dz = z2 - z1
    return SquareRoot(dx * dx + dy * dy + dz * dz)
end

function SetEffectFacePointV2(eff, x, y)
    local dx = x - BlzGetLocalSpecialEffectX(eff)
    local dy = y - BlzGetLocalSpecialEffectY(eff)
    local yaw = Atan2(dy, dx)
    BlzSetSpecialEffectYaw(eff, yaw)
end

function SetEffectFacePoint(eff, x, y, z)
    local dx = x - BlzGetLocalSpecialEffectX(eff)
    local dy = y - BlzGetLocalSpecialEffectY(eff)
    local dz = z - BlzGetLocalSpecialEffectZ(eff)
    local yaw = Atan2(dy, dx)
    BlzSetSpecialEffectYaw(eff, yaw)
    local pitch = -(Atan((dz) / SquareRoot(dx * dx + dy * dy)))
    BlzSetSpecialEffectPitch(eff, pitch)
end

SetEffectFacing = SetEffectFacePoint

function AngleBetweenPoints(x1, y1, x2, y2)
    return (bj_RADTODEG * Atan2(y2 - y1, x2 - x1))
end

function AngleBetweenUnits(unit1, unit2)
    return (bj_RADTODEG * Atan2(GetUnitY(unit2) - GetUnitY(unit1), GetUnitX(unit2) - GetUnitX(unit1)))
end

function MathNegator(int)
    if(int<0)then
        return 0
    else
        return int
    end
end

function MathNegator1(int)
    if(int<1)then
        return 1
    else
        return int
    end
end

function mathfix(number)
    return R2I(math.floor(number))
end

function BezierCurvePow2_xyz_xyz_xyz(x, y, z, x1, y1, z1, x2, y2, z2, time)
    local a1 = x
    local b1 = 2 * (x1 - x)
    local c1 = x - 2 * x1 + x2
    local a2 = y
    local b2 = 2 * (y1 - y)
    local c2 = y - 2 * y1 + y2
    local a3 = z
    local b3 = 2 * (z1 - z)
    local c3 = z - 2 * z1 + z2
    local x = a1 + (b1 + c1 * time) * time
    local y = a2 + (b2 + c2 * time) * time
    local z = a3 + (b3 + c3 * time) * time
    return x, y, z
end

function tableLen(t)
    local iteration = 0

    for k, v in pairs(t) do
        iteration = iteration + 1
    end
    return iteration
end

function tableGetKeys(t)
    thistable = {}
    local n = 0
    for k, v in pairs(t) do
        n = n + 1
        thistable[n] = k
    end
    table.sort(thistable)
    return thistable
end


function IsUnitAliveAndEnemy(c, t)
    return not IsUnitType(t, UNIT_TYPE_DEAD) and IsUnitEnemy(t, GetOwningPlayer(c))
end

function IsUnitAliveAndEnemyNotAvul(c, t)
    return not IsUnitType(t, UNIT_TYPE_DEAD) and IsUnitEnemy(t, GetOwningPlayer(c)) and GetUnitAbilityLevel(t, fourcc("Avul")) == 0
end

function IsUnitAliveAndAllyNotAvul(c, t)
    return not IsUnitType(t, UNIT_TYPE_DEAD) and IsUnitAlly(t, GetOwningPlayer(c)) and GetUnitAbilityLevel(t, fourcc("Avul")) == 0
end

function IsUnitNotAvul(t)
    return GetUnitAbilityLevel(t, fourcc("Avul")) == 0
end

function IsUnitAliveNotAvul(t)
    return not IsUnitType(t, UNIT_TYPE_DEAD) and GetUnitAbilityLevel(t, fourcc("Avul")) == 0
end

function DistanceBetweenPointsXY(x1, y1, x2, y2)
    local dx = x2 - x1
    local dy = y2 - y1
    return SquareRoot(dx * dx + dy * dy)
end

function AngleBetweenPoints(x1, y1, x2, y2)
    return (bj_RADTODEG * Atan2(y2 - y1, x2 - x1))
end

function AddSpecialEffectZ(model, x, y, z)
    thiseff = AddSpecialEffect(model, x, y)
    BlzSetSpecialEffectZ(thiseff, z)
    return thiseff
end

function AddSpecialEffectTargetTimed(model,unit,attachpoint,lifetime)
    local eff = AddSpecialEffectTarget(model,unit,attachpoint)

    local function Delete()
        DestroyEffect(eff)
        DestroyTimer(GetExpiredTimer())
    end

    TimerStart(CreateTimer(),lifetime,false,Delete)
end

function AddSpecialEffectTimed(model,x,y,lifetime)
    local eff = AddSpecialEffect(model,x,y)

    local function delete()
        DestroyEffect(eff)
        eff = nil
        DestroyTimer(GetExpiredTimer())
    end

    TimerStart(CreateTimer(),lifetime,false,delete)
    
end

function AddSpecialEffectZTimed(model,x,y,z,lifetime)
    local eff = AddSpecialEffectZ(model,x,y,z)

    local function delete()
        BlzSetSpecialEffectPosition(eff,-3300,-3500,-1000)
        DestroyEffect(eff)
        eff = nil
        DestroyTimer(GetExpiredTimer())
    end

    TimerStart(CreateTimer(),lifetime,false,delete)
    
end

function DestroyEffectHide(effect)
    BlzSetSpecialEffectPosition(effect,-3300,-3300,-1000)
    DestroyEffect(effect)
    effect = nil
end

function EffectDisappearing(effect,lifetime)
    local alpha = 255
    local decalpha = 255/(lifetime/0.03125)

    local function EffectDisappearing_Loop()
        if(alpha>=5)then
            BlzSetSpecialEffectAlpha(effect,R2I(alpha))
            alpha = alpha-decalpha
            return false
        else
            BlzSetSpecialEffectPosition(effect,-3300,-3500,-1000)
            DestroyEffect(effect)
            return true
        end

    end

    AddOnUpdateFunction(EffectDisappearing_Loop)
end

function GetUnitXYZ(unit)
    return GetUnitX(unit),GetUnitY(unit),GetUnitZ(unit)
end

function GetUnitXY(unit)
    return GetUnitX(unit),GetUnitY(unit)
end

function FullHeal(unit)
    SetUnitState(unit, UNIT_STATE_LIFE, GetUnitState(unit,UNIT_STATE_MAX_LIFE))
    SetUnitState(unit, UNIT_STATE_MANA, GetUnitState(unit,UNIT_STATE_MAX_MANA))
end

function FaceUnitTo(u,t)
    SetUnitFacingTimed(u, AngleBetweenPoints(GetUnitX(u), GetUnitY(u), GetUnitX(t), GetUnitY(t)), 0.)
end

function FaceUnitToXY(u,x,y)
    SetUnitFacingTimed(u, AngleBetweenPoints(GetUnitX(u), GetUnitY(u), x,y), 0.)
end

function AddSpellPointer(x,y,duration)
    AddSpecialEffectZTimed("MyEffects\\SnipeTarget.mdx",x,y,GetPointZ(x,y)+30,duration)
end

function AddSpellPointerUnit(unit,duration)
    AddSpecialEffectTargetTimed("MyEffects\\SnipeTarget.mdx",unit,"chest",MathNegator(duration-5))
end

function CameraSetTargetNoiseTimed(mag,velocity,time)
    CameraSetTargetNoise(mag,velocity)

    local function on_remove()
        DestroyTimer(GetExpiredTimer())
        CameraSetTargetNoise(0,0)
    end

    TimerStart(CreateTimer(),time,false,on_remove)
end
----------------------------------------------------------------------------------------------------------------
GZL = Location(0,0) 
function GetPointZ(x,y)
    MoveLocation(GZL,x,y)
    return GetLocationZ(GZL)
end

---@param target unit
---@param z real
function SetUnitZ(target, z)
    UnitAddAbility(target, 'Aave')
    UnitRemoveAbility(target, 'Aave')
    SetUnitFlyHeight(target, z - GetPointZ(GetUnitXY(target)), 0)
end

function GetUnitZ(unit)
    return GetUnitFlyHeight(unit) + GetPointZ(GetUnitXY(unit))
end

----------------------------------------------------------------------------------------------------------------
function GetClosestUnit(G,x,y)
    local dist = 9999
    local u
    local t

    while (BlzGroupGetSize(G) > 0) do
        u = BlzGroupUnitAt(G, BlzGroupGetSize(G) - 1)

        if(DistanceBetweenPointsXY(GetUnitX(u),GetUnitY(u),x,y)<dist)then
            t = u
            dist = DistanceBetweenPointsXY(GetUnitX(u),GetUnitY(u),x,y)
        end

        GroupRemoveUnit(G,u)

    end
    u = nil
    DestroyGroup(G)
    return t
end

function GetClosestEnemyAliveAndVisible(c,x,y,range)
    local G = CreateGroup()
    local G2 = CreateGroup()
    local u = nil
    GroupEnumUnitsInRange(G, x, y, range,nil)

    while (BlzGroupGetSize(G) > 0) do
        u = BlzGroupUnitAt(G, BlzGroupGetSize(G) - 1)

        if (IsUnitAliveAndEnemyNotAvul(c,u)and IsUnitVisible(u,GetOwningPlayer(c))) then
            GroupAddUnit(G2,u)
        end
    
        GroupRemoveUnit(G,u)
    end

    GroupClear(G)
    DestroyGroup(G)
    return GetClosestUnit(G2,x,y)
    --
end

function printTimed(msg,duration)
    if(duration==nil)then
        duration = 30
    end
    if(msg==nil)then
        msg = "nil"
    end
    DisplayTimedTextToPlayer(GetLocalPlayer(),0.,0.,duration,msg)
end

function printDbg(msg)
    if(msg==nil)then
        msg = "nil"
    end
    DisplayTimedTextToPlayer(GetLocalPlayer(),0.,0.,2,msg)
end

function printToPlayerTimed(player, msg, duration)
    if(duration==nil)then
        duration = 30
    end
    if(msg==nil)then
        msg = "nil"
    end
    DisplayTimedTextToPlayer(GetLocalPlayer(),0.,0.,duration,msg)
end


function GetClosestAllyAliveAndVisible(c,x,y,range)
    local G = CreateGroup()
    local u = nil
    local t = nil
    GroupEnumUnitsInRange(G,x,y,range,nil)
    while (BlzGroupGetSize(G) > 0) do
        u = BlzGroupUnitAt(G, BlzGroupGetSize(G) - 1)
        if (IsUnitAliveAndAllyNotAvul(c,u)and IsUnitVisible(u,GetOwningPlayer(c))) then
            t = u
            break
        end
        GroupRemoveUnit(G, u)
    end
    GroupClear(G)
    DestroyGroup(G)
    u = nil
    return t
end

function UnitStunned(u)
    return (UnitGetObject(u).isStunned)
end

function UnitNotStunned(u)
    return (not UnitGetObject(u).isStunned)
end

local ___playableMaxX = GetRectMaxX(bj_mapInitialPlayableArea)
local ___playableMinX = GetRectMinX(bj_mapInitialPlayableArea)
local ___playableMaxY = GetRectMaxY(bj_mapInitialPlayableArea)
local ___playableMinY = GetRectMinY(bj_mapInitialPlayableArea)

function IsMapBounds(x, y)
    return (x < ___playableMaxX and x > ___playableMinX and y < ___playableMaxY and y > ___playableMinY)
end

function IsAI(pid)
    return GetPlayerController(Player(pid))==MAP_CONTROL_COMPUTER or GetPlayerSlotState(Player(pid))==PLAYER_SLOT_STATE_EMPTY
end

function IsRemoved(u)
    if(BlzGetUnitMaxHP(u)==0)then
        return true
    end
    return false
end

player_colors = {}
player_colors[0] = "|cffFF0202"
player_colors[1] = "|cff0041FF"
player_colors[2] = "|cff1BE5B8"
player_colors[3] = "|cff530080"
player_colors[4] = "|cffFFFC00"
player_colors[5] = "|cffFE890D"
player_colors[6] = "|cff1FBF00"
player_colors[7] = "|cffE45AAF"
player_colors[8] = "|cff949596"
player_colors[9] = "|cff7DBEF1"
player_colors[10] = "|cff0F6145"
player_colors[11] = "|cff4D2903"

function GetPlayerNameV2(pid)
    return player_colors[pid]..GetPlayerName(Player(pid)).."|r"
end