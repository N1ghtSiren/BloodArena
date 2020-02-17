gravityCoef = 9.81
groundCoef = 0.2

--скорость падения = vfall = Sqrt(2*g*h)
--макс высота - hmax = v0^2 / 2*g

function UnitAttachPhysics(unit)

    local obj = UnitGetObject(unit)
    obj.physics = {}
    obj = obj.physics


    --velocity = скорость по направлению x/y/z
    obj.vx = 0
    obj.vy = 0
    obj.vz = 0


    function PhysicsUpdate()
        if(IsRemoved(unit))then return true end

        if(obj.vx~=0 or obj.vy~=0 or obj.vz~=0)then
            local x = GetUnitX(unit)+(obj.vx/32)
            local y = GetUnitY(unit)+(obj.vy/32)

            if(IsMapBounds(x,y) and IsTerrainWalkable(x,y))then
                SetUnitX(unit,x)
                SetUnitY(unit,y)
            else --if smth was hitten (tree or map bounds)
                obj.vx = 0
                obj.vy = 0
                UnitAddStun(unit,0.3)
            end

            SetUnitZ(unit, GetUnitZ(unit)+(obj.vz/32))

            --unit on ground = apply friction
            if((GetUnitZ(unit)-GetPointZ(GetUnitXY(unit)))<5 or (obj.vz<0.1 and obj.vz>-0.1)) then
                obj.vx = obj.vx - (obj.vx*groundCoef)
                obj.vy = obj.vy - (obj.vy*groundCoef)
                obj.vz = 0
            end

            --unit still in air = no friction, but apply gravityCoef
            if(obj.vz~=0) then
                obj.vz = obj.vz - 9.81
            end
            
            --stop some infinite calculations which results as fatal
            if(-2<obj.vx and obj.vx<2)then
                obj.vx = 0
            end
            
            if(-2<obj.vy and obj.vy<2)then
                obj.vy = 0
            end

        end

    end

    AddOnUpdateFunction(PhysicsUpdate)
end

function UnitAddImpulse(caster, unit, angle, ixy, iz)
    if(IsRemoved(unit))then return end

    UnitAddStun(unit,2)
    local obj = UnitGetObject(unit).physics

    obj.pusher = caster

    obj.vx = obj.vx + ixy*CosBJ(angle)
    obj.vy = obj.vy + ixy*SinBJ(angle)
    obj.vz = obj.vz + iz
end

function UnitAddImpulseV2(caster, unit, angle, ixy, iz)
    if(IsRemoved(unit))then return end

    local obj = UnitGetObject(unit).physics

    obj.pusher = caster

    obj.vx = obj.vx + ixy*CosBJ(angle)
    obj.vy = obj.vy + ixy*SinBJ(angle)
    obj.vz = obj.vz + iz
end

function UnitAddImpulseV3(caster, unit, angle, ixy, iz, stuntime)
    if(IsRemoved(unit))then return end

    UnitAddStun(unit,stuntime)
    local obj = UnitGetObject(unit).physics

    obj.pusher = caster

    obj.vx = obj.vx + ixy*CosBJ(angle)
    obj.vy = obj.vy + ixy*SinBJ(angle)
    obj.vz = obj.vz + iz
end

function UnitResetImpulses(u)
    local obj = UnitGetObject(u)
    obj.vx = 0
    obj.vy = 0
    obj.vz = 0
    SetUnitZ(unit, 0)
    obj = nil
end