function ability_paladin_e(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNStormBolt.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNStormBolt.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 40
    as.range = 300
    as.cd = 0
    as.cdmax = 8
    as.damage = 50
    as.speed = 800

    ---------------------------------------------------------------------------------
    local casttime = 1
    local t,x,y
    local timer = CreateTimer()

    local function onCast()
        x, y = GetPlayerMouseXY(pid)
        
        t = GetClosestEnemyAliveAndVisible(u,x,y,as.range)
        if(t==nil)then
            return
        end

        AddSpellPointerUnit(t,2)
        UnitAddStun(u, 1)
        CreateCastText(u)
        FaceUnitTo(u,t)
        SetUnitAnimation(u,"Spell")
    
        local function hit()
            local function on_hit()
                if(as==nil)then return end
                UnitAddStun(t,1)
                DoRangedDamage(u,t,as.damage)
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\Bolt\\BoltImpact.mdl",t,"origin"))

                if(as==nil)then return end
                AddBloodSplatsCone(t, AngleBetweenUnits(u,t), 500, as.damage)
            end
            
            CreateSimpleHomingProjectile_XYZ_target_ModelName("Abilities\\Spells\\Human\\StormBolt\\StormBoltMissile.mdl",GetUnitX(u),GetUnitY(u),GetUnitZ(u)+400,t,as.speed,on_hit)
            QueueUnitAnimation(u,"Stand")

            AbilityRemoveMana(u,as)
            AbilityAddCd(as)
        end

        TimerStart(timer, casttime, false, hit)
    end

    AbilityRegisterCast(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    --description and name
    local function onDescUpdate()
        as.name = GetLocalizedString("paladin_E_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = 
        GetLocalizedString("paladin_E_desc",pid)..
        GetLocalizedString("usesmouse",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("damage",pid)..as.damage..", ranged"..
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

_paladin_e = "ability_paladin_e"
_A[_paladin_e] = ability_paladin_e
--
StringCodeName = "paladin_E_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Удар ММолота!"
Localz[StringCodeName][_en] = "Hammmerbolt!"

StringCodeName = "paladin_E_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Призывает старого друга Молота: ММолота!. ММолот будет наводится во врагов в области курсора. Если врагов там нет, ММолот призван не будет."
Localz[StringCodeName][_en] = "Summons an old friend of the HAMMER: HAMMMER! HAMMER will aim at the nearest enemy to the cursor. If no enemy is nearby, the HAMMMER won't come."