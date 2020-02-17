function ability_warden_e(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNShadowStrike.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNShadowStrike.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 40
    as.cd = 0
    as.cdmax = 6

    as.flytime = 2
    as.dist = 2100
    as.speed = 1500
    as.range = 120
    as.damage = 30
    --cast actions
    local function on_fly(eff,x,y)
        if(as==nil)then return false end
        
        t = GetClosestEnemyAliveAndVisible(u,x,y,as.range)
        if(t==nil)then
            return false
        end

        AddBloodSplatsCone(t, AngleBetweenUnits(u,t), 600, as.damage)

        local heroeff = AddSpecialEffect("units\\nightelf\\herowarden\\herowarden.mdl",GetUnitX(u),GetUnitY(u))
        SetEffectFacePoint(heroeff, x, y, GetPointZ(x,y)+60)
        BlzSetSpecialEffectColorByPlayer(heroeff,p)
        BlzPlaySpecialEffect(heroeff, ANIM_TYPE_SPELL)
        EffectDisappearing(heroeff, 2)
        heroeff = nil
        
        x,y = PolarProjectionXY(GetUnitX(t),GetUnitY(t),100,GetUnitFacing(t)-180)
        SetUnitX(u,x)
        SetUnitY(u,y)
        DestroyEffect(eff)
        FaceUnitTo(u,t)
        IssueTargetOrder(u,"attack",t)

        UnitAddStun(t,1)
        UnitAddInvul(u,0.2)
        DoMeleeDamage(u,t,as.damage)

        return true
    end

    local function onCast()
        local x,y = GetPlayerMouseXY(pid)
        SetUnitAnimation(u, "Spell Throw")
        CreateLinearProjectileWFilter("Abilities\\Spells\\NightElf\\shadowstrike\\ShadowStrikeMissile.mdl",GetUnitX(u),GetUnitY(u),x,y, as.dist/64 , as.speed/32 ,on_fly)

        AddSpellPointerUnit(t,2)
        UnitAddStun(u, 0.2)
        CreateCastText(u)
        SetUnitFacingTimed(u, AngleBetweenPoints(GetUnitX(u), GetUnitY(u), x, y),0.0)

        AbilityRemoveMana(u,as)
        AbilityAddCd(as)
    end

    AbilityRegisterCast(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    local function onDescUpdate()
        as.name = GetLocalizedString("warden_E_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = 
        GetLocalizedString("warden_E_desc",pid)..
        GetLocalizedString("usesmouse",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("damage",pid)..as.damage..", melee"..
        GetLocalizedString("range",pid)..as.dist..GetLocalizedString("proj speed",pid)..as.speed..
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

_warden_e = "ability_warden_e"
_A[_warden_e] = ability_warden_e
--
StringCodeName = "warden_E_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Удар из тени"
Localz[StringCodeName][_en] = "Shadow strike"

StringCodeName = "warden_E_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Кидает клинок в позицию курсора. Если клинок попадёт во врага, герой телепортируется к нему."
Localz[StringCodeName][_en] = "Throws knife to the cursor position. If the knife hits the enemy, hero will teleport to him."