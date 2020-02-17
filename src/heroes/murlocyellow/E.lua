function ability_murlochuntsman_e(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNCorrosiveBreath3.tga"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNCorrosiveBreath3.tga"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 70
    as.range = 300
    as.cd = 0
    as.cdmax = 16
    as.damage = 40

    ---------------------------------------------------------------------------------
    --

    local function onCast()
        local x,y = GetPlayerMouseXY(pid)
        AddSpellPointer(x,y,1)
        
        local function on_end(ex,ey)
            filtercaster = u
            DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\DemonHunterMissile\\DemonHunterMissile.mdl", x, y))

            local G = CreateGroup()
            filtercaster = u
            GroupEnumUnitsInRange(G,ex,ey, as.range, IsUnitAliveAndEnemyNotAvul_Filter)

            if(BlzGroupGetSize(G)==0)then return end
            
            local t
            for i = 0, BlzGroupGetSize(G)-1 do
                t = BlzGroupUnitAt(G, i)
                AddBloodSplatsCone(t, AngleBetweenUnits(u,t), as.range, as.damage)
                UnitAddImpulseV2(u, t, AngleBetweenUnits(u,t), 600, 0.1)
                AddSpecialEffectTimed("Abilities\\Spells\\Undead\\CarrionSwarm\\CarrionSwarmDamage.mdl", x, y, 2)
                
                DoMagicDamage(u, t, as.damage)
            end

            GroupClear(G)
            DestroyGroup(G)
            t = nil
            G = nil
        end
        
        CreateLinearProjectileWFilterV2("Abilities\\Weapons\\ChimaeraAcidMissile\\ChimaeraAcidMissile.mdl",GetUnitX(u),GetUnitY(u),x,y,32,DistanceBetweenPointsXY(GetUnitX(u),GetUnitY(u),x,y)/32,emptyfunc,on_end)

        UnitAddStun(u,0.5)
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
        as.name = GetLocalizedString("murlochuntsman_E_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("murlochuntsman_E_desc",pid)..
        GetLocalizedString("usesmouse",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("damage",pid)..as.damage..", magic"..
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
        DestroyTimer(timer)
        DestroyGroup(G)

        t = nil
        u = nil
        p = nil

        as = nil
    end
    as.remove = on_remove
end

_murlochuntsman_e = "ability_murlochuntsman_e"
_A[_murlochuntsman_e] = ability_murlochuntsman_e
--
StringCodeName = "murlochuntsman_E_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Токсичный Яд"
Localz[StringCodeName][_en] = "Toxic Poison"

StringCodeName = "murlochuntsman_E_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Показывает, насколько токсичной может быть эта ваша \'Рыба\'"
Localz[StringCodeName][_en] = "Shows how toxic this \'fish\' can be"