function ability_evilsylvanas_e(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNTheBlackArrow.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNTheBlackArrow.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 70
    as.speed = 1250
    as.dist = 3000
    as.range = 60
    as.cd = 0
    as.cdmax = 8
    as.damage = 20

    ---------------------------------------------------------------------------------
    local function on_fly(eff,x,y)
        if(as==nil)then return false end

        t = GetClosestEnemyAliveAndVisible(u,x,y,as.range)
        if(t==nil)then
            return false
        end

        AddBloodSplatsCone(t, AngleBetweenPoints(GetUnitX(t),GetUnitY(t),x,y), 600, as.damage)
        UnitAddImpulseV3(u, t, AngleBetweenPoints(GetUnitX(t),GetUnitY(t),x,y), 300, 0, 0.15)
        
        DoRangedDamage(u,t,as.damage)
        DestroyEffect(eff)

        return true
    end

    local recasts = 0
    local function onRecast()
        if(recasts>=5)then recasts = 0;SetUnitTimeScale(u,1);DestroyTimer(GetExpiredTimer());return end
        if(UnitAlive(u)==false)then DestroyTimer(GetExpiredTimer()); return end

        recasts = recasts + 1
        local mx, my = GetPlayerMouseXY(pid)
        local cx, cy = GetUnitXY(u)
        local angle = AngleBetweenPoints(cx,cy,mx,my)
        local ex, ey = PolarProjectionXY(cx,cy,600,angle+GetRandomReal(-3,3))

        FaceUnitToXY(u,mx,my)
        SetUnitAnimation(u, "Attack")
        CreateLinearProjectileWFilter("Abilities\\Spells\\Other\\BlackArrow\\BlackArrowMissile.mdl",cx,cy,ex,ey, as.dist/32 , as.speed/32 ,on_fly)

        AddSpellPointer(mx,my,1.5)
        UnitAddStun(u, 0.3)
        CreateCastText(u)
    end

    local function onCast()
        SetUnitTimeScale(u,4)
        TimerStart(CreateTimer(), 0.2, true, onRecast)
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
        as.name = GetLocalizedString("evilsylvanas_E_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = 
        GetLocalizedString("evilsylvanas_E_desc",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("usesmouse",pid)..
        GetLocalizedString("damage",pid)..as.damage..", ranged"..
        GetLocalizedString("range",pid)..as.dist..GetLocalizedString("proj speed",pid)..as.speed..
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

_evilsylvanas_e = "ability_evilsylvanas_e"
_A[_evilsylvanas_e] = ability_evilsylvanas_e
--
StringCodeName = "evilsylvanas_E_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Проклятые Стрелы"
Localz[StringCodeName][_en] = "Cursed Arrows"

StringCodeName = "evilsylvanas_E_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Использует мощнейшие стрелы чтобы завалить любого врага"
Localz[StringCodeName][_en] = "Uses deadliest arrows to slain everything."
