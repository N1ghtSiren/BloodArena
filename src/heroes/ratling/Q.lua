function ability_ratling_q(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNFlare2.tga"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNFlare2.tga"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 20
    as.damage = 10
    as.cd = 0
    as.cdmax = 14
    as.speed = 1200

    local function onCast()
        local mx,my = GetPlayerMouseXY(pid)
        local cx,cy = GetUnitXY(u)
        local angle = AngleBetweenPoints(cx,cy,mx,my)
        
        FaceUnitToXY(u,mx,my)
        SetUnitAnimation(u,"Attack Slam")
        QueueUnitAnimation(u,"Stand")
        UnitAddStun(u,1.5)

        cx,cy = PolarProjectionXY(cx,cy,60,angle)

        local t
        local function on_filter(eff,x,y)
            t = GetClosestEnemyAliveAndVisible(u,x,y,60)
            if(t==nil)then return false end

            DoMagicDamage(u,t,as.damage)
            AddBloodSplatsCone(t, AngleBetweenUnits(u,t), 200, as.damage)
            UnitAddImpulseV2(u, t, AngleBetweenUnits(u,t), 500, 0)
            UnitAddStun(t,1)
            DestroyEffect(eff)
            

            return true
        end
        --
        local function on_cast()
            for i = 0,4 do
                local x,y = PolarProjectionXY(cx,cy,60,angle-20+(10*i))
                CreateLinearProjectileWFilter("Abilities\\Weapons\\BoatMissile\\BoatMissile.mdl",cx,cy,x,y,32,as.speed/32,on_filter)
            end
            DestroyTimer(GetExpiredTimer())
            UnitAddImpulseV2(u, u, angle-180, 2500, 0)
            AbilityRemoveMana(u,as)
            AbilityAddCd(as)
        end

        TimerStart(CreateTimer(),0.38,false,on_cast)
    end

    AbilityRegisterCast(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    --description and name
    local function onDescUpdate()
        as.name = GetLocalizedString("ratling_Q_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("ratling_Q_desc",pid)..
        GetLocalizedString("usesmouse",pid)..
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
        p = nil
        u = nil

    end
    as.remove = on_remove
end

_ratling_q = "ability_ratling_q"
_A[_ratling_q] = ability_ratling_q
--
StringCodeName = "ratling_Q_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Шотган Мод"
Localz[StringCodeName][_en] = "Shotgun Mode"

StringCodeName = "ratling_Q_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Стреляет сразу 5ю пулями, отбрасывая себя и врагов."
Localz[StringCodeName][_en] = "Shoots 5 bullets at once, pushing self and enemies hit."