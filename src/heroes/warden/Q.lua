function ability_warden_q(heroobj, slot)
    local as = heroobj.abils[slot]
    local u = heroobj.unit
    local p = GetOwningPlayer(u)
    local pid = GetPlayerId(p)
    
    local blinkstart = "Abilities\\Spells\\NightElf\\Blink\\BlinkCaster.mdl"
    local blinkend = "Abilities\\Spells\\NightElf\\Blink\\BlinkTarget.mdl"
    local heromodel = "units\\nightelf\\herowarden\\herowarden.mdl"

    as.used = true

    as.button = player[pid].buttons[slot]
    as.icon = "ReplaceableTextures\\CommandButtons\\BTNBlink.blp"
    as.disicon = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNBlink.blp"

    as.name, as.desc = " ", " "

    as.hotkey = GetDefaultHotkey(slot)
    as.manacost = 20
    as.cd = 0
    as.cdmax = 8

    

    local function onCast()
        local x,y = GetPlayerMouseXY(pid)
        local heroeff
    
        if(IsTerrainWalkable(x,y))then
            AddSpecialEffectTimed(blinkstart, GetUnitX(u), GetUnitY(u), 1)
    
            heroeff = AddSpecialEffect(heromodel,GetUnitX(u),GetUnitY(u))
            BlzSetSpecialEffectColorByPlayer(heroeff, p)
            SetEffectFacePoint(heroeff, x, y, GetPointZ(x,y)+60)
            BlzPlaySpecialEffect(heroeff, ANIM_TYPE_SPELL)
            EffectDisappearing(heroeff, 2)
            heroeff = nil
    
            SetUnitX(u,x)
            SetUnitY(u,y)

            IssueImmediateOrder(u, "holdposition")

            SetUnitAnimation(u, "Spell Throw")
            UnitAddInvul(u, 0.2)
            AddSpecialEffectTimed(blinkend, x, y, 1)
            local life = GetWidgetLife(u)

            local function onCheck()
                if(mathfix(GetUnitX(u))==mathfix(x) and mathfix(GetUnitY(u))==mathfix(y) and mathfix(GetWidgetLife(u))>=mathfix(life))then
                    UnitHideBars(u, 0.04)
                    return false
                end

                return true
            end
            
            AddOnUpdateFunction(onCheck)
            

            AbilityRemoveMana(u,as)
            AbilityAddCd(as)
        end
    end

    AbilityRegisterCast(u,as)
    AbilityAddAction(as,onCast)
    AbilityRegisterCooldown(as)
    AbilityRegisterManacost(u,as)
    AbilityUpdateVisual(p,as)

    --description and name
    local function onDescUpdate()
        as.name = GetLocalizedString("warden_Q_name",pid)
        BlzFrameSetText(as.button.tooltiptitle, as.name)

        as.desc = 
        GetLocalizedString("warden_Q_desc",pid)..
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

_warden_q = "ability_warden_q"
_A[_warden_q] = ability_warden_q
--
StringCodeName = "warden_Q_name"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Блинк"
Localz[StringCodeName][_en] = "Blink"

StringCodeName = "warden_Q_desc"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Телепортирует героя в позицию курсора и пытается сделать его невидимым. Инвиз спадает если герой получил урон или сдвинулся с места."
Localz[StringCodeName][_en] = "Teleports hero to cursor position and tried to make him invisible. Invis breaks if hero tooks damage or moves."
