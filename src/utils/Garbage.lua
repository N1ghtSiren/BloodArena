local IS_VISIBLE = true -- is visible on map start

function Garbage_Start()
    local GAME = BlzGetOriginFrame(ORIGIN_FRAME_COMMAND_BUTTON, 0)
    local menu = BlzCreateFrame("LoadingPlayerSlot", GAME, 0, 0)
    BlzFrameSetSize(menu, 0.256, 0.0217)
    BlzFrameSetAbsPoint(menu,FRAMEPOINT_BOTTOM, 0.4,0.3)
    BlzFrameSetVisible(menu, IS_VISIBLE)

    local left = BlzGetFrameByName("LoadingPlayerSlotName", 0)
    local right = BlzGetFrameByName("LoadingPlayerSlotRace", 0)
    BlzFrameSetVisible(BlzGetFrameByName("LoadingPlayerSlotReadyHighlight", 0), true)

    local ChatTrigger = CreateTrigger()
    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        TriggerRegisterPlayerChatEvent(ChatTrigger, Player(i), "-", false)
    end

    TriggerAddAction(
        ChatTrigger,
        function()
            local param = {}
            for w in GetEventPlayerChatString():gmatch("[^%%s]+") do
                table.insert(param, w)
            end
            if param[1] ~= "-garbage" then
                return
            end
            local arg = param[2]
            if arg == "collect" or arg == "stop" or arg == "restart" then
                print("collectgarbage(" .. arg .. ")")
                collectgarbage(arg)
            elseif arg == "count" or arg == "isrunning" or arg == "step" then
                print("collectgarbage(" .. arg .. ") -->", collectgarbage(arg))
            elseif arg == "show" then
                BlzFrameSetVisible(menu, true)
            elseif arg == "hide" then
                BlzFrameSetVisible(menu, false)
            end
        end
    )

    local t = CreateTimer()
    TimerStart(
        t,
        0.025,
        true,
        function()
            BlzFrameSetText(left, math.ceil(collectgarbage("count")))
            BlzFrameSetText(right, math.ceil(os.clock()))
        end
    )
end

Garbage_Start()