function ability_ratling_e(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNFlakCannons3.tga"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNFlakCannons3.tga"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 70
    as.cd = 0
    as.cdmax = 18
    as.speed = 1000
    as.damage = 4

    --cast actions

    local t
    local function on_filter(eff,x,y)
        t = GetClosestEnemyAliveAndVisible(u,x,y,60)
        if(t==nil)then return false end
        
        DoRangedDamage(u,t,as.damage)
        AddBloodSplatsCone(t, AngleBetweenUnits(u,t), 200, as.damage)
        UnitAddImpulseV2(u, t, AngleBetweenUnits(u,t), 20, 0)
        DestroyEffect(eff)
        return true
    end

    local function onCast2()
        
        SetUnitAnimation(u,"Stand Channel")

        local recasts = 0
        local function onRecast()
            if(recasts>=96)then recasts = 0;DestroyTimer(GetExpiredTimer());SetUnitAnimation(u,"Stand");return end
            if(UnitAlive(u)==false)then DestroyTimer(GetExpiredTimer());recasts = 0; return end

            recasts = recasts + 1
            local mx, my = GetPlayerMouseXY(pid)
            local cx, cy = GetUnitXY(u)
            local angle = AngleBetweenPoints(cx,cy,mx,my)
            local sx, sy = PolarProjectionXY(cx,cy,60,angle)
            local ex, ey = PolarProjectionXY(cx,cy,600,angle+GetRandomReal(-15,15))

            FaceUnitToXY(u,mx,my)
            CreateLinearProjectileWFilter("Abilities\\Weapons\\BoatMissile\\BoatMissile.mdl",sx,sy,ex,ey,32,as.speed/32,on_filter)
            UnitAddImpulseV2(u, u, angle-180, 20, 0)
        end

        TimerStart(CreateTimer(), 0.03125, true, onRecast)
        DestroyTimer(GetExpiredTimer())
    end

    local function onCast()
        SetUnitAnimation(u,"Stand Channel Alternate")
        QueueUnitAnimation(u,"Stand Channel Alternate")
        QueueUnitAnimation(u,"Stand Channel Alternate")
        UnitAddStun(u,6)
        TimerStart(CreateTimer(), 2.4, false, onCast2)
        AbilityRemoveMana(u,as)
        AbilityAddCd(as)
    end

    AbilityRegisterCast(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    local function onDescUpdate()
        as.name = GetLocalizedString("ratling_E_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("ratling_E_desc",pid)..
        GetLocalizedString("usesmouse",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("damage",pid)..as.damage..", ranged"..
        GetLocalizedString("range",pid)..(as.speed*3)..GetLocalizedString("proj speed",pid)..as.speed..
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

_ratling_e = "ability_ratling_e"
_A[_ratling_e] = ability_ratling_e
--
StringCodeName = "ratling_E_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Перезарядка"
Localz[StringCodeName][_en] = "Overcharge"

StringCodeName = "ratling_E_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Посылает свинцовый дождь на своих врагов. Всего 96 пуль."
Localz[StringCodeName][_en] = "Sends a rain of bullets to his foes. Fires 96 bullets."