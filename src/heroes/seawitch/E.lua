function ability_seawitch_e(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNMonsoon2.tga"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNMonsoon2.tga"
    
    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 70
    as.cd = 0
    as.cdmax = 13
    as.speed = 1800
    as.damage = 20

    local isCharging = false
    local delta = 1
    local chargetimer = CreateTimer()
    
    local G = CreateGroup()
    local G2 = CreateGroup()

    local function on_hit()
        GroupClear(G2)
    end

    local function on_filter(eff,x,y)
        filtercaster = u

        if(delta>=3)then
            TimerStart(CreateTimer(),0.0625,false, function()
                DestroyTimer(GetExpiredTimer())
                DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl",x,y))
            end)
        end

        GroupEnumUnitsInRange(G,x,y, 50*delta, IsUnitAliveAndEnemyNotAvul_Filter)
        if(BlzGroupGetSize(G)==0)then return end

        local t
        for i = 0, BlzGroupGetSize(G)-1 do
            t = BlzGroupUnitAt(G, i)
            
            if(IsUnitInGroup(t,G2)==false)then
                AddBloodSplatsCone(t, AngleBetweenPoints(x,y,GetUnitXY(t)), 300*delta, as.damage*delta)
                UnitAddStun(t, 0.5)
                DoMagicDamage(u, t, as.damage*delta)
                GroupAddUnit(G2,t)
            end

        end

        t = nil
        GroupClear(G)
    end
    
    local function on_shoot()
        local mx,my = GetPlayerMouseXY(pid)
        local cx,cy = GetUnitXY(u)
        FaceUnitToXY(u,mx,my)
        SetUnitAnimation(u,"Attack")
        QueueUnitAnimation(u,"Stand")
        
        CreateLinearProjectileWFilterV2("MyEffects\\VoidRainMissile.mdl",cx,cy,mx,my,100*(1/delta),as.speed/32,on_filter,on_hit)

        isCharging = false
        UnitAddImpulseV2(u, u, AngleBetweenPoints(cx,cy,mx,my)-180, 500*delta, 0)

        as.icon = "ReplaceableTextures\\CommandButtons\\BTNMonsoon2.tga"

        DestroyTimer(chargetimer)
        chargetimer = CreateTimer()

        AbilityRemoveMana(u,as)
        AbilityAddCd(as)
    end
    
    local function onCast()
        if(isCharging)then on_shoot() return end

        SetUnitAnimation(u,"Stand Ready")
        UnitAddStun(u,1)

        isCharging = true
        delta = 1

        as.icon = "ReplaceableTextures\\CommandButtons\\BTNStarfall3.tga"

        local function onCharge()
            delta = delta + 0.5
            DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl",u,"weapon"))

            FaceUnitToXY(u,GetPlayerMouseXY(pid))

            if(delta>=2)then
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",u,"weapon"))
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",u,"hand left"))
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",u,"hand right"))
            end

            if(delta>=4)then
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl",u,"weapon"))
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl",u,"hand left"))
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl",u,"hand right"))
            end

            if(delta>=5)then
                on_shoot()
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl",u,"weapon"))
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl",u,"hand left"))
                DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl",u,"hand right"))
            end

            UnitAddStun(u,1)
        end

        TimerStart(chargetimer, 0.5, true, onCharge)
    end

    AbilityRegisterCastNoStun(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    local function onDescUpdate()
        as.name = GetLocalizedString("seawitch_E_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = GetLocalizedString("seawitch_E_desc",pid)..
        GetLocalizedString("usesmouse",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("damage",pid)..as.damage..", ranged"..
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

_seawitch_e = "ability_seawitch_e"
_A[_seawitch_e] = ability_seawitch_e
--
StringCodeName = "seawitch_E_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Заряженная стрела"
Localz[StringCodeName][_en] = "Charged arrow"

StringCodeName = "seawitch_E_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Фокусирует ману чтобы выпустить одну заряженную стрелу. Урон увеличиваются, Дальность уменьшается до 5 раз ,. Нажмите снова чтобы выстрелить. Автоматически выпускает стрелу при полном заряде."
Localz[StringCodeName][_en] = "Focuses mana to fire one powerfull arrow. Damage upgrades, Range decreases up to 5 times. Press again to release, Automatically releases after getting full power."