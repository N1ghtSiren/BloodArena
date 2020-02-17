function ability_evilsylvanas_q(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNPossession2.tga"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNPossession2.tga"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 30
    as.cd = 0
    as.cdmax = 12
    as.duration = 20
    ---------------------------------------------------------------------------------
    local eff, tpx, tpy, isGhostExist, isGhostFlyes, timer

    local function ReleaseGhost()
        DestroyTimer(timer)
        DestroyEffect(eff)
        isGhostExist = false
        
        if(as==nil)then return end
        as.icon = "ReplaceableTextures\\CommandButtons\\BTNPossession2.tga"
        as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNPossession2.tga"
    end

    local function TpOnGhost()
        ShowUnit(u,false)
        UnitAddInvul(u,2.1)
        

        local function on_end()
            SetUnitX(u,tpx)
            SetUnitY(u,tpy)
            ShowUnit(u,true)
            IssueImmediateOrder(u, "stop")
            ClearSelectionForPlayer(p)
            SelectUnitAddForPlayer(u,p)
            ReleaseGhost()
        end

        local function on_fly(eff, x, y)
            SetUnitX(u,x)
            SetUnitY(u,y)
            AddSpecialEffectTimed("Abilities\\Spells\\Undead\\CarrionSwarm\\CarrionSwarmDamage.mdl", x, y, 0.8)
            return false
        end
        
        CreateLinearProjectileWFilterV2("Abilities\\Weapons\\IllidanMissile\\IllidanMissile.mdl",GetUnitX(u),GetUnitY(u),tpx,tpy,72,DistanceBetweenPointsXY(GetUnitX(u),GetUnitY(u),tpx,tpy)/72,on_fly,on_end)
    end

    local function SetGhost(sx,sy,x,y)
        tpx,tpy = x,y
        isGhostFlyes = false
        isGhostExist = true
        eff = AddSpecialEffect("units\\undead\\Banshee\\Banshee.mdl",x,y)
        SetEffectFacePointV2(eff,sx,sy)

        as.icon = "ReplaceableTextures\\CommandButtons\\BTNPossession3.tga"
        as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNPossession3.tga"

        timer = CreateTimer()
        TimerStart(timer, as.duration, false, ReleaseGhost)
    end

    local function onCast()
        if(isGhostFlyes)then return end
        if(isGhostExist)then TpOnGhost() AbilityRemoveMana(u,as) AbilityAddCd(as) return end

        
        local x,y = GetPlayerMouseXY(pid)
        if(IsTerrainWalkable(x,y)==false)then return end

        isGhostFlyes = true
        SetUnitAnimation(u, "Spell")
        CreateLinearProjectile("units\\undead\\Banshee\\Banshee.mdl",GetUnitX(u),GetUnitY(u), x, y, DistanceBetweenPointsXY(x,y,GetUnitX(u),GetUnitY(u))/64, SetGhost)

        UnitAddStun(u, 0.3)
        CreateCastText(u)
        SetUnitFacingTimed(u, AngleBetweenPoints(GetUnitX(u), GetUnitY(u), x, y),0.0)

        AbilityRemoveMana(u,as)
    end
    
    AbilityRegisterCastNoStun(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    --description and name
    local function onDescUpdate()
        as.name = GetLocalizedString("evilsylvanas_Q_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("evilsylvanas_Q_desc",pid)..
        GetLocalizedString("usesmouse",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("manacost",pid)..as.manacost..
        GetLocalizedString("duration",pid)..as.duration..
        GetLocalizedString("cooldown",pid)..as.cdmax
        BlzFrameSetText(as.button.tooltiptext, as.desc)
    end
    as.update = onDescUpdate
    as.update()

    --removing
    local function on_remove()
        ReleaseGhost()

        AbilityRemoveAction(as,onCast)
        AbilityRemoveDefaults(as)
        DestroyTimer(timer)
        DestroyGroup(G)

        u = nil
        p = nil
    end
    as.remove = on_remove
end

_evilsylvanas_q = "ability_evilsylvanas_q"
_A[_evilsylvanas_q] = ability_evilsylvanas_q
--
StringCodeName = "evilsylvanas_Q_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Призрак"
Localz[StringCodeName][_en] = "Ghost"

StringCodeName = "evilsylvanas_Q_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Выпускает призрака, на которого можно телепортироваться какое-то время. Нажмите ещё раз для телепортации."
Localz[StringCodeName][_en] = "Releases ghost, which can be used to teleport on it in some time. Press again to teleport."