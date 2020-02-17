function ability_evilsylvanas_w(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNDevourMagic3.tga"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNDevourMagic3.tga"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 20
    as.range = 400
    as.cd = 0
    as.cdmax = 15
    as.damage = 20
    as.duration = 1.5
    
    ---------------------------------------------------------------------------------
    local G = CreateGroup()

    local function onCast()
        local x, y = GetUnitX(u),GetUnitY(u)
        AddSpecialEffectTimed("Abilities\\Spells\\Undead\\UnholyFrenzyAOE\\UnholyFrenzyAOETarget.mdl",x,y,2)
       
        UnitAddStun(u,0.5)

        GroupEnumUnitsInRange(G, x, y, as.range, nil)
        for i = 0, BlzGroupGetSize(G)-1 do
            local t = BlzGroupUnitAt(G, i)
            if (IsUnitAliveAndEnemyNotAvul(u,t)) then
                AddBloodSplatsCone(t, AngleBetweenUnits(u,t), 300, as.damage)
                UnitAddImpulseV2(u, t, AngleBetweenUnits(u,t), 600, 220)
                UnitAddStun(t,as.duration)
                DoMagicDamage(u, t, as.damage)
                t = nil
            end
        end
        GroupClear(G)
        QueueUnitAnimation(u,"Stand")
        IssueImmediateOrder(u, "Stop")

        AbilityRemoveMana(u,as)
        AbilityAddCd(as)
    end

    AbilityRegisterCast(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    --description and name
    local function onDescUpdate()
        as.name = GetLocalizedString("evilsylvanas_W_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)
        
        as.desc = GetLocalizedString("evilsylvanas_W_desc",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("damage",pid)..as.damage..", magic"..
        GetLocalizedString("range",pid)..as.range..
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
        DestroyTimer(timer)
        DestroyGroup(G)

        t = nil
        u = nil
        p = nil

    end
    as.remove = on_remove
end

_evilsylvanas_w = "ability_evilsylvanas_w"
_A[_evilsylvanas_w] = ability_evilsylvanas_w
--
StringCodeName = "evilsylvanas_W_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Крик"
Localz[StringCodeName][_en] = "Scream"

StringCodeName = "evilsylvanas_W_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Выпускает наружу часть своей истинной силы, оглушая и раскидывая ближайших врагов."
Localz[StringCodeName][_en] = "Unleashes part of her true powers, stunning and pushing nearby enemies."