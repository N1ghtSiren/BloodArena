function ability_ratling_r(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)
    --
    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNHealingSpray.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNHealingSpray.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 40
    as.cd = 0
    as.cdmax = 15
    as.heal = 30
    ------------------------------------------------------cast trigger
    local function onCast()
        DoHeal(u,as.heal)
        AbilityRemoveMana(u,as)
        AbilityAddCd(as)
    end

    AbilityRegisterCast(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    local function onDescUpdate()
        as.name = GetLocalizedString("ratling_R_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("ratling_R_desc",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
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

_ratling_r = "ability_ratling_r"
_A[_ratling_r] = ability_ratling_r
--
StringCodeName = "ratling_R_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Исцеляющий спрей"
Localz[StringCodeName][_en] = "Healing spray"

StringCodeName = "ratling_R_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Использует ЭТО чтобы вылечить свои раны. Исцеляет 40хп."
Localz[StringCodeName][_en] = "Uses THIS to cure his wounds. Heals 40 health."