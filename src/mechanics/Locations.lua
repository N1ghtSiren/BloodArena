function UnitAddCheckKillboxes(unit)
    local obj = UnitGetObject(unit)
    obj.killboxtimer = CreateTimer()

    local function killboxxCheck()
        current_location.killbox(unit)
    end

    TimerStart(obj.killboxtimer, 0.4, true, killboxxCheck)
end

function UnitRegisterRevives(unit)
    local obj = UnitGetObject(unit)
    obj.revive = current_location.revive
end

function SetCurrentLocation(codename)
    if(codename=="garden")then
        current_location = Location_Garden()
    elseif(codename=="volcano")then
        current_location = Location_Volcano()
    elseif(codename=="ancients")then
        current_location = Location_Ancients()
    elseif(codename=="forest")then
        current_location = Location_Forest()
    end
    
end