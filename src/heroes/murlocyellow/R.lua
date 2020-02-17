function ability_murlochuntsman_r(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNGenericCreepBuilding.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNGenericCreepBuilding.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 20
    as.cd = 0
    as.cdmax = 16
    as.duration = 4

    ---------------------------------------------------------------------------------
    

    local function onEnd()
        DestroyTimer(GetExpiredTimer())
        ShowUnit(u,true)
        DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Human\\HCancelDeath\\HCancelDeath.mdl",GetUnitXY(u)))

        DoHeal(u,30)
        IssueImmediateOrder(u, "stop")
        QueueUnitAnimation(u,"Stand")
        ClearSelectionForPlayer(p)
        SelectUnitAddForPlayer(u,p)
    end

    local function onCastEnd()
        if(not IsAliveConditions(u,as))then DestroyTimer(GetExpiredTimer());return end

        AddSpecialEffectTimed("buildings\\other\\MurlocHut0\\MurlocHut0.mdx",GetUnitX(u),GetUnitY(u),4)
        ShowUnit(u,false)
        AbilityRemoveMana(u,as)
        AbilityAddCd(as)

        UnitAddInvul(u, as.duration+0.2)
        UnitAddStun(u, as.duration)
        TimerStart(GetExpiredTimer(),as.duration,false,onEnd)
    end

    local function onCast()
        SetUnitAnimation(u,"attack")
        UnitAddStun(u, 1.5)

        TimerStart(CreateTimer(),1.5,false,onCastEnd)
    end

    AbilityRegisterCast(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    --description and name
    local function onDescUpdate()
        as.name = GetLocalizedString("murlochuntsman_R_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("murlochuntsman_R_desc",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("duration",pid)..as.duration..
        GetLocalizedString("manacost",pid)..as.manacost..
        GetLocalizedString("cooldown",pid)..as.cdmax
        BlzFrameSetText(as.button.tooltiptext, as.desc)
    end
    as.update = onDescUpdate
    as.update()

    --removing
    local function on_remove()
        AbilityRemoveAction(as,onCast)
        AbilityRemoveDefaults(as)

        u = nil
        p = nil

    end
    as.remove = on_remove
end

_murlochuntsman_r = "ability_murlochuntsman_r"
_A[_murlochuntsman_r] = ability_murlochuntsman_r
--
StringCodeName = "murlochuntsman_R_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Хата, милая Хата"
Localz[StringCodeName][_en] = "Hut, sweet hut"

StringCodeName = "murlochuntsman_R_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Строит Хату и прячется в ней на 4 секунды. Также хилит 30 хп. Каст 1.5сек"
Localz[StringCodeName][_en] = "Builds a hut and hides inside for 4 seconds. Also heals 30 hp. Channel 1.5s"