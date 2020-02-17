function ability_paladin_r(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpThree.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNHumanArmorUpThree.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 20
    as.cd = 0
    as.cdmax = 10
    as.duration = 2

    ---------------------------------------------------------------------------------
    local function onCast()
        UnitAddInvul(u, as.duration)
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
        as.name = GetLocalizedString("paladin_R_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = 
        GetLocalizedString("paladin_R_desc",pid)..
        GetLocalizedString("paladin_R_desc2",pid)..as.duration..GetLocalizedString("sec",pid)..
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

_paladin_r = "ability_paladin_r"
_A[_paladin_r] = ability_paladin_r
--
StringCodeName = "paladin_R_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Блокада!"
Localz[StringCodeName][_en] = "Blockade!"

StringCodeName = "paladin_R_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Молот начинает слышать отголоски прошлой войны, что делает его Неуязвимым. Отголоски стихают спустя короткое время."
Localz[StringCodeName][_en] = "HAMMER starts hearing echoes from the past war, and this makes him invincible. Echoes subdue after a short time."

StringCodeName = "paladin_R_desc2"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Делает Неуязвимым на "
Localz[StringCodeName][_en] = "Makes you Invincible for "