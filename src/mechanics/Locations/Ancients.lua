function Location_Ancients()
    local obj = {}

    local minx = 2950
    local maxx = 7400
    local miny = 2950
    local maxy = 7200

    obj.startx = 5140
    obj.starty = 4700
    obj.minx = minx
    obj.maxx = maxx
    obj.miny = miny
    obj.maxy = maxy

    local function is_in_location(unit)
        local x,y = GetUnitXY(unit)
        return (x < maxx+200 and x > minx-200 and y < maxy+200 and y > miny-200)
    end

    local function killbox(unit)
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
    
    SetCameraBounds(minx, miny, minx, maxy, maxx, maxy, maxx, miny)
    SetCameraPosition(obj.startx,obj.starty)
    SetWaterBaseColor(255,255,255,255)
    printTimed("Current Arena: Ancients!",20)

    local function mouse(pid)
        local x, y
        local u = GetClosestEnemyAliveAndVisible(player[pid].heroobj.unit,GetRandomReal(minx, maxx),GetRandomReal(miny, maxy),400)

        if u == nil then
            return GetRandomReal(minx, maxx),GetRandomReal(miny, maxy)
        end
        
        x,y = GetUnitXY(u)
        u = nil
        return x,y
    end
    obj.mouse = mouse

---------------------------------------------------------------------

    local function on_event_2()
        if(current_location~=obj)then DestroyTimer(GetExpiredTimer()) return end

        for i = 0, 20 do
            local dist = GetRandomReal(1000,3500)
            local sx, sy, sz = 3400, 3300, 200
            local mx, my, mz = PolarProjectionXY(sx,sy,dist,GetRandomReal(-30,120))
            local mz = GetRandomReal(300,600)
            local ex, ey, ez = 6860, 6640, 200
            
            CreateSimpleHomingProjectile_XYZ_MidXYZ_XYZ_ModelName("Abilities\\Weapons\\WitchDoctorMissile\\WitchDoctorMissile.mdl",sx,sy,sz,mx,my,mz,ex,ey,ez,GetRandomReal(600,900),emptyfunc)
        end
    end

    TimerStart(CreateTimer(),GetRandomReal(20,30),true,on_event_2)

    local function on_event()
        if(current_location~=obj)then DestroyTimer(GetExpiredTimer()) return end

        for i = 0, 20 do
            local dist = GetRandomReal(1000,3500)
            local sx, sy, sz = 6860, 6640, 200
            local mx, my, mz = PolarProjectionXY(sx,sy,dist,GetRandomReal(150,310))
            local mz = GetRandomReal(300,600)
            local ex, ey, ez = 3400, 3300, 200
            
            CreateSimpleHomingProjectile_XYZ_MidXYZ_XYZ_ModelName("Abilities\\Spells\\Undead\\DeathCoil\\DeathCoilMissile.mdl",sx,sy,sz,mx,my,mz,ex,ey,ez,GetRandomReal(600,900),emptyfunc)
        end
    end

    TimerStart(CreateTimer(),GetRandomReal(20,30),true,on_event)

    return obj
end