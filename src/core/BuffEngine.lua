timertables = {}
buffnames = {}
buffnumbers = {}
buffidcounter = 1

function registerbuff(buffname)
    if (buffnumbers[buffname] == nil) then
        buffnames[buffidcounter] = buffname
        buffnumbers[buffname] = buffidcounter
        buffidcounter = buffidcounter + 1
    end
end

function UnitHasBuff(unit,buffname)
    if (type(UnitGetObject(unit).buffs[buffname]) == "nil") then
        return false
    else
        return true
    end
end

function UnitRemoveBuff(unit,buffname)
    if(UnitHasBuff(unit,buffname))then
        DestroyTimer(UnitGetObject(unit).buffs[buffname].timer)
        UnitGetObject(unit).buffs[buffname].func()
        return true
    end

    return false
end

function UnitRemoveAllBuffs(unit)
    for k, v in pairs(UnitGetObject(unit).buffs) do
        v.func()
    end
end

--------------------------------------------------------------------------------------------
_buffname_pause = "pauseEx"
function UnitAddPause(unit,duration)
    registerbuff(_buffname_pause)
    
    if(IsRemoved(unit))then return end

    local globj = UnitGetObject(unit)
    local path = globj.buffs[_buffname_pause]

    --if new cast
    if(path==nil)then
        globj.buffs[_buffname_pause] = {}
        path = globj.buffs[_buffname_pause]
    else
        --dispel old debuff
        path.func()
        globj.buffs[_buffname_pause] = {}
        path = globj.buffs[_buffname_pause]
    end

    --effects
    BlzPauseUnitEx(unit, true)
    globj.isStunned = true
    AddSpecialEffectTargetTimed("Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdl",unit,"overhead",duration)

    local function on_remove()
        BlzPauseUnitEx(unit, false)
        globj.isStunned = false
        globj.buffs[_buffname_pause] = nil
        DestroyTimer(path.timer)
    end
    
    path.timer = CreateTimer()
    path.func = on_remove

    TimerStart(path.timer,duration,false,on_remove)
end

UnitAddStun = UnitAddPause


_buffname_invul = "invul"

function UnitAddInvul(unit,duration)
    registerbuff(_buffname_invul)
    
    if(IsRemoved(unit))then return end
    local globj = UnitGetObject(unit)
    local path = globj.buffs[_buffname_invul]

    --if new cast
    if(path==nil)then
        globj.buffs[_buffname_invul] = {}
        path = globj.buffs[_buffname_invul]
    else
        --dispel old debuff
        path.func()
        globj.buffs[_buffname_invul] = {}
        path = globj.buffs[_buffname_invul]
    end

    --effects
    SetUnitInvulnerable(unit,true)
    AddSpecialEffectTargetTimed("Abilities\\Spells\\Human\\DivineShield\\DivineShieldTarget.mdl",unit,"origin",duration)

    local function on_remove()
        SetUnitInvulnerable(unit,false)
        globj.buffs[_buffname_invul] = nil
        DestroyTimer(path.timer)
    end
    
    path.timer = CreateTimer()
    path.func = on_remove

    TimerStart(path.timer,duration,false,on_remove)
end

_buffname_cantmove = "cantmove_fly"

function UnitAddDebuffFlying(unit,duration)
    registerbuff(_buffname_cantmove)
    
    if(IsRemoved(unit))then return end

    local globj = UnitGetObject(unit)
    local path = globj.buffs[_buffname_cantmove]

    --if new cast
    if(path==nil)then
        globj.buffs[_buffname_cantmove] = {}
        path = globj.buffs[_buffname_cantmove]
    else
        --dispel old debuff
        path.func()
        globj.buffs[_buffname_cantmove] = {}
        path = globj.buffs[_buffname_cantmove]
    end

    --effects
    local oldspeed = GetUnitMoveSpeed(u)
    SetUnitMoveSpeed(u, 1)

    local function on_remove()
        SetUnitMoveSpeed(u, oldspeed)
        globj.buffs[_buffname_cantmove] = nil
        DestroyTimer(path.timer)
    end
    
    path.timer = CreateTimer()
    path.func = on_remove

    TimerStart(path.timer,duration,false,on_remove)
end

_buffname_hiddenbars = "hiddenbars"

function UnitHideBars(unit,duration)
    registerbuff(_buffname_hiddenbars)
    
    if(IsRemoved(unit))then return end

    local globj = UnitGetObject(unit)
    local path = globj.buffs[_buffname_hiddenbars]

    --if new cast
    if(path==nil)then
        globj.buffs[_buffname_hiddenbars] = {}
        path = globj.buffs[_buffname_hiddenbars]
    else
        --dispel old debuff
        path.func()
        globj.buffs[_buffname_hiddenbars] = {}
        path = globj.buffs[_buffname_hiddenbars]
    end

    --effects
    local oldscale = BlzGetUnitRealField(unit, UNIT_RF_SELECTION_SCALE)
    BlzSetUnitRealField(unit, UNIT_RF_SELECTION_SCALE, -0.1)

    local function on_remove()
        BlzSetUnitRealField(unit, UNIT_RF_SELECTION_SCALE, oldscale)
        globj.buffs[_buffname_hiddenbars] = nil
        DestroyTimer(path.timer)
    end
    
    path.timer = CreateTimer()
    path.func = on_remove

    TimerStart(path.timer,duration,false,on_remove)
end

---------------------------------------------------
_buffname_immortal = "immortal"
local function on_hit_immortality()
    local hp = GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)
    if(hp<=GetEventDamage())then
        BlzSetEventDamage(hp-1)
    end
end

function UnitAddImmortality(unit,duration)
    registerbuff(_buffname_immortal)
    
    if(IsRemoved(unit))then return end

    local globj = UnitGetObject(unit)
    local path = globj.buffs[_buffname_immortal]

    --if new cast
    if(path==nil)then
        globj.buffs[_buffname_immortal] = {}
        path = globj.buffs[_buffname_immortal]
    else
        --dispel old debuff
        path.func()
        globj.buffs[_buffname_immortal] = {}
        path = globj.buffs[_buffname_immortal]
    end

    --effects
    local t = CreateTrigger()
    TriggerRegisterUnitEvent(t,unit,EVENT_UNIT_DAMAGED)
    TriggerAddCondition(t,Condition(on_hit_immortality))
    --
    local function on_remove()
        DestroyTrigger(t)
        globj.buffs[_buffname_immortal] = nil
        DestroyTimer(path.timer)
    end
    
    path.timer = CreateTimer()
    path.func = on_remove

    TimerStart(path.timer,duration,false,on_remove)
end