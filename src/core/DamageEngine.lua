UnitDamageTarget_hook = UnitDamageTarget

function UnitDamageTargetChaos(whichUnit, target, amount)
    UnitDamageTarget_hook(whichUnit, target, amount, true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
end

function UnitDamageTargetMelee(whichUnit, target, amount)
    UnitDamageTarget_hook(whichUnit, target, amount, true, false, ATTACK_TYPE_HERO, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
end

function UnitDamageTargetMagic(whichUnit, target, amount)
    UnitDamageTarget_hook(whichUnit, target, amount, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
end

function UnitDamageTargetRanged(whichUnit, target, amount)
    UnitDamageTarget_hook(whichUnit, target, amount, true, false, ATTACK_TYPE_PIERCE, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
end


---@param caster unit
---@param target unit
---@param damage real
function DoPureDamage(caster, target, damage)
    UnitDamageTargetChaos(caster, target, damage)
end

---@param caster unit
---@param target unit
---@param damage real
function DoMeleeDamage(caster, target, damage)
    UnitDamageTargetMelee(caster, target, damage)
end

---@param caster unit
---@param target unit
---@param damage real
function DoRangedDamage(caster, target, damage)
    UnitDamageTargetRanged(caster, target, damage)
end

---@param caster unit
---@param target unit
---@param damage real
function DoMagicDamage(caster, target, damage)
    UnitDamageTargetMagic(caster, target, damage)
end

---@param target unit
---@param damage real
function DoHeal(target, damage)
    SetWidgetLife(target,GetWidgetLife(target)+damage)
end