function ability_evilsylvanas_r(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNDizzy.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNDizzy.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 20
    as.cd = 0
    as.cdmax = 10
    as.duration = 3

    ---------------------------------------------------------------------------------
    local function onCast()
        AddSpecialEffectTargetTimed("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",u,"chest",as.duration)
        UnitAddImmortality(u, as.duration)
        AbilityRemoveMana(u,as)
        AbilityAddCd(as)
    end

    AbilityRegisterCastNoStun(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    --description and name
    local function onDescUpdate()
        as.name = GetLocalizedString("evilsylvanas_R_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("evilsylvanas_R_desc",pid)..
        GetLocalizedString("evilsylvanas_R_desc2",pid)..as.duration..GetLocalizedString("sec",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
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

_evilsylvanas_r = "ability_evilsylvanas_r"
_A[_evilsylvanas_r] = ability_evilsylvanas_r
--
StringCodeName = "evilsylvanas_R_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Бессмертие"
Localz[StringCodeName][_en] = "Immortality"

StringCodeName = "evilsylvanas_R_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Открой свои глаза и не бойся ничего. Никогда."
Localz[StringCodeName][_en] = "Open your eyes and do not be afraid of nothing. Never."

StringCodeName = "evilsylvanas_R_desc2"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "|nДелает героя бессмертным на "
Localz[StringCodeName][_en] = "|nMakes you immortal for "