filtercaster = nil

local fcc_avul = fourcc("Avul")

local function IsUnitAliveAndEnemyNotAvulV2()
    local flag = (not IsUnitType(GetFilterUnit(), UNIT_TYPE_DEAD) and IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(filtercaster)) and GetUnitAbilityLevel(GetFilterUnit(), fcc_avul) == 0)
    filtercaster = nil
    return flag
end

IsUnitAliveAndEnemyNotAvul_Filter = Filter(IsUnitAliveAndEnemyNotAvulV2)
