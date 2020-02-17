local function CameraChatInit()
    local t = CreateTrigger()

    for i = 0, 11 do
        TriggerRegisterPlayerChatEvent(t, Player(i),"-cam",false)
    end

    local function on_chat()
        if(GetLocalPlayer()==GetTriggerPlayer())then
            SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, SubString(GetEventPlayerChatString(),5,999), 0.6)
        end
    end

    TriggerAddCondition(t, Condition(on_chat))
end

CameraChatInit()

local function LangChatInit()
    local t = CreateTrigger()

    for i = 0, 11 do
        TriggerRegisterPlayerChatEvent(t, Player(i),"-lang",false)
    end

    local function on_chat()
        local obj
        local flag = false

        VoteLangShowForPlayer(GetPlayerId(GetTriggerPlayer()))
    end
   
    TriggerAddCondition(t, Condition(on_chat))
end

LangChatInit()

local function ChatClearChatInit()
    local t = CreateTrigger()

    for i = 0, 11 do
        TriggerRegisterPlayerChatEvent(t, Player(i),"-clear",true)
    end

    local function on_chat()
        if(GetLocalPlayer()==GetTriggerPlayer())then
            ClearTextMessages()
        end
    end
   
    TriggerAddCondition(t, Condition(on_chat))
end

ChatClearChatInit()

local function ChatBloodModInit()
    local t = CreateTrigger()

    for i = 0, 11 do
        TriggerRegisterPlayerChatEvent(t, Player(i),"-bloodmod", false)
    end

    local function on_chat()
        BloodFactor = SubString(GetEventPlayerChatString(),10,999)
        printTimed("Modifier of blood amount set to "..SubString(GetEventPlayerChatString(),10,999),20)
    end
   
    TriggerAddCondition(t, Condition(on_chat))
end

ChatBloodModInit()

local function ChatBloodDryTimeInit()
    local t = CreateTrigger()

    for i = 0, 11 do
        TriggerRegisterPlayerChatEvent(t, Player(i),"-blooddry", false)
    end

    local function on_chat()
        BloodFactor = SubString(GetEventPlayerChatString(),10,999)
        printTimed("Blood dry time set to "..SubString(GetEventPlayerChatString(),10,999).." seconds",20)
    end
   
    TriggerAddCondition(t, Condition(on_chat))
end

ChatBloodDryTimeInit()

local function CommandsChatInit()
    local t = CreateTrigger()

    for i = 0, 11 do
        TriggerRegisterPlayerChatEvent(t, Player(i),"-commands",true)
    end

    local function on_chat()
        printToPlayerTimed(GetTriggerPlayer(),"Commands list:",20)
        printToPlayerTimed(GetTriggerPlayer(),"\'-commands\' displays this thing",20)
        printToPlayerTimed(GetTriggerPlayer(),"\'-clear\' clears screen from wall of text",20)
        printToPlayerTimed(GetTriggerPlayer(),"\'-lang\' Displays the frame with languages. Only english and russian works atm.",20)
        printToPlayerTimed(GetTriggerPlayer(),"\'-cam [number]\' sets your camera distance to [number]",20)
        printToPlayerTimed(GetTriggerPlayer(),"\'-bloodmod [number]\' sets blood modifier amount to [number]",20)
        printToPlayerTimed(GetTriggerPlayer(),"\'-blooddry [number]\' sets blood dry time to [number] seconds",20)
    end
   
    TriggerAddCondition(t, Condition(on_chat))
end

CommandsChatInit()

local function ChatBloodDryTimeInit()
    local t = CreateTrigger()

    for i = 0, 11 do
        TriggerRegisterPlayerChatEvent(t, Player(i),"-gget", false)
    end

    local function on_chat()
        print(collectgarbage("count")*1024)
        collectgarbage("collect")
        collectgarbage("collect")
        print(collectgarbage("count")*1024)
    end
   
    TriggerAddCondition(t, Condition(on_chat))
end

ChatBloodDryTimeInit()