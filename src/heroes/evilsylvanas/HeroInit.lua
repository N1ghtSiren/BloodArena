---@param pid integer
---@param x real
---@param y real
---@param facing real
function CreateHero_Evilsylvanas(pid,x,y,facing)
    local u = CreateUnitNew(Player(pid),_evilsylvanas, x, y, facing)
    AddAbilityNew(u,_evilsylvanas_q)
    AddAbilityNew(u,_evilsylvanas_w)
    AddAbilityNew(u,_evilsylvanas_e)
    AddAbilityNew(u,_evilsylvanas_r)

    BlzSetUnitMaxHP(u,100)
    BlzSetUnitMaxMana(u,100)
    SetUnitMoveSpeed(u,345)
    BlzSetUnitBaseDamage(u,15,0)
    BlzSetUnitBaseDamage(u,15,1)
    
    BlzSetUnitAttackCooldown(u, 1.8, 0)
    BlzSetUnitRealField(u, UNIT_RF_MANA_REGENERATION, 20)
    
    UnitGetObject(u).bloodgroup = _demon_blood
    UnitGetObject(u).bloodamount = 20

    UnitAttachPhysics(u)
    UnitAddCheckKillboxes(u)
    UnitRegisterRevives(u)
    
    return u
end