function ability_ratling_w(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNFragmentationBombs.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNFragmentationBombs.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 40
    as.cd = 0
    as.cdmax = 12
    as.range = 80
    as.duration = 2

    --cast action
    local G = CreateGroup()
    --

    local function onCast()
        local mx, my = GetPlayerMouseXY(pid)
        FaceUnitToXY(u, mx, my)
        
        local function on_filter(eff,x,y)
            t = GetClosestEnemyAliveAndVisible(u,x,y,as.range)
            if(t==nil)then return false end
            
            UnitAddStun(t,as.duration)
            DestroyEffect(eff)
            return true
        end

        CreateLinearProjectileWFilter("Abilities\\Weapons\\CannonTowerMissile\\CannonTowerMissile.mdl", GetUnitX(u),GetUnitY(u),mx,my,64,800/32,on_filter)
        
        QueueUnitAnimation(u,"Stand")
        IssueImmediateOrder(u, "stop")

        AbilityRemoveMana(u,as)
        AbilityAddCd(as)
    end
    
    AbilityRegisterCast(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    local function onDescUpdate()
        as.name = GetLocalizedString("ratling_W_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)
        
        as.desc = GetLocalizedString("ratling_W_desc",pid)..
        GetLocalizedString("usesmouse",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
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
        DestroyGroup(G)

        G = nil
        p = nil
        u = nil

    end
    as.remove = on_remove
end

_ratling_w = "ability_ratling_w"
_A[_ratling_w] = ability_ratling_w
--
StringCodeName = "ratling_W_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Флешка"
Localz[StringCodeName][_en] = "Flash grenade"

StringCodeName = "ratling_W_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Бросает гранату к курсору, оглушая одного врага."
Localz[StringCodeName][_en] = "Throws granade toward cursor position, stunning one enemy."