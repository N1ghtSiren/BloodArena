function GetNewButton(parent)
    local thisbutton = BlzCreateFrame("ScoreScreenBottomButtonTemplate", parent, 0, 0)
    BlzFrameSetAllPoints(thisbutton,parent)
    return thisbutton
end

function AddIconToButton(parent, imgpath)
    local thisicon = BlzGetFrameByName("ScoreScreenButtonBackdrop", 0)
    BlzFrameSetSize(thisicon, 0.039, 0.039)
    BlzFrameSetParent(thisicon, parent)
    BlzFrameSetPoint(thisicon, FRAMEPOINT_CENTER, parent, FRAMEPOINT_CENTER, 0, 0)
    BlzFrameSetTexture(thisicon, imgpath, 0, false)
    return thisicon
end

function AttachButtonToTop(button_bottom, button_top)
    BlzFrameSetPoint(button_top, FRAMEPOINT_BOTTOM, button_bottom, FRAMEPOINT_TOP, 0, 0)
end

function AttachButtonToBottom(button_top, button_bottom)
    BlzFrameSetPoint(button_bottom, FRAMEPOINT_TOP, button_top, FRAMEPOINT_BOTTOM, 0, 0)
end

function AttachButtonToRight(button_left, button_right)
    BlzFrameSetPoint(button_right, FRAMEPOINT_LEFT, button_left, FRAMEPOINT_RIGHT, 0, 0)
end

function hideEverything()
    BlzHideOriginFrames(true)
    BlzFrameSetAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_WORLD_FRAME, 0), game_ui)
    
    for i = 0,11 do
        BlzFrameClearAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON,i))
    end

    BlzFrameSetAbsPoint(BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON, 0), FRAMEPOINT_BOTTOMLEFT, 0.0, 0.04)
    for i = 1,11 do
        AttachButtonToRight(BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON,i-1),BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON,i))
    end

    BlzFrameSetText(BlzGetFrameByName("WouldTheRealOptionsTitleTextPleaseStandUp",0),"|cffff0000Close it and smash more faces.|nDo it.|nI'm waiting.")


    BlzFrameClearAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0))
    BlzFrameSetPoint(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0), FRAMEPOINT_BOTTOMLEFT, BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON, 0), FRAMEPOINT_TOPLEFT, 0, 0)

    BlzFrameClearAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_UNIT_MSG, 0))
    BlzFrameSetPoint(BlzGetOriginFrame(ORIGIN_FRAME_UNIT_MSG, 0), FRAMEPOINT_BOTTOMLEFT, BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON, 0), FRAMEPOINT_TOPLEFT, 0, 0)
end

hideEverything()

BlzLoadTOCFile("Main.toc")

function AttachTooltip(point1, point2, poin3, point4, point5, tooltip)
    local trig = CreateTrigger()
    local visible = false
    BlzTriggerRegisterFrameEvent(trig, point1, FRAMEEVENT_CONTROL_CLICK)
    BlzTriggerRegisterFrameEvent(trig, point2, FRAMEEVENT_CONTROL_CLICK)
    BlzTriggerRegisterFrameEvent(trig, point3, FRAMEEVENT_CONTROL_CLICK)
    BlzTriggerRegisterFrameEvent(trig, point4, FRAMEEVENT_CONTROL_CLICK)
    BlzTriggerRegisterFrameEvent(trig, point5, FRAMEEVENT_CONTROL_CLICK)

    local function onClick()
        BlzFrameSetEnable(BlzGetTriggerFrame(), false)
        BlzFrameSetEnable(BlzGetTriggerFrame(), true)
    end
    
    TriggerAddCondition(trig, Condition(onClick))
end

function CreateUIForPlayer(pid)
    local obj = player[pid]
    obj.buttons = {}
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

function CreateHealthBar(pid)
    player[pid].hpbar = {}
    local obj = player[pid].hpbar

    obj.bar = BlzCreateSimpleFrame("MyFakeBar", game_ui, 0)
    obj.lefttext = BlzGetFrameByName("MyFakeBarLeftText",0)
    obj.righttext = BlzGetFrameByName("MyFakeBarRightText",0)
    obj.title = BlzGetFrameByName("MyFakeBarTitle",0)
    obj.border = BlzGetFrameByName("MyFakeBarBorder",0)
    
    BlzFrameSetAbsPoint(obj.bar, FRAMEPOINT_BOTTOMLEFT, 0.0, 0.02)
    BlzFrameSetTexture(obj.bar, "Replaceabletextures\\Teamcolor\\Teamcolor00.blp", 0, true)
    BlzFrameSetTexture(obj.border,"MyBarBorder.blp", 0, true)

    local bar = obj.bar
    local lefttext = obj.lefttext
    local righttext = obj.righttext
    local title = obj.title

    local function on_timer()
        if(obj.unit==nil)then return end

        BlzFrameSetValue(bar, GetUnitLifePercent(obj.unit))
        BlzFrameSetText(righttext, BlzGetUnitMaxHP(obj.unit))
        BlzFrameSetText(lefttext, mathfix(GetUnitState(obj.unit,UNIT_STATE_LIFE)))
        BlzFrameSetText(title, GetLocalizedString("health",pid))

        return false
    end

    AddOnUpdateFunction(on_timer)

    BlzFrameSetVisible(bar,false)
    if(GetLocalPlayer()==Player(pid))then BlzFrameSetVisible(obj.bar,true) end
end

function AttachHealthBar(pid,u)
    player[pid].hpbar.unit = u
end
-----------------------------------------------------------------------------------------------
function CreateManaBar(pid)
    player[pid].mpbar = {}
    local obj = player[pid].mpbar

    obj.bar = BlzCreateSimpleFrame("MyFakeBar", game_ui, 0)
    obj.lefttext = BlzGetFrameByName("MyFakeBarLeftText",0)
    obj.righttext = BlzGetFrameByName("MyFakeBarRightText",0)
    obj.title = BlzGetFrameByName("MyFakeBarTitle",0)
    obj.border = BlzGetFrameByName("MyFakeBarBorder",0)
    
    BlzFrameSetAbsPoint(obj.bar, FRAMEPOINT_BOTTOMLEFT, 0, 0)
    BlzFrameSetTexture(obj.bar, "Replaceabletextures\\Teamcolor\\Teamcolor01.blp", 0, true)
    BlzFrameSetTexture(obj.border,"MyBarBorder.blp", 0, true)

    local bar = obj.bar
    local lefttext = obj.lefttext
    local righttext = obj.righttext
    local title = obj.title

    local function on_timer()
        if(obj.unit==nil)then return end

        BlzFrameSetValue(bar, GetUnitManaPercent(obj.unit))
        BlzFrameSetText(righttext, BlzGetUnitMaxMana(obj.unit))
        BlzFrameSetText(lefttext, mathfix(GetUnitState(obj.unit,UNIT_STATE_MANA)))
        BlzFrameSetText(title, GetLocalizedString("mana",pid))

        return false
    end

    AddOnUpdateFunction(on_timer)

    BlzFrameSetVisible(bar,false)
    if(GetLocalPlayer()==Player(pid))then BlzFrameSetVisible(obj.bar,true) end
end

function AttachManaBar(pid,u)
    player[pid].mpbar.unit = u
end
-----------------------------------------------------------------------------------------------
function VoteCreate(title, description)
    local currentVoting = {}
    currentVoting.frame = BlzCreateFrame("MyFakeTooltip", game_ui, 0, 0)
    currentVoting.title = BlzGetFrameByName("MyFakeTooltipTitle",0)
    currentVoting.desc = BlzGetFrameByName("MyFakeTooltipText",0)

    BlzFrameSetText(currentVoting.title, title)
    BlzFrameSetText(currentVoting.desc, description)

    BlzFrameSetSize(currentVoting.frame, 0.4, 0.2)
    BlzFrameSetAbsPoint(currentVoting.frame, FRAMEPOINT_TOPLEFT, 0.2, 0.6)
    return currentVoting
end

function VoteAddButton(vote, img, buttontitle, description, func)
    if(vote.buttons==nil)then vote.buttons = {} end

    local index = #vote.buttons+1
    vote.buttons[index] = {}
    vote.buttons[index].frame = BlzCreateFrame("MyFakeButtonSimple", vote.frame , 0, 0)

    local button = vote.buttons[index]

    --setting img and clearing cds and rest shit
    BlzFrameSetTexture(BlzGetFrameByName("MyFakeButtonTexture",0),img, 0, false)

    --adding tooltip
    button.tooltip = BlzCreateFrame("MyFakeTooltip", vote.frame, 0, 0)
    BlzFrameSetText(BlzGetFrameByName("MyFakeTooltipTitle",0), buttontitle)
    BlzFrameSetText(BlzGetFrameByName("MyFakeTooltipText",0), description)

    BlzFrameSetTooltip(button.frame, button.tooltip)

    --setting size and points
    BlzFrameSetPoint(button.tooltip, FRAMEPOINT_BOTTOMLEFT, vote.frame, FRAMEPOINT_BOTTOMLEFT, 0.005, 0.043)
    BlzFrameSetSize(button.tooltip, 0.39, 0.08)

    local t = CreateTrigger()
    BlzTriggerRegisterFrameEvent(t, button.frame, FRAMEEVENT_CONTROL_CLICK)
    TriggerAddCondition(t, Condition(func))
    --attaching button itself
    if(#vote.buttons==1)then
        BlzFrameSetPoint(button.frame, FRAMEPOINT_BOTTOMLEFT, vote.frame, FRAMEPOINT_BOTTOMLEFT, 0.005, 0.005)
    else
        BlzFrameSetPoint(button.frame, FRAMEPOINT_BOTTOMLEFT, vote.buttons[index-1].frame, FRAMEPOINT_BOTTOMRIGHT, 0, 0)
    end

end