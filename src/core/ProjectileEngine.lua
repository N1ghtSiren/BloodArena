projectiles = {}

function CreateSimpleHomingProjectile(eff,caster,target,velocity,onhitfunction)
    local cx,cy,cz = GetUnitX(caster),GetUnitY(caster),GetUnitZ(caster)+40
    local px,py,pz = GetUnitX(caster),GetUnitY(caster),GetUnitZ(caster)+40
    local tx,ty,tz = GetUnitX(target),GetUnitY(target),GetUnitZ(target)+40
    local midx,midy = (tx+cx)/2,(ty+cy)/2
    local midz = (tz+cz)/2
    local dist = nil
    local lifetime = 0
    local lifetimeIncreasement = 1/(GetDistanceBetweenPointsZ(cx,cy,cz,tx,ty,tz)/(velocity/32))

    local function on_move()
        tx,ty,tz = GetUnitX(target),GetUnitY(target),GetUnitZ(target)
        dist = GetDistanceBetweenPointsZ(px,py,pz,tx,ty,tz)

        if(dist<=50)or(lifetime>1)then
            DestroyEffect(eff)
            onhitfunction()
            return true
        end

        px,py,pz = BezierCurvePow2_xyz_xyz_xyz(cx, cy, cz, midx, midy, midz, tx, ty, tz, lifetime)
        BlzSetSpecialEffectPosition(eff, px, py, pz)
        SetEffectFacePoint(eff,tx,ty,tz)
        lifetime = lifetime + lifetimeIncreasement

        return false
    end

    AddOnUpdateFunction(on_move)
end

function CreateSimpleHomingProjectile_ModelName(modelname,caster,target,velocity,onhitfunction)
    local eff = AddSpecialEffect(modelname,GetUnitX(caster),GetUnitY(caster))
    local cx,cy,cz = GetUnitX(caster),GetUnitY(caster),GetUnitZ(caster)+40
    local px,py,pz = GetUnitX(caster),GetUnitY(caster),GetUnitZ(caster)+40
    local tx,ty,tz = GetUnitX(target),GetUnitY(target),GetUnitZ(target)+40
    local midx,midy = (tx+cx)/2,(ty+cy)/2
    local midz = (tz+cz)/2
    local dist = nil
    local lifetime = 0
    local lifetimeIncreasement = 1/(GetDistanceBetweenPointsZ(cx,cy,cz,tx,ty,tz)/(velocity/32))

    local function on_move()
        tx,ty,tz = GetUnitX(target),GetUnitY(target),GetUnitZ(target)
        dist = GetDistanceBetweenPointsZ(px,py,pz,tx,ty,tz)

        if(dist<=50)or(lifetime>1)then
            DestroyEffect(eff)
            onhitfunction()
            return true
        end

        px,py,pz = BezierCurvePow2_xyz_xyz_xyz(cx, cy, cz, midx, midy, midz, tx, ty, tz, lifetime)
        BlzSetSpecialEffectPosition(eff, px, py, pz)
        SetEffectFacePoint(eff,tx,ty,tz)
        lifetime = lifetime + lifetimeIncreasement

        return false
    end

    AddOnUpdateFunction(on_move)
end

function CreateSimpleHomingProjectile_XYZ_target_ModelName(modelname,casterX,casterY,casterZ,target,velocity,onhitfunction)
    local eff = AddSpecialEffect(modelname,casterX,casterY)
    local cx,cy,cz = casterX,casterY,casterZ+40
    local px,py,pz = casterX,casterY,casterZ+40
    local tx,ty,tz = GetUnitX(target),GetUnitY(target),GetUnitZ(target)+40
    local midx,midy = (tx+cx)/2,(ty+cy)/2
    local midz = (tz+cz)/2
    local dist = nil
    local lifetime = 0
    local lifetimeIncreasement = 1/(GetDistanceBetweenPointsZ(cx,cy,cz,tx,ty,tz)/(velocity/32))

    local function on_move()
        tx,ty,tz = GetUnitX(target),GetUnitY(target),GetUnitZ(target)
        dist = GetDistanceBetweenPointsZ(px,py,pz,tx,ty,tz)

        if(dist<=50)or(lifetime>1)then
            DestroyEffect(eff)
            onhitfunction()
            return true
        end

        px,py,pz = BezierCurvePow2_xyz_xyz_xyz(cx, cy, cz, midx, midy, midz, tx, ty, tz, lifetime)
        BlzSetSpecialEffectPosition(eff, px, py, pz)
        SetEffectFacePoint(eff,tx,ty,tz)
        lifetime = lifetime + lifetimeIncreasement

        return false
    end

    AddOnUpdateFunction(on_move)
end

function CreateSimpleHomingProjectile_caster_XYZ_ModelName(modelname,caster,targetX,targetY,targetZ,velocity,onhitfunction)
    local eff = AddSpecialEffect(modelname,GetUnitX(caster),GetUnitY(caster))
    local cx,cy,cz = GetUnitX(caster),GetUnitY(caster),GetUnitZ(caster)+40
    local px,py,pz = GetUnitX(caster),GetUnitY(caster),GetUnitZ(caster)+40
    local tx,ty,tz = targetX,targetY,targetZ+40
    local midx,midy = (tx+cx)/2,(ty+cy)/2
    local midz = (tz+cz)/2
    local dist = nil
    local lifetime = 0
    local lifetimeIncreasement = 1/(GetDistanceBetweenPointsZ(cx,cy,cz,tx,ty,tz)/(velocity/32))

    local function on_move()
        tx,ty,tz = targetX,targetY,targetZ+40
        dist = GetDistanceBetweenPointsZ(px,py,pz,tx,ty,tz)

        if(dist<=50)or(lifetime>1)then
            DestroyEffect(eff)
            onhitfunction()
            return true
        end

        px,py,pz = BezierCurvePow2_xyz_xyz_xyz(cx, cy, cz, midx, midy, midz, tx, ty, tz, lifetime)
        BlzSetSpecialEffectPosition(eff, px, py, pz)
        SetEffectFacePoint(eff,tx,ty,tz)
        lifetime = lifetime + lifetimeIncreasement

        return false
    end

    AddOnUpdateFunction(on_move)
end

function CreateSimpleHomingProjectile_XYZ_XYZ_ModelName(modelname,casterX,casterY,casterZ,targetX,targetY,targetZ,velocity,onhitfunction)
    local eff = AddSpecialEffect(modelname,casterX,casterY)
    local cx,cy,cz = casterX,casterY,casterZ+40
    local px,py,pz = cx,cy,cz
    local tx,ty,tz = targetX,targetY,targetZ+40
    local midx,midy = (tx+cx)/2,(ty+cy)/2
    local midz = (tz+cz)/2
    local dist = nil
    local lifetime = 0
    local lifetimeIncreasement = 1/(GetDistanceBetweenPointsZ(cx,cy,cz,tx,ty,tz)/(velocity/32))

    local function on_move()
        tx,ty,tz = targetX,targetY,targetZ+40
        dist = GetDistanceBetweenPointsZ(px,py,pz,tx,ty,tz)

        if(dist<=50)or(lifetime>1)then
            DestroyEffect(eff)
            onhitfunction()
            return true
        end

        px,py,pz = BezierCurvePow2_xyz_xyz_xyz(cx, cy, cz, midx, midy, midz, tx, ty, tz, lifetime)
        BlzSetSpecialEffectPosition(eff, px, py, pz)
        SetEffectFacePoint(eff,tx,ty,tz)
        lifetime = lifetime + lifetimeIncreasement

        return false
    end

    AddOnUpdateFunction(on_move)
end

function CreateSimpleHomingProjectile_XYZ_MidXYZ_target_ModelName(modelname,casterX,casterY,casterZ,midx,midy,midz,target,velocity,onhitfunction)
    local eff = AddSpecialEffect(modelname,casterX,casterY)
    local cx,cy,cz = casterX,casterY,casterZ+40
    local px,py,pz = casterX,casterY,casterZ+40
    local tx,ty,tz = GetUnitX(target),GetUnitY(target),GetUnitZ(target)+40
    local dist = nil
    local lifetime = 0
    local lifetimeIncreasement = 1/(GetDistanceBetweenPointsZ(cx,cy,cz,tx,ty,tz)/(velocity/32))

    local function on_move()
        tx,ty,tz = GetUnitX(target),GetUnitY(target),GetUnitZ(target)
        dist = GetDistanceBetweenPointsZ(px,py,pz,tx,ty,tz)

        if(dist<=50)or(lifetime>1)then
            DestroyEffect(eff)
            onhitfunction()
            return true
        end

        px,py,pz = BezierCurvePow2_xyz_xyz_xyz(cx, cy, cz, midx, midy, midz, tx, ty, tz, lifetime)
        BlzSetSpecialEffectPosition(eff, px, py, pz)
        SetEffectFacePoint(eff,tx,ty,tz)
        lifetime = lifetime + lifetimeIncreasement

        return false
    end

    AddOnUpdateFunction(on_move)
end

function CreateSimpleHomingProjectile_XYZ_MidXYZ_XYZ_ModelName(modelname,casterX,casterY,casterZ,midx,midy,midz,targetX,targetY,targetZ,velocity,onhitfunction)
    local eff = AddSpecialEffect(modelname,casterX,casterY)
    local cx,cy,cz = casterX,casterY,casterZ+40
    local px,py,pz = casterX,casterY,casterZ+40
    local tx,ty,tz = targetX,targetY,targetZ+40
    local dist = nil
    local lifetime = 0
    local lifetimeIncreasement = 1/(GetDistanceBetweenPointsZ(cx,cy,cz,tx,ty,tz)/(velocity/32))

    local function on_move()
        dist = GetDistanceBetweenPointsZ(px,py,pz,tx,ty,tz)

        if(dist<=50)or(lifetime>1)then
            DestroyEffect(eff)
            onhitfunction()
            return true
        end

        BlzSetSpecialEffectPosition(eff, px, py, pz)

        lifetime = lifetime + lifetimeIncreasement
        px,py,pz = BezierCurvePow2_xyz_xyz_xyz(cx, cy, cz, midx, midy, midz, tx, ty, tz, lifetime)
        SetEffectFacePoint(eff,tx,ty,tz)
        
        return false
    end

    AddOnUpdateFunction(on_move)
end

function CreateLinearProjectileWFilter(modelname, sx, sy, ex, ey, lifetime, velocity, filterfunction)
    local eff = AddSpecialEffectZ(modelname,sx,sy,60)
    local angle = AngleBetweenPoints(sx,sy,ex,ey)
    local incx = velocity*CosBJ(angle)
    local incy = velocity*SinBJ(angle)
    local lifetimeCurrent = 0

    local effx, effy = sx+incx, sy+incy
    local effz = GetPointZ(effx, effy)+60

    SetEffectFacePoint(eff, effx, effy, effz)

    local function on_move()
        
        lifetimeCurrent = lifetimeCurrent +1
        if(lifetimeCurrent>=lifetime)then
            DestroyEffect(eff)
            eff = nil
            return true
        end
        
        BlzSetSpecialEffectPosition(eff, effx, effy, effz)
        
        effx, effy = effx+incx, effy+incy
        effz = GetPointZ(effx, effy)+60

        SetEffectFacePoint(eff, effx, effy, effz)
        return filterfunction(eff, effx, effy)
    end

    AddOnUpdateFunction(on_move)
end

function CreateLinearProjectileWFilterV2(modelname, sx, sy, ex, ey, lifetime, velocity, filterfunction, onhitfunction)
    local eff = AddSpecialEffectZ(modelname,sx,sy,60)
    local angle = AngleBetweenPoints(sx,sy,ex,ey)
    local incx = velocity*CosBJ(angle)
    local incy = velocity*SinBJ(angle)
    local lifetimeCurrent = 0

    local effx, effy = sx+incx, sy+incy
    local effz = GetPointZ(effx, effy)+60

    SetEffectFacePoint(eff, effx, effy, effz)

    local function on_move()
        
        lifetimeCurrent = lifetimeCurrent +1
        if(lifetimeCurrent>=lifetime)then
            onhitfunction(effx,effy)
            DestroyEffect(eff)
            eff = nil
            return true
        end
        
        BlzSetSpecialEffectPosition(eff, effx, effy, effz)
        
        effx, effy = effx+incx, effy+incy
        effz = GetPointZ(effx, effy)+60

        SetEffectFacePoint(eff, effx, effy, effz)
        return filterfunction(eff, effx, effy)
    end

    AddOnUpdateFunction(on_move)
end

function CreateLinearProjectile(modelname, sx, sy, ex, ey, velocity, onhitfunction)
    local eff = AddSpecialEffectZ(modelname,sx,sy,60)
    local angle = AngleBetweenPoints(sx,sy,ex,ey)
    local incx = velocity*CosBJ(angle)
    local incy = velocity*SinBJ(angle)
    local lifetimeCurrent = 0

    local effx, effy = sx+incx, sy+incy
    local effz = GetPointZ(effx, effy)+60

    SetEffectFacePoint(eff, effx, effy, effz)

    local function on_move()
        
        if(DistanceBetweenPointsXY(effx,effy,ex,ey)<=50)then
            onhitfunction(sx,sy,ex,ey)
            DestroyEffect(eff)
            eff = nil
            return true
        end
        
        BlzSetSpecialEffectPosition(eff, effx, effy, effz)
        
        effx, effy = effx+incx, effy+incy
        effz = GetPointZ(effx, effy)+60

        SetEffectFacePoint(eff, effx, effy, effz)
    end

    AddOnUpdateFunction(on_move)
end