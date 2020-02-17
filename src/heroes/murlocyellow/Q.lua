function ability_murlochuntsman_q(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNCrushingWave.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNCrushingWave.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.damage = 5
    as.manacost = 30
    as.cd = 0
    as.cdmax = 12
    as.speed = 1200
    as.range = 150
    ---------------------------------------------------------------------------------
    local G = CreateGroup()

    local function onCast()

        local x,y = GetPlayerMouseXY(pid)
        if(IsTerrainWalkable(x,y)==false)then return end
        
        local cx, cy = GetUnitXY(u)
        local dist = DistanceBetweenPointsXY(cx,cy,x,y)
        local angle = AngleBetweenPoints(cx,cy,x,y)
        
        local lifetime = (dist/as.speed)

        local function on_end()
            SetUnitX(u,x)
            SetUnitY(u,y)
            ShowUnit(u,true)

            IssueImmediateOrder(u, "stop")
            ClearSelectionForPlayer(p)
            SelectUnitAddForPlayer(u,p)
        end
        
        local function on_fly(eff, x, y)
            filtercaster = u
            GroupEnumUnitsInRange(G,x,y, 150, IsUnitAliveAndEnemyNotAvul_Filter)

            if(BlzGroupGetSize(G)==0)then return end
            
            local t
            for i = 0, BlzGroupGetSize(G)-1 do
                t = BlzGroupUnitAt(G, i)
                AddBloodSplatsCone(t, angle, 300, as.damage)
                UnitAddImpulseV2(u, t, angle, 50, 0)
                UnitAddStun(t, 0.5)
                DoMagicDamage(u, t, as.damage)
            end

            t = nil
            GroupClear(G)

        end
        
        CreateLinearProjectileWFilterV2("Abilities\\Spells\\Other\\CrushingWave\\CrushingWaveMissile.mdl",cx,cy,x,y,lifetime*32,as.speed/32,on_fly,on_end)

        UnitAddInvul(u, lifetime+0.4)
        CreateCastText(u)
        ShowUnit(u,false)

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
        as.name = GetLocalizedString("murlochuntsman_Q_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("murlochuntsman_Q_desc",pid)..
        GetLocalizedString("usesmouse",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("manacost",pid)..as.manacost..
        GetLocalizedString("damage",pid)..as.damage.." ,magic"..
        GetLocalizedString("proj speed",pid)..as.speed..
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

        u = nil
        p = nil
    end
    as.remove = on_remove
end

_murlochuntsman_q = "ability_murlochuntsman_q"
_A[_murlochuntsman_q] = ability_murlochuntsman_q
--
StringCodeName = "murlochuntsman_Q_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Волнаааааа"
Localz[StringCodeName][_en] = "Waveeeeeee"

StringCodeName = "murlochuntsman_Q_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Призывает Волну и скрывается в ней, двигаясь к позиции курсора и отталкивая врагов."
Localz[StringCodeName][_en] = "Summons the Wave and hides in it, also moving to the cursor position and pushing enemies"