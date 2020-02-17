function ability_warden_w(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNFanOfKnives.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNFanOfKnives.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 20
    as.cd = 0
    as.cdmax = 6
    
    as.range = 600
    as.damage = 25

    --cast action
    local G = CreateGroup()

    local function onCast()
        local x, y = GetUnitX(u),GetUnitY(u)
        AddSpecialEffectTimed("Abilities\\Spells\\NightElf\\FanOfKnives\\FanOfKnivesCaster.mdl",x,y,1)
        SetUnitAnimation(u, "Spell Slam")
        UnitAddStun(u,0.3)

        GroupEnumUnitsInRange(G, x, y, as.range, nil)
        for i = 0, BlzGroupGetSize(G)-1 do
            local t = BlzGroupUnitAt(G, i)
            if (IsUnitAliveAndEnemyNotAvul(u,t)) then
                
                local function on_hit()
                    if(as==nil)then return end
                    AddBloodSplatsCone(t, AngleBetweenUnits(u,t), 300, as.damage)
                    UnitAddImpulseV2(u, t, AngleBetweenUnits(u,t), 450, 0)
                    DoRangedDamage(u, t, as.damage)
                    t = nil
                end

                CreateSimpleHomingProjectile_ModelName("Abilities\\Spells\\NightElf\\FanOfKnives\\FanOfKnivesMissile.mdl", u, t, 600, on_hit)
            end
        end
        GroupClear(G)
        QueueUnitAnimation(u,"Stand")
        IssueImmediateOrder(u, "stop")

        AbilityRemoveMana(u,as)
        AbilityAddCd(as)
    end

    AbilityAddAction(as,onCast)

    --cast 
    AbilityRegisterCast(u,as)

    --cooldown
    AbilityRegisterCooldown(as)

    --mana
    AbilityRegisterManacost(u,as)

    --updating visual
    AbilityUpdateVisual(p,as)

    local function onDescUpdate()
        as.name = GetLocalizedString("warden_W_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)
        
        as.desc = 
        GetLocalizedString("warden_W_desc",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("damage",pid)..as.damage..", ranged"..
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

_warden_w = "ability_warden_w"
_A[_warden_w] = ability_warden_w
--
StringCodeName = "warden_W_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Веер ножей"
Localz[StringCodeName][_en] = "Fan of knives"

StringCodeName = "warden_W_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Кидает ножи во всех врагов поблизости, отталкивая их"
Localz[StringCodeName][_en] = "Throws knives to all nearby enemies, pushing them"