function ability_paladin_q(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNBash.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNBash.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 50
    as.range = 300
    as.cd = 0
    as.cdmax = 10
    as.damage = 60

    ---------------------------------------------------------------------------------
    local timer = CreateTimer()
    local G = CreateGroup()
    local t
    local x,y

    local function onCast()
        x,y = PolarProjectionXY(GetUnitX(u),GetUnitY(u),100,GetUnitFacing(u))

        UnitAddStun(u,1.4)
        CreateCastText(u)
        TimerStart(CreateTimer(),1.5,false,function() 
            local x,y = PolarProjectionXY(GetUnitX(u),GetUnitY(u),100,GetUnitFacing(u));AddSpellPointer(x,y,1.2); 
            DestroyTimer(GetExpiredTimer()) 
            x,y = PolarProjectionXY(GetUnitX(u),GetUnitY(u),100,GetUnitFacing(u))
            DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl",x,y))
            UnitAddImpulseV2(u, u, AngleBetweenPoints(x,y,GetUnitX(u),GetUnitY(u)), 400, 100)
            --
            GroupEnumUnitsInRange(G, x, y, as.range, nil)
            for i = 0, BlzGroupGetSize(G)-1 do
                t = BlzGroupUnitAt(G, i)
                if (IsUnitAliveAndEnemyNotAvul(u,t)) then
                    DoRangedDamage(u, t, as.damage)
                    DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\NightElf\\NECancelDeath\\NECancelDeath.mdl",t,"origin"))
                    UnitAddImpulse(u, t, AngleBetweenUnits(u,t), 400, 300)
                end
            end
            GroupClear(G)
            SetUnitTimeScale(u,1)
        end)
        --
        SetUnitTimeScale(u,0.43)
        SetUnitAnimationByIndex(u,5)
        QueueUnitAnimation(u,"Stand")

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
        as.name = GetLocalizedString("paladin_Q_name", pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = 
        GetLocalizedString("paladin_Q_desc",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("damage",pid)..as.damage..", ranged"..
        GetLocalizedString("range",pid).."100+"..as.range..
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

        u = nil
        p = nil

    end
    as.remove = on_remove
end

_paladin_q = "ability_paladin_q"
_A[_paladin_q] = ability_paladin_q
--
StringCodeName = "paladin_Q_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Время Молота!"
Localz[StringCodeName][_en] = "Hammertime!"

StringCodeName = "paladin_Q_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Замахивается и сильно бьёт Молотом по Земле. Кто знает, может даже Земля чувствует боль?"
Localz[StringCodeName][_en] = "Swings the hammer and hits the ground very hard. Maybe even the ground feels pain? Who knows?"