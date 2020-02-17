function ability_murlochuntsman_w(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNSummonWaterElemental.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNSummonWaterElemental.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 30
    as.range = 800
    as.cd = 0
    as.cdmax = 10
    as.damage = 20
    
    ---------------------------------------------------------------------------------
    local G = CreateGroup()
    local t
    
    local function onCast()
        local x, y = GetUnitX(u),GetUnitY(u)
        AddSpecialEffectTimed("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",x,y,2)
        QueueUnitAnimation(u,"attack")

        filtercaster = u
        GroupEnumUnitsInRange(G, x, y, as.range, IsUnitAliveAndEnemyNotAvul_Filter)

        if(BlzGroupGetSize(G)==0)then goto emd end

        GroupRemoveUnit(G,u)
        for i = 0, BlzGroupGetSize(G)-1 do
            t = BlzGroupUnitAt(G, i)
            AddSpecialEffectTimed("Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl",GetUnitX(t),GetUnitY(t),2)
            AddBloodSplatsCone(t, AngleBetweenUnits(t,u), 300, as.damage)
            UnitAddImpulseV2(u, t, AngleBetweenUnits(t,u), 1500, 0)
            UnitAddStun(t, 0.4)
            DoMagicDamage(u, t, as.damage)
        end

        t = nil
        GroupClear(G)

        ::emd::
        QueueUnitAnimation(u,"Stand")
        IssueImmediateOrder(u, "Stop")

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
        as.name = GetLocalizedString("murlochuntsman_W_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)
        
        as.desc = GetLocalizedString("murlochuntsman_W_desc",pid)..
        GetLocalizedString("hotkey",pid)..as.hotkey..
        GetLocalizedString("damage",pid)..as.damage..", magic"..
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

_murlochuntsman_w = "ability_murlochuntsman_w"
_A[_murlochuntsman_w] = ability_murlochuntsman_w
--
StringCodeName = "murlochuntsman_W_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Волныыыыыы"
Localz[StringCodeName][_en] = "Waveeeeees"

StringCodeName = "murlochuntsman_W_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Кастует непонятную магию, в результате чего все враги притягиваются к мурлоку"
Localz[StringCodeName][_en] = "Does some weird magic, which results as pulling all enemies toward self"