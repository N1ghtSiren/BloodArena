function Location_Volcano()

    local obj = {}

    local minx = 2970 
    local maxx = 7400
    local miny = -2175
    local maxy = 2300

    obj.startx = 5400
    obj.starty = 0
    obj.minx = minx
    obj.maxx = maxx
    obj.miny = miny
    obj.maxy = maxy
    isActive = false

    local function is_in_killbox(unit)
        local x,y = GetUnitXY(unit)
        return isActive and GetUnitZ(unit)<=0 and (x < maxx and x > minx and y < maxy and y > miny) and GetPointZ(GetUnitXY(unit))<=-80 and UnitAlive(unit)
    end

    local function is_in_location(unit)
        local x,y = GetUnitXY(unit)
        return (x < maxx+200 and x > minx-200 and y < maxy+200 and y > miny-200)
    end

    local function killbox(unit)
        local obj = UnitGetObject(unit)
    
        if(is_in_killbox(unit))then
            CreateCastText(unit)
    
            if(obj.physics.pusher==nil)then
                obj.physics.pusher = unit
            end
    
            DoPureDamage(obj.physics.pusher, unit, 40)
            DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",GetUnitXY(unit)))
        end

        if(not is_in_location(unit))then
            DoPureDamage(unit,unit,666)
        end
    end
    obj.killbox = killbox

    local function revive(unit)
        local x, y 
        while(true)do
            x, y = GetRandomReal(minx, maxx),GetRandomReal(miny, maxy)
            if(IsTerrainWalkable(x,y)and GetPointZ(x,y)>-70)then
                break
            end
        end
        ReviveHero(unit,x,y,true)
        SetCameraPositionForPlayer(GetOwningPlayer(unit),x,y)
        return true
    end
    obj.revive = revive

    local function mouse(pid)
        local x, y
        local u = GetClosestEnemyAliveAndVisible(player[pid].heroobj.unit,GetRandomReal(minx, maxx),GetRandomReal(miny, maxy),600)

        if u == nil then
            while(true)do
                x,y = GetRandomReal(minx, maxx),GetRandomReal(miny, maxy)
                
                if(GetPointZ(x,y)>=-70)then
                    return x,y
                end
            end
        end
        
        x,y = GetUnitXY(u)
        u = nil
        return x,y
    end
    obj.mouse = mouse

    SetCameraBounds(minx, miny, minx, maxy, maxx, maxy, maxx, miny)
    SetCameraPosition(obj.startx,obj.starty)
    SetWaterBaseColor(0,0,0,0)
    printTimed("Current Arena: Volcano!",20)
--------------------------------------------------------------------------------------
    local function on_event_2()
        CameraSetTargetNoiseTimed(20,10,1.2)
        printDbg("Volcano eruption!")
        for i = 0, 50 do
            local dist = GetRandomReal(400,2500)
            local angle = GetRandomReal(0,360)
            local sx, sy, sz = 5400, 0, 300
            local mx, my, mz = PolarProjectionXYZ(sx,sy,sz,dist,GetRandomReal(90,120),angle)
            local ex, ey = PolarProjectionXY(sx,sy,dist,angle)
            local ez = GetPointZ(ex,ey)
            CreateSimpleHomingProjectile_XYZ_MidXYZ_XYZ_ModelName("Abilities\\Weapons\\RedDragonBreath\\RedDragonMissile.mdl",sx,sy,sz,mx,my,mz,ex,ey,ez,GetRandomReal(200,500),emptyfunc)
        end
        return
    end

    local function on_event()
        if(current_location~=obj)then DestroyTimer(GetExpiredTimer()) return end
        local r
        local function on_timer_2()
            DestroyTimer(GetExpiredTimer())
            r = 255
            local function on_timer_3()
                if(r<=0) or (current_location~=obj)then
                    return true
                end

                if(r<=100)then
                    isActive = false
                end

                SetWaterBaseColor(r,0,0,r)
                r = r - 1

                return false
            end
            AddOnUpdateFunction(on_timer_3)
        end
        
        r = 0

        local function on_timer()
            if(current_location~=obj)then return true end

            if(r>=255)then
                on_event_2()
                isActive = true
                TimerStart(CreateTimer(),5,false,on_timer_2)
                return true
            end
            r = r + 1
            SetWaterBaseColor(r,0,0,r)
            return false
        end
        AddOnUpdateFunction(on_timer)
    end
    TimerStart(CreateTimer(),30,true,on_event)
    return obj
end