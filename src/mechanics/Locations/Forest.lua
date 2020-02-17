function Location_Forest()

    local obj = {}

    local minx = -2180
    local maxx = 2300
    local miny = 2950
    local maxy = 7150

    obj.startx = 128
    obj.starty = 5000
    obj.minx = minx
    obj.maxx = maxx
    obj.miny = miny
    obj.maxy = maxy

    local function is_in_killbox(unit)
        local x,y = GetUnitXY(unit)
        return GetPointZ(GetUnitXY(unit))<=-80 and GetUnitZ(unit)<=0 and (x < maxx and x > minx and y < maxy and y > miny) and UnitAlive(unit)
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

            DoPureDamage(obj.physics.pusher, unit, 10)
            UnitAddImpulseV3(unit,unit,AngleBetweenPoints(128,5000,GetUnitXY(unit))-180,700,180,1)
            DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\DispelMagic\\DispelMagicTarget.mdl",GetUnitXY(unit)))
            
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
        local u = GetClosestEnemyAliveAndVisible(player[pid].heroobj.unit,GetRandomReal(minx, maxx),GetRandomReal(miny, maxy),1500)

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

    SetWaterBaseColor(0,0,128,255)
    SetCameraBounds(minx, miny, minx, maxy, maxx, maxy, maxx, miny)
    SetCameraPosition(obj.startx,obj.starty)
    
    printTimed("Current Arena: Forest!",20)
    
    return obj
end