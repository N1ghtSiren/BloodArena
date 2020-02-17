---@param pid integer
---@param x real
---@param y real
---@param facing real
function CreateHero_MurlocYellow(pid,x,y,facing)
    local u = CreateUnitNew(Player(pid),_murlochuntsman, x, y, facing)
    AddAbilityNew(u,_murlochuntsman_q)
    AddAbilityNew(u,_murlochuntsman_w)
    AddAbilityNew(u,_murlochuntsman_e)
    AddAbilityNew(u,_murlochuntsman_r)

    BlzSetUnitMaxHP(u,100)
    BlzSetUnitMaxMana(u,100)
    SetUnitMoveSpeed(u,335)
    BlzSetUnitBaseDamage(u,10,0)
    BlzSetUnitBaseDamage(u,10,1)
    
    BlzSetUnitRealField(u,UNIT_RF_MANA_REGENERATION,20)
    
    UnitGetObject(u).bloodgroup = _ne_blood
    UnitGetObject(u).bloodamount = 20

    UnitAttachPhysics(u)
    UnitAddCheckKillboxes(u)
    UnitRegisterRevives(u)
    
    return u
end