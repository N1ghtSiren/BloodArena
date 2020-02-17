function ability_seawitch_w(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNManaBurn3.tga"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNManaBurn3.tga"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 50
    as.cd = 0
    as.cdmax = 16
    as.range = 600
    as.duration = 1
    as.damage = 40

    --cast action
    local G = CreateGroup()

    local function onCast()
        local x, y = GetUnitX(u),GetUnitY(u)
        AddSpecialEffectTimed("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl",x,y,1)
        SetUnitAnimation(u, "Spell")
        UnitAddStun(u,0.3)

        GroupEnumUnitsInRange(G, x, y, as.range, nil)
        for i = 0, BlzGroupGetSize(G)-1 do
            local t = BlzGroupUnitAt(G, i)
            if (IsUnitAliveAndEnemyNotAvul(u,t)) then
                
                local function on_hit()
                    if(as==nil)then return end
                    AddBloodSplatsCone(t, AngleBetweenUnits(u,t), 300, as.damage)
                    DoMagicDamage(u, t, as.damage)
                    UnitAddStun(u, as.duration)
                    DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl",GetUnitXY(u)))
                    t = nil
                end

                CreateSimpleHomingProjectile_ModelName("Abilities\\Spells\\Orc\\Purge\\PurgeBuffTarget.mdl", u, t, 1200, on_hit)
            end
        end
        GroupClear(G)
        QueueUnitAnimation(u,"Stand")
        IssueImmediateOrder(u, "stop")

        AbilityRemoveMana(u,as)
        AbilityAddCd(as)
    end

    
    AbilityRegisterCast(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    local function onDescUpdate()
        as.name = GetLocalizedString("seawitch_W_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)
        
        as.desc = GetLocalizedString("seawitch_W_desc",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("damage",pid)..as.damage..
        GetLocalizedString("range",pid)..as.range..
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
        DestroyGroup(G)

        G = nil
        p = nil
        u = nil

    end
    as.remove = on_remove
end

_seawitch_w = "ability_seawitch_w"
_A[_seawitch_w] = ability_seawitch_w
--
StringCodeName = "seawitch_W_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Разветвлённая Молния"
Localz[StringCodeName][_en] = "Forked Lightning"

StringCodeName = "seawitch_W_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Наносит урон и оглушает ближайших врагов."
Localz[StringCodeName][_en] = "Deals damage and stuns all nearby enemies."