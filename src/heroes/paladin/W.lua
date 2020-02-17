function ability_paladin_w(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNHammer.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNHammer.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 20
    as.range = 200
    as.cd = 0
    as.cdmax = 6
    as.damage = 40

    ---------------------------------------------------------------------------------
    local casttime = 0.4
    local t,x,y
    local timer = CreateTimer()

    local function onCast()
        x, y = GetUnitX(u),GetUnitY(u)
        t = GetClosestEnemyAliveAndVisible(u,x,y,as.range)

        if(t==nil)then
            return
        end
        
        UnitAddStun(u,0.8)
        CreateCastText(u)
        FaceUnitTo(u,t)
        SetUnitAnimationByIndex(u,4)
    
        local function hit()
            DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Orc\\OrcLargeDeathExplode\\OrcLargeDeathExplode.mdl",t,"chest"))
            AddBloodSplatsCone(t, AngleBetweenUnits(u,t)+70, 500, as.damage)
            UnitAddImpulse(u, t, AngleBetweenUnits(u,t)+70, 400, 300)
            DoMeleeDamage(u,t,as.damage)
            --
            QueueUnitAnimation(u,"Stand")
            t = nil

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
        as.name = GetLocalizedString("paladin_W_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)
        
        as.desc = 
        GetLocalizedString("paladin_W_desc",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("damage",pid)..as.damage..", melee"..
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

    end
    as.remove = on_remove
end

_paladin_w = "ability_paladin_w"
_A[_paladin_w] = ability_paladin_w
--
StringCodeName = "paladin_W_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "ЛицоМолот!"
Localz[StringCodeName][_en] = "Hammerface!"

StringCodeName = "paladin_W_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Почти как ЛицоРука. Ищет врагов, которые подошли СЛИШКОМ близко к Молоту. Если СЛИШКОМ близких нет, то ничего не происходит."
Localz[StringCodeName][_en] = "Searches for enemies who would dare to come too close. HAMMER don't like hugs. If no enemy is nearby nothing happens. Literally nothing. Not even joking."