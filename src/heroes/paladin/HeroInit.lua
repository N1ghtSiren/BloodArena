---@param pid integer
---@param x real
---@param y real
---@param facing real
function CreateHero_Paladin(pid,x,y,facing)
    local u = CreateUnitNew(Player(pid),_paladin, x, y, facing)
    AddAbilityNew(u,_paladin_q)
    AddAbilityNew(u,_paladin_w)
    AddAbilityNew(u,_paladin_e)
    AddAbilityNew(u,_paladin_r)

    BlzSetUnitMaxHP(u,100)
    BlzSetUnitMaxMana(u,100)
    SetUnitMoveSpeed(u,365)
    BlzSetUnitBaseDamage(u,15,0)
    BlzSetUnitBaseDamage(u,15,1)
    BlzSetUnitRealField(u,UNIT_RF_MANA_REGENERATION,20)
    
    UnitGetObject(u).bloodgroup = _human_blood
    UnitGetObject(u).bloodamount = 30

    UnitAttachPhysics(u)
    UnitAddCheckKillboxes(u)
    UnitRegisterRevives(u)

    return u
end