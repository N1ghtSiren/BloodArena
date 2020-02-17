check_is_dead = true
check_is_mana = true
check_is_cd = true
check_is_stun = true

function IsCastConditions(u,as)
    return IsManaConditions(u,as) and IsColdownConditions(u,as) and IsAliveConditions(u,as) and UnitNotStunned(u)
end

function IsManaConditions(u,as)
    if(check_is_mana)then
        if(GetUnitState(u,UNIT_STATE_MANA)<as.manacost)then
            return false
        end
    end

    return true
end

function IsColdownConditions(u,as)
    if(check_is_cd)then
        if(as.cd>0)then
            return false
        end
    end

    return true
end

function IsAliveConditions(u,as)
    if(check_is_dead)then
        if(not UnitAlive(u))then
            return false
        end
    end

    return true
end

function AbilityRemoveMana(u,as)
    if(as==nil)then return end
    
    if(check_is_mana)then
        SetUnitState(u,UNIT_STATE_MANA, GetUnitState(u,UNIT_STATE_MANA)-as.manacost)
    end
end

function AbilityAddCd(as)
    if(as==nil)then return end
    if(check_is_cd)then
        as.cd = as.cdmax
    end
end