function ability_seawitch_r(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)
    --
    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNMagicImmunity3.tga"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNMagicImmunity3.tga"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 80
    as.cd = 0
    as.cdmax = 15
    as.duration = 1.5
    ------------------------------------------------------cast trigger
    local trig

    local function on_destroy()
        DestroyTrigger(trig)
        DestroyTimer(GetExpiredTimer())
    end

    local function on_hit()
        if(GetEventDamage()>=0)then
            CreateCastText(u)
            DoHeal(u,GetEventDamage())
            BlzSetEventDamage(0.)
            DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",GetUnitXY(u)))
        end
    end

    local function onCast()

        trig = CreateTrigger()
        TriggerRegisterUnitEvent(trig,u, EVENT_UNIT_DAMAGED)
        TriggerAddCondition(trig,Condition(on_hit))
        
        TimerStart(CreateTimer(), as.duration, false, on_destroy)

        AbilityRemoveMana(u,as)
        AbilityAddCd(as)
    end

    AbilityRegisterCast(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    local function onDescUpdate()
        as.name = GetLocalizedString("seawitch_R_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("seawitch_R_desc",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("duration",pid)..as.duration..
        GetLocalizedString("manacost",pid)..as.manacost..
        GetLocalizedString("cooldown",pid)..as.cdmax
        BlzFrameSetText(as.button.tooltiptext, as.desc)
    end
    as.update = onDescUpdate
    as.update()

    local function on_remove()
        AbilityRemoveAction(as,onCast)
        AbilityRemoveDefaults(as)

        p = nil
        u = nil

    end
    as.remove = on_remove
    
end

_seawitch_r = "ability_seawitch_r"
_A[_seawitch_r] = ability_seawitch_r
--
StringCodeName = "seawitch_R_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Глубинная Чешуя"
Localz[StringCodeName][_en] = "Abyssal Scales"

StringCodeName = "seawitch_R_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Фокусирует ману в Чешуе, направляя урон в исцеление"
Localz[StringCodeName][_en] = "Focuses mana into Scales, absorbing damage taken into health."