function init()
    require("utils.hooks")
    require("utils.Filters")
    require("utils.Indexer")
    require("utils.MousePos")
    require("utils.PeriodicHandler")
    require("utils.Pathability")
    require("utils.Abilityhelper")

    require("lib.UnitLib")
    require("Globals")
    require("core.Locales")
    
    require("core.InterfaceEngine")

    require("core.DamageEngine")
    require("core.ProjectileEngine")
    require("core.PlayerEngine")
    require("core.BuffEngine")
    require("core.TexttagEngine")
    require("core.UnitEngine")
    require("core.PhysicEngine")
    require("core.ChatCommands")
    require("core.ConditionEngine")

    require("mechanics.Score")
    require("mechanics.BloodColors")
    require("mechanics.BloodEffects")
    require("mechanics.Voting")
    require("mechanics.Locations")
    require("mechanics.Locations.Garden")
    require("mechanics.Locations.Volcano")
    require("mechanics.Locations.Ancients")
    require("mechanics.Locations.Forest")
    require("mechanics.Rounds")

    require("heroes.HeroImporter")
    require("mechanics.Score")
    
    
    require("debugging")
    require("utils.Garbage")
    require("init")
end

TimerStart(CreateTimer(),1.,false,init)

BlzFrameSetAbsPoint(BlzGetFrameByName("ConsoleUI",0), FRAMEPOINT_BOTTOMLEFT, 0.0 ,-1)