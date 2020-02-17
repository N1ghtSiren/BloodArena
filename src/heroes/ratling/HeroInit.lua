---@param pid integer
---@param x real
---@param y real
---@param facing real
function CreateHero_Ratling(pid,x,y,facing)
    local u = CreateUnitNew(Player(pid),_ratling, x, y, facing)
    AddAbilityNew(u,_ratling_q)
    AddAbilityNew(u,_ratling_w)
    AddAbilityNew(u,_ratling_e)
    AddAbilityNew(u,_ratling_r)

    BlzSetUnitMaxHP(u,100)
    BlzSetUnitMaxMana(u,100)
    SetUnitMoveSpeed(u,285)
    BlzSetUnitBaseDamage(u,1,0)
    BlzSetUnitRealField(u,UNIT_RF_MANA_REGENERATION,20)
    
    UnitGetObject(u).bloodgroup = _human_blood
    UnitGetObject(u).bloodamount = 25

    UnitAttachPhysics(u)
    UnitAddCheckKillboxes(u)
    UnitRegisterRevives(u)
    
    return u
end