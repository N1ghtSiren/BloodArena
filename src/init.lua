SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, 2200, 0.6)
SetFloatGameState(GAME_STATE_TIME_OF_DAY, 15.00)
SuspendTimeOfDay(true)

function initt()
    if(IsDebug())then print("Никогда такого не было и вот опять.");FragLimit = 5;BloodDryTime = 60;BloodFactor = 2;InitNewRound() return end
    
    VoteLangShow(15)

    TimerStart(CreateTimer(),15.,false,function()
        printTimed(GetLocalizedString("welcome1",GetPlayerId(GetLocalPlayer())),60)
        printTimed(GetLocalizedString("welcome2_1",GetPlayerId(GetLocalPlayer())).." X "..GetLocalizedString("welcome2_2",GetPlayerId(GetLocalPlayer())),60)
        printTimed(GetLocalizedString("welcome3",GetPlayerId(GetLocalPlayer())),60)
        printTimed(GetLocalizedString("welcome4",GetPlayerId(GetLocalPlayer())),60)
        printTimed(GetLocalizedString("welcome5",GetPlayerId(GetLocalPlayer())),60)
        printTimed(GetLocalizedString("welcome6",GetPlayerId(GetLocalPlayer())),60)
    end)

    TimerStart(CreateTimer(),16.,false,function()
        VoteFragsCreate(20)
    end)

    TimerStart(CreateTimer(),22.,false,function()
        InitNewRound()
    end)

end

initt()