units = {}
unitIndex = 1

---@param unit unit
---@param obj object
---@return unitIndex integer
function UnitAddIndex(unit, obj)
    unitIndex = unitIndex + 1
    SetUnitUserData(unit, unitIndex)
    units[unitIndex] = obj
    return unitIndex
end

---@param unit unit
---@return object object
function UnitGetObject(unit)
    return units[GetUnitUserData(unit)]
end

---@param unit unit
---@return unitIndex integer
function UnitGetIndex(unit)
    return GetUnitUserData(unit)
end

----------------------------------------------------------------------
unitNameIndexing = {}

---@param unitname string unique
---@param index integer 
---@return index integer 
function UnitnameAddIndex(unitname,index)
    unitNameIndexing[unitname] = index
    return index
end

---@param unitname string unique
---@return index integer 
function UnitnameGetIndex(unitname)
    return unitNameIndexing[unitname]
end

----------------------------------------------------------------------