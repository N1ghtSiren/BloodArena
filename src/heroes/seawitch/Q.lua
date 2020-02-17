function ability_seawitch_q(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNMagicalSentry3.tga"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNMagicalSentry3.tga"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 40
    as.damage = 10
    as.cd = 0
    as.cdmax = 15
    as.speed = 500

    local function on_hit(ex,ey)
        SetUnitX(u,ex)
        SetUnitY(u,ey)
        SetUnitVertexColor(u,255,255,255,255)
        SetUnitAnimation(u,"Stand")
    end

    local function on_filter(eff,x,y)
        FaceUnitToXY(u,x,y)
        SetUnitX(u,x)
        SetUnitY(u,y)
    end

    local function onCast()
        local mx,my = GetPlayerMouseXY(pid)
        if(not IsTerrainWalkable(mx,my))then return end

        local cx,cy = GetUnitXY(u)
        local dist = DistanceBetweenPointsXY(mx,my,cx,cy)
        local time = (dist/as.speed)

        CreateLinearProjectileWFilterV2("",cx,cy,mx,my,time*32,as.speed/32,on_filter,on_hit)

        UnitAddStun(u, time+0.1)
        UnitHideBars(u, time+0.2)
        UnitAddInvul(u, time+0.4)
        SetUnitVertexColor(u,255,255,255,100)

        SetUnitAnimationByIndex(u,6)
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
        as.name = GetLocalizedString("seawitch_Q_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("seawitch_Q_desc",pid)..
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

_seawitch_q = "ability_seawitch_q"
_A[_seawitch_q] = ability_seawitch_q
--
StringCodeName = "seawitch_Q_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Пустота"
Localz[StringCodeName][_en] = "Abyss"

StringCodeName = "seawitch_Q_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Скрывается в другом измерении чтобы достичь нужной точки."
Localz[StringCodeName][_en] = "Lurks into another dimention to reach targeted point."