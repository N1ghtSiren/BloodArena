---@param p p
---@param unitname string
---@param x real
---@param y real
---@param facing real
function CreateUnitNew(p, unitname, x, y, facing)
    local heroobj = {}
    local pid = GetPlayerId(p)
    local u = CreateUnit(p, fourcc(__hero_ids[UnitnameGetIndex(unitname)]), x, y, facing)
    BlzSetHeroProperName(u, GetPlayerName(p))
    player[pid].unit = u
    player[pid].heroobj = heroobj
    heroobj.unit = u
    heroobj.index = UnitAddIndex(u,heroobj)
    heroobj.stats = {}
    heroobj.buttons = {}
    BlzSetUnitMaxHP(u,100)
    BlzSetUnitMaxMana(u,100)
    AttachHealthBar(pid,u)
    AttachManaBar(pid,u)

    heroobj.abils = {}
    AddAbils(heroobj)

    heroobj.trigs = {}
    heroobj.buffs = {}


    local function onRevive()
        heroobj.revive(u)
        
        ClearSelectionForPlayer(p)
        SelectUnitAddForPlayer(u,p)
        heroobj.physics.vx = 0
        heroobj.physics.vy = 0
        heroobj.physics.vz = 0
        heroobj.physics.pusher = nil

        SetUnitFlyHeight(u, 0, 0)
        UnitAddInvul(u,3)

        DestroyTimer(GetExpiredTimer())
    end

    local function onDeath()
        SomeCoolTextOnKill(GetKillingUnit(),GetDyingUnit())
        TimerStart(CreateTimer(),5.,false,onRevive)
        AddBloodToDying(GetDyingUnit(), GetKillingUnit())
    end

    heroobj.trigs[2] = CreateTrigger()
    TriggerAddCondition(heroobj.trigs[2],Condition(onDeath))
    TriggerRegisterUnitEvent(heroobj.trigs[2],heroobj.unit,EVENT_UNIT_DEATH)

    ---------------------------------------------------------------------------------------
    local function applyregen()
        if(IsRemoved(u))then return true end

        if(UnitAlive(u))then
            SetUnitState(u, UNIT_STATE_LIFE, GetUnitState(u, UNIT_STATE_LIFE)+2*0.03125)
            SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA)+3*0.03125)
        end
    end

    AddOnUpdateFunction(applyregen)

    return u
end