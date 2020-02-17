function IsDebug()
    if(GetPlayerName(Player(0))=="WorldEdit")then
        return true
    end
    return false
end

function Debug_AddBodies()
    for i = 1, 11 do
        x,y = PolarProjectionXY(current_location.startx, current_location.starty, 400, 30*i)
        u = CreateHero_Warden(i,x,y,30*i)
        
        SetCameraPositionForPlayer(Player(i),x,y)

        UnitAddStun(u,5)
        UnitAddInvul(u,7)
    end
end


function chaosmode(u)
    local t = CreateTimer()
    local a = 0
    local z 
    local i
    local ap = 180

    local function chaosmodeV2()
        a = a + ap
        if(a >= 360)then
            a = a - 360
        end

        i = 2000
        z = 0

        printTimed("ChaosMode: "..GetHeroProperName(u)..": angle: "..a..", impulseXY: "..i..", impulseZ: "..z, 1)
        UnitAddImpulse(u, u, a, i, z)
    end

    TimerStart(t,2,true,chaosmodeV2)
end

-----------------------------------delete later
function CreateUIForPlayer(pid)
    local obj = player[pid]
    --creating spaces for each button
    for i = 0,11 do
        obj.buttons[i] = {}
    end
    --creating first button
    obj.buttons[0].button = BlzCreateFrame("MyFakeButton", game_ui, 0, 0)
    obj.buttons[0].icon = BlzGetFrameByName("MyFakeButtonTexture",0)
    obj.buttons[0].hotkey = BlzGetFrameByName("MyFakeButtonHotkey",0)
    obj.buttons[0].manacost = BlzGetFrameByName("MyFakeButtonManacost",0)
    obj.buttons[0].cooldown = BlzGetFrameByName("MyFakeButtonCooldown",0)

    obj.buttons[0].tooltip = BlzCreateFrame("MyFakeTooltip", game_ui, 0, 0)
    obj.buttons[0].tooltiptitle = BlzGetFrameByName("MyFakeTooltipTitle",0)
    obj.buttons[0].tooltiptext = BlzGetFrameByName("MyFakeTooltipText",0)
    
    --attach texture and texts on button
    BlzFrameSetTexture(obj.buttons[0].icon,imgpath, 0, false)
    BlzFrameSetText(obj.buttons[0].hotkey, "F")
    BlzFrameSetText(obj.buttons[0].manacost,"666")
    BlzFrameSetText(obj.buttons[0].cooldown,"66")
    
    BlzFrameSetSize(obj.buttons[0].tooltip, 0.47, 0.1)
    BlzFrameSetPoint(obj.buttons[0].tooltip, FRAMEPOINT_BOTTOMLEFT, obj.buttons[0].button, FRAMEPOINT_TOPLEFT,0,0)
    BlzFrameSetText(obj.buttons[0].tooltiptitle,"SkillName")
    BlzFrameSetText(obj.buttons[0].tooltiptext, empty)

    --setting up tooltip
    BlzFrameSetTooltip(obj.buttons[0].button, obj.buttons[0].tooltip)
    BlzFrameSetTooltip(obj.buttons[0].hotkey, obj.buttons[0].tooltip)
    BlzFrameSetTooltip(obj.buttons[0].manacost, obj.buttons[0].tooltip)
    BlzFrameSetTooltip(obj.buttons[0].cooldown, obj.buttons[0].tooltip)

    --make ALL THEM not steal focus on random click
    buttonobj = obj.buttons[0]
    AttachTooltip(buttonobj.button, buttonobj.icon, buttonobj.hotkey, buttonobj.manacost, buttonobj.cooldown, buttonobj.tooltip)
    
    --attach to panel
    BlzFrameSetAbsPoint(obj.buttons[0].button,FRAMEPOINT_BOTTOMLEFT, 0.2, 0)
    --add another buttons
    for i = 1,11 do
        obj.buttons[i].button = BlzCreateFrame("MyFakeButton", game_ui, 0, 0)
        obj.buttons[i].icon = BlzGetFrameByName("MyFakeButtonTexture",0)
        obj.buttons[i].hotkey = BlzGetFrameByName("MyFakeButtonHotkey",0)
        obj.buttons[i].manacost = BlzGetFrameByName("MyFakeButtonManacost",0)
        obj.buttons[i].cooldown = BlzGetFrameByName("MyFakeButtonCooldown",0)

        obj.buttons[i].tooltip = BlzCreateFrame("MyFakeTooltip", game_ui, 0, 0)
        obj.buttons[i].tooltiptitle = BlzGetFrameByName("MyFakeTooltipTitle",0)
        obj.buttons[i].tooltiptext = BlzGetFrameByName("MyFakeTooltipText",0)
        
        --attach texture and texts on button
        BlzFrameSetTexture(obj.buttons[i].icon,imgpath, 0, false)
        BlzFrameSetText(obj.buttons[i].hotkey,i)
        BlzFrameSetText(obj.buttons[i].manacost,"666")
        BlzFrameSetText(obj.buttons[i].cooldown,"100")

        --setting up tooltip
        BlzFrameSetSize(obj.buttons[i].tooltip, 0.47, 0.1)
        BlzFrameSetPoint(obj.buttons[i].tooltip, FRAMEPOINT_BOTTOMLEFT, obj.buttons[0].button, FRAMEPOINT_TOPLEFT,0,0)
        BlzFrameSetText(obj.buttons[i].tooltiptitle,"SkillName")
        BlzFrameSetText(obj.buttons[i].tooltiptext, empty)
        
        --setting up triggers
        BlzFrameSetTooltip(obj.buttons[i].button, obj.buttons[i].tooltip)
        BlzFrameSetTooltip(obj.buttons[i].hotkey, obj.buttons[i].tooltip)
        BlzFrameSetTooltip(obj.buttons[i].manacost, obj.buttons[i].tooltip)
        BlzFrameSetTooltip(obj.buttons[i].cooldown, obj.buttons[i].tooltip)

        --make ALL THEM not steal focus on random click
        buttonobj = obj.buttons[i]
        AttachTooltip(buttonobj.button, buttonobj.icon, buttonobj.hotkey, buttonobj.manacost, buttonobj.cooldown, buttonobj.tooltip)

        AttachButtonToRight(obj.buttons[i-1].button, obj.buttons[i].button)
    end

    for i = 0,11 do
        BlzFrameSetVisible(obj.buttons[i].button,false)
    end

end