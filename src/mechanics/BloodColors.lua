bloodColorR = {}
bloodColorG = {}
bloodColorB = {}

bloodColorEndR = {}
bloodColorEndG = {}
bloodColorEndB = {}

_human_blood = ANIM_TYPE_ATTACK      -- 1-10k frame
_demon_blood = ANIM_TYPE_STAND       -- 10k1-20k frame
_ne_blood = ANIM_TYPE_WALK           -- 20k1-30k frame
-- ANIM_TYPE_MORPH                   -- 30k1-40k frame
--ANIM_TYPE_SLEEP                    -- 40k1-50k frame

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function BloodDryStart(x, y, t)
    local eff = AddSpecialEffect("MyEffects\\BloodSplat.mdl", x, y)
    BlzPlaySpecialEffectWithTimeScale(eff, UnitGetObject(t).bloodgroup, 10/BloodDryTime)
    BlzSetSpecialEffectScale(eff, 1.5)
    BlzSetSpecialEffectYaw(eff, GetRandomReal(0,4))
    BloodAmountOnMap = BloodAmountOnMap + 1

    local function onDelete()
        DestroyEffectHide(eff)
        eff = nil
        BloodAmountOnMap = BloodAmountOnMap - 1
        DestroyTimer(GetExpiredTimer())
    end


    TimerStart(CreateTimer(), (BloodDryTime-(BloodDryTime*0.05)), true, onDelete)
end
--------------------------------------------------------------------------------