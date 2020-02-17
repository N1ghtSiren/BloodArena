bloodeffects = {}
bloodeffects[0] = "Objects\\Spawnmodels\\Orc\\OrcLargeDeathExplode\\OrcLargeDeathExplode.mdl"
bloodeffects[1] = "Objects\\Spawnmodels\\Orc\\OrcSmallDeathExplode\\OrcSmallDeathExplode.mdx"
bloodeffects[2] = "Objects\\Spawnmodels\\Orc\\OrcBlood\\OrdBloodRiderlessWyvernRider.mdx"
bloodeffects[3] = "Objects\\Spawnmodels\\Orc\\OrcBlood\\OrdBloodWyvernRider.mdx"
bloodeffects[4] = "Objects\\Spawnmodels\\Other\\PandarenBrewmasterBlood\\PandarenBrewmasterBlood.mdx"
bloodeffects[5] = "Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdx"
bloodeffects[6] = "Objects\\Spawnmodels\\Human\\HumanBlood\\HeroBloodElfBlood.mdx"
bloodeffects[7] = "Objects\\Spawnmodels\\Other\\HumanBloodCinematicEffect\\HumanBloodCinematicEffect.mdx"
bloodeffects[8] = "Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodFootman.mdx"
bloodeffects[9] = "Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodKnight.mdx"
bloodeffects[10] = "Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodLarge0.mdx"
bloodeffects[11] = "Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodPriest.mdx"
bloodeffects[12] = "Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodPeasant.mdx"
bloodeffects[13] = "Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodPriest.mdx"
bloodeffects[14] = "Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodRifleman.mdx"
bloodeffects[15] = "Objects\\Spawnmodels\\Human\\HumanBlood\\HumanBloodSorceress.mdx"
bloodeffects[15] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\MALFurion_Blood.mdx"
bloodeffects[16] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodArcher.mdx"
bloodeffects[17] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodChimaera.mdx"
bloodeffects[18] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodDruidBear.mdx"
bloodeffects[19] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodDruidRaven.mdx"
bloodeffects[20] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodDruidoftheClaw.mdx"
bloodeffects[21] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodDruidoftheTalon.mdx"
bloodeffects[22] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodDryad.mdx"
bloodeffects[23] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodHeroDemonHunter.mdx"
bloodeffects[24] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodHeroKeeperoftheGrove.mdx"
bloodeffects[25] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodHippoGryph.mdx"
bloodeffects[26] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodHuntress.mdx"
bloodeffects[27] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodLarge0.mdx"
bloodeffects[28] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodLarge1.mdx"
bloodeffects[29] = "Objects\\Spawnmodels\\NightElf\\NightElfBlood\\NightElfBloodMoonPriestess.mdx"
bloodeffects[30] = "Objects\\Spawnmodels\\NightElf\\NightElfLargeDeathExplode\\NightElfLargeDeathExplode.mdx"
bloodeffects[31] = "Objects\\Spawnmodels\\NightElf\\NightElfSmallDeathExplode\\NightElfSmallDeathExplode.mdx"

function grbf()
    return bloodeffects[GetRandomInt(0,31)]
end

function AddBloodToDying(target, killer)
    local eff
    for i = 0, 20 do
        eff = AddSpecialEffect(grbf(),GetUnitX(target),GetUnitY(target))
        BlzSetSpecialEffectScale(eff,GetRandomReal(0.4,2))
        DestroyEffect(eff)
    end
    AddBloodSplats(target, killer)
end

---@param target unit
---@param killer unit
---@param amount integer
function AddBloodSplats(target, killer)
    if(IsRemoved(target))then return end
    local amount = UnitGetObject(target).bloodamount
    local tx, ty = GetUnitX(target), GetUnitY(target)
    local x,y
    local angle = AngleBetweenUnits(killer, target)
    local iteration = 0
    local PolarProjectionXY = PolarProjectionXY
    local BloodDryStart = BloodDryStart
    local GetRandomReal = GetRandomReal

    local function onTimer()
        if(IsRemoved(target))then return true end

        if(iteration>=10*BloodFactor)then
            return true
        end

        for i = 1, MathNegator1(mathfix(amount*0.05*(iteration*0.05))) do
            x,y = PolarProjectionXY(tx, ty , GetRandomReal(9*iteration ,9*(iteration+1)), angle+GetRandomReal(-60,60))
            BloodDryStart(x, y, target)
        end

        iteration = iteration + 1
        angle=angle+GetRandomReal(-2,2)

    end
    
    AddOnUpdateFunction(onTimer)
end

---@param target unit
---@param angle real
---@param amount integer
---@param damage real
function AddBloodSplatsCone(target, angle, range, damage)
    if(IsRemoved(target))then return end
    local amount = UnitGetObject(target).bloodamount*(damage*0.01)
    local tx, ty = GetUnitX(target), GetUnitY(target)
    local x,y
    local angle = angle - 15
    local iteration = 0
    local PolarProjectionXY = PolarProjectionXY
    local BloodDryStart = BloodDryStart
    local GetRandomReal = GetRandomReal

    local function onTimer()
        if(IsRemoved(target))then return true end

        if(iteration>=10*BloodFactor)then
            return true
        end

        for i = 1, MathNegator1(mathfix(amount*0.1*(iteration*0.05))) do
            x,y = PolarProjectionXY(tx, ty, GetRandomReal(9*iteration ,9*(iteration+1)), angle+GetRandomReal(-10, 10))
            BloodDryStart(x, y, target)
        end

        iteration = iteration + 1
    end

    AddOnUpdateFunction(onTimer)
end
-------------------------------------------------------------------------------------------------------
BloodAmountOnMap = 0

function BloodBarInit()
    bloodbar = BlzCreateSimpleFrame("MyFakeBar", game_ui, 0)
    local bartext = BlzGetFrameByName("MyFakeBarTitle",0)

    BlzFrameSetPoint(bloodbar,FRAMEPOINT_TOPLEFT,scorebar,FRAMEPOINT_BOTTOMLEFT,0,0)
    BlzFrameSetTexture(bloodbar, "Replaceabletextures\\Teamcolor\\Teamcolor12.blp", 0, true)
    BlzFrameSetTexture(BlzGetFrameByName("MyFakeBarBorder",0),"MyBarBorder.blp", 0, true)
    BlzFrameSetText(bartext, GetPlayerName(Player(0)))
    
    local bar = bloodbar

    local function on_timer()
        BlzFrameSetValue(bar, mathfix((BloodAmountOnMap/BloodLimit)*100))
        BlzFrameSetText(bartext, GetLocalizedStringV2("bloodeffs")..BloodAmountOnMap.."/"..BloodLimit)
    end

    BlzFrameSetVisible(bar, true)

    TimerStart(CreateTimer(), 1, true, on_timer)
end

BloodBarInit()