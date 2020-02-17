hotkeys = {}
hotkeys["0"] = OSKEY_0
hotkeys["1"] = OSKEY_1
hotkeys["2"] = OSKEY_2
hotkeys["3"] = OSKEY_3
hotkeys["4"] = OSKEY_4
hotkeys["5"] = OSKEY_5
hotkeys["6"] = OSKEY_6
hotkeys["7"] = OSKEY_7
hotkeys["8"] = OSKEY_8
hotkeys["9"] = OSKEY_9
hotkeys["A"] = OSKEY_A
hotkeys["B"] = OSKEY_B
hotkeys["C"] = OSKEY_C
hotkeys["D"] = OSKEY_D
hotkeys["E"] = OSKEY_E
hotkeys["F"] = OSKEY_F
hotkeys["G"] = OSKEY_G
hotkeys["H"] = OSKEY_H
hotkeys["I"] = OSKEY_I
hotkeys["J"] = OSKEY_J
hotkeys["K"] = OSKEY_K
hotkeys["L"] = OSKEY_L
hotkeys["M"] = OSKEY_M
hotkeys["N"] = OSKEY_N
hotkeys["O"] = OSKEY_O
hotkeys["P"] = OSKEY_P
hotkeys["Q"] = OSKEY_Q
hotkeys["R"] = OSKEY_R
hotkeys["S"] = OSKEY_S
hotkeys["T"] = OSKEY_T
hotkeys["U"] = OSKEY_U
hotkeys["V"] = OSKEY_V
hotkeys["W"] = OSKEY_W
hotkeys["X"] = OSKEY_X
hotkeys["Y"] = OSKEY_Y
hotkeys["Z"] = OSKEY_Z

hotkeys2 = {}
hotkeys2[0] = "Q"
hotkeys2[1] = "W"
hotkeys2[2] = "E"
hotkeys2[3] = "R"
hotkeys2[4] = "T"
hotkeys2[5] = "Y"
hotkeys2[6] = "D"
hotkeys2[7] = "F"
hotkeys2[8] = "G"
hotkeys2[9] = "Z"
hotkeys2[10] = "X"
hotkeys2[11] = "C"

function ConvertHotkey(string)
    return hotkeys[string]
end

function GetDefaultHotkey(int)
    return hotkeys2[int]
end

function AddAbils(heroobj)
    for i = 0,11 do
        heroobj.abils[i] = {}
        heroobj.abils[i].used = false
        heroobj.abils[i].trig = {}
        heroobj.abils[i].cast = {}
        heroobj.abils[i].remove = emptyfunc
    end
end

function GetFreeAbilitySlot(heroobj)
    for i = 0, 11 do
        if(heroobj.abils[i].used==false)then
            return i
        end
    end
    print("Error: You have no free slots for new abils")
    return -1
end

--------------------------------------------------------------------------------------------

function AddAbilityNew(unit, abilityname, slot)
    heroobj = UnitGetObject(unit)
    if(slot== nil)then
        slot = GetFreeAbilitySlot(heroobj)
    end
    if(slot== -1)then
        return false
    end
    _A[abilityname](heroobj,slot)
    return true
end

--------------------------------------------------------------------------------------------

function AbilityRegisterManacost(u,as)
    as.manatimer = CreateTimer()

    local function onManaTimer()
        if(IsManaConditions(u,as))then
            BlzFrameSetText(as.button.manacost, "|cff8794ff"..as.manacost)
        else
            BlzFrameSetText(as.button.manacost, "|cffd22121"..as.manacost)
        end

        if(IsManaConditions(u,as) and IsColdownConditions(u,as) and IsAliveConditions(u,as))then
            BlzFrameSetTexture(as.button.icon, as.icon, 0, false)
        else
            BlzFrameSetTexture(as.button.icon, as.disicon, 0, false)
        end
    end

    TimerStart(as.manatimer, 0.2, true, onManaTimer)
end

function AbilityRegisterCooldown(as)
    as.cdtimer = CreateTimer()

    local function onCooldown()
        if(as.cd>=0)then
            as.cd = as.cd - 1
        end

        if(as.cd>0)then
            BlzFrameSetText(as.button.cooldown, as.cd)
        else
            BlzFrameSetText(as.button.cooldown, " ")
        end
    end

    TimerStart(as.cdtimer,1.,true, onCooldown)
end

function AbilityRegisterCast(u,as)
    as.trig[0] = CreateTrigger()

    local function onPress()
        if(IsCastConditions(u,as))then
            for k,v in pairs(as.cast) do
                if(v~=nil)then
                    v()
                end
            end
        end
    end

    BlzTriggerRegisterPlayerKeyEvent(as.trig[0], GetOwningPlayer(u), ConvertHotkey(as.hotkey), 0, true)
    TriggerAddCondition(as.trig[0], Condition(onPress))
end

function AbilityRegisterCastNoStun(u,as)
    as.trig[0] = CreateTrigger()

    local function onPress()
        if(IsManaConditions(u,as) and IsColdownConditions(u,as) and IsAliveConditions(u,as))then
            for k,v in pairs(as.cast) do
                if(v~=nil)then
                    v()
                end
            end
        end
    end

    BlzTriggerRegisterPlayerKeyEvent(as.trig[0], GetOwningPlayer(u), ConvertHotkey(as.hotkey), 0, true)
    TriggerAddCondition(as.trig[0], Condition(onPress))
end

function AbilityAddAction(as,func)
    if(as.cast[func] == nil)then
        as.cast[func] = func
    end
end

function AbilityRemoveAction(as,func)
    if(as.cast[func] ~= nil)then
        as.cast[func] = nil
    end
end

function AbilityUpdateVisual(p,as)
    BlzFrameSetTexture(as.button.icon, as.icon, 0, false)
    BlzFrameSetText(as.button.hotkey, as.hotkey)
    BlzFrameSetVisible(as.button.button, false)
    if(GetLocalPlayer()==p)then
        BlzFrameSetVisible(as.button.button, true)
    end
end

function AbilityRemoveDefaults(as)
    DestroyTrigger(as.trig[0])
    DestroyTimer(as.manatimer)
    DestroyTimer(as.cdtimer)
    BlzFrameSetVisible(as.button.button, false)

    as.button = nil
    as.icon = nil
    as.disicon = nil
    as.name = nil
    as.desc = nil
    as.hotkey = nil
    as.cd = nil
    as.cdmax = nil
    as.dist = nil

    as.update = nil

    as.used = false
end

function UnitRefreshAllAbils(u)
    local obj = UnitGetObject(u)
    for i = 0, 11 do
        if(obj.abils[i].used==true)then
            obj.abils[i].cd = 0
        end
    end
end