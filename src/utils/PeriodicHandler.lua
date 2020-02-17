------------------------------------------------------
--periodic function handler
--
--
--[[
local function Show()
    count = count + 1
    if(count>10000)then
        return true  --when true are returned, function automatically deletes from list
    end
    return false  --as long as false returned, function will still called each time
end
]]
--
--adding with AddOnUpdateFunction(Show)
--
------------------------------------------------------

local indexmax = 10000
local UpdateFunctions = {}
local UpdateTimer = CreateTimer()

function GetNewFunctionIndex()
    for index = 0, indexmax do
        if(UpdateFunctions[index]==nil)then
            return index
        end
    end

    printTimed("|cffffffffCannot allocate more space for periodic functions!!!",999)
    return 0
end

function AddOnUpdateFunction(functionToCall)
    UpdateFunctions[GetNewFunctionIndex()] = functionToCall
end

function RemoveOnUpdateFunction(index)
    UpdateFunctions[index] = nil
end

function RunOnUpdateFunctions()
    local flag = nil

    for index = 0, indexmax do
        if(UpdateFunctions[index]~=nil)then
            flag = UpdateFunctions[index]()

            if(flag == true)then
                RemoveOnUpdateFunction(index)
            end

        end
    end
end

TimerStart(UpdateTimer, 0.03125, true, RunOnUpdateFunctions)