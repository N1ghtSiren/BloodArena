---@param pid integer
---@param x real
---@param y real
---@param facing real
function CreateHero_Warden(pid,x,y,facing)
    local u = CreateUnitNew(Player(pid),_warden, x, y, facing)
    AddAbilityNew(u,_warden_q)
    AddAbilityNew(u,_warden_w)
    AddAbilityNew(u,_warden_e)
    AddAbilityNew(u,_warden_r)

    BlzSetUnitMaxHP(u,100)
    BlzSetUnitMaxMana(u,100)
    SetUnitMoveSpeed(u,335)
    BlzSetUnitBaseDamage(u,10,0)
    BlzSetUnitBaseDamage(u,10,1)
    BlzSetUnitRealField(u,UNIT_RF_MANA_REGENERATION,20)
    
    UnitGetObject(u).bloodgroup = _ne_blood
    UnitGetObject(u).bloodamount = 25

    UnitAttachPhysics(u)
    UnitAddCheckKillboxes(u)
    UnitRegisterRevives(u)
    
    return u
end