---@param pid integer
---@param x real
---@param y real
---@param facing real
function CreateHero_Seawitch(pid,x,y,facing)
    local u = CreateUnitNew(Player(pid),_seawitch, x, y, facing)
    AddAbilityNew(u,_seawitch_q)
    AddAbilityNew(u,_seawitch_w)
    AddAbilityNew(u,_seawitch_e)
    AddAbilityNew(u,_seawitch_r)

    BlzSetUnitMaxHP(u,100)
    BlzSetUnitMaxMana(u,100)
    SetUnitMoveSpeed(u,285)
    BlzSetUnitBaseDamage(u,15,0)
    BlzSetUnitRealField(u,UNIT_RF_MANA_REGENERATION,20)
    
    UnitGetObject(u).bloodgroup = _demon_blood
    UnitGetObject(u).bloodamount = 25

    UnitAttachPhysics(u)
    UnitAddCheckKillboxes(u)
    UnitRegisterRevives(u)
    
    return u
end