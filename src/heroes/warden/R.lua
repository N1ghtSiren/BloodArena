function ability_warden_r(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)
    --
    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNMaievBurn.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNMaievBurn.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 10
    as.cd = 0
    as.cdmax = 8
    as.duration = 2
    ------------------------------------------------------cast trigger
    local trig

    local function on_destroy()
        DestroyTrigger(trig)
        DestroyTimer(GetExpiredTimer())
    end

    local function on_hit()
        if(GetEventDamage()>=5)then
            CreateCastText(u)
            BlzSetEventDamage(5.)
        end
        if(BlzGetEventAttackType()==ATTACK_TYPE_HERO and GetEventDamageSource()~=u)then
            UnitAddImpulseV2(u, GetEventDamageSource(), AngleBetweenUnits(u,GetEventDamageSource()), 800, 0)
        end
    end

    local function onCast()
        AddSpecialEffectTimed("MyEffects\\BlinkBlueCaster.mdx",GetUnitX(u),GetUnitY(u),as.duration)

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
        as.name = GetLocalizedString("warden_R_name", pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("warden_R_desc",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("duration",pid)..as.duration..GetLocalizedString("sec",pid)..
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

_warden_r = "ability_warden_r"
_A[_warden_r] = ability_warden_r
--
StringCodeName = "warden_R_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Защитная магия"
Localz[StringCodeName][_en] = "Defencive magic"

StringCodeName = "warden_R_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Защищает героя некоторое время, также уменьшая получаемый урон до 5 и отталкивая врагов что наносят melee урон."
Localz[StringCodeName][_en] = "Protects hero for a short time, reduces damage taken to 5 and pushes damaging enemies who did melee damage."