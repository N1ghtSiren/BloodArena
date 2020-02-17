function ScoreInit()
    scorebar = BlzCreateSimpleFrame("MyFakeBar", game_ui, 0)
    bartext = BlzGetFrameByName("MyFakeBarTitle",0)

    BlzFrameSetAbsPoint(scorebar, FRAMEPOINT_TOPLEFT, 0, 0.6)
    BlzFrameSetTexture(scorebar, "Replaceabletextures\\Teamcolor\\Teamcolor05.blp", 0, true)
    BlzFrameSetTexture(BlzGetFrameByName("MyFakeBarBorder",0),"MyBarBorder.blp", 0, true)
    BlzFrameSetText(bartext, GetPlayerName(Player(0)))

    local bar = scorebar

    local function on_timer()
        local top = -1
        local id = 0

        for i = 0,11 do
            if(player[i].score>top)then
                top = player[i].score
                id = i
            end
        end

        BlzFrameSetValue(bar, mathfix((top/FragLimit)*100))
        BlzFrameSetText(bartext, player_colors[id]..GetPlayerName(Player(id)).."|r "..GetLocalizedStringV2("leading")..top.."/"..FragLimit)
        
    end

    TimerStart(CreateTimer(), 0.3, true, on_timer)

    BlzFrameSetVisible(scorebar, true)
end

ScoreInit()

function SomeCoolTextOnKill(killerUnit,killedUnit)
    local kid = GetPlayerId(GetOwningPlayer(killerUnit))
    local tid = GetPlayerId(GetOwningPlayer(killedUnit))

    --if(i==0)then
    --    print("- "..player_colors[tid]..GetHeroProperName(killedUnit).."|r was smashed by "..player_colors[kid]..GetHeroProperName(killerUnit).."|r !")
    --elseif(i==1)then
    --    print("- "..player_colors[tid]..GetHeroProperName(killedUnit).."|r is now dead. R.I.P")
    --elseif(i==2)then
    --    print("- "..player_colors[kid]..GetHeroProperName(killerUnit).."|r did something bloody.")
    --elseif(i==3)then
    --    print("- ".."|cff8f71adI know the Secret noone knows: Someone just died. Oooops...|r.")
    --elseif(i==4)then
    --    print("- ".."|cff050505Devoltz was here.|r Or not yet. Anyway, some noob died.")
    --elseif(i==5)then
    --    print("- "..player_colors[tid]..GetHeroProperName(killedUnit).."|r got time to think about lolis.")
    --elseif(i==6)then
    --    print("- ".."@"..player_colors[tid]..GetHeroProperName(killedUnit).."#3857|r was brutally pinged in Discord")
    --elseif(i==7)then
    --    print("- "..player_colors[kid]..GetHeroProperName(killerUnit).."|r has the HAMMER ready.")
    --elseif(i==8)then
    --    print("- Someone has his job done.")
    --elseif(i==9)then
    --    print("- Wanna leave? Press F10!")
    --elseif(i==10)then
    --    print("- "..player_colors[tid]..GetHeroProperName(killedUnit).."|r joined to the army of dead peons.")
    --end
    
    if(kid~=tid)then
        player[kid].score = player[kid].score + 1
    elseif(kid==tid)then
        player[kid].score = player[kid].score - 1
    end

    if(player[kid].score>=FragLimit)then
        printTimed("Round "..RoundNumber.." ended!",15)
        RoundNumber = RoundNumber + 1
        player[kid].wins = player[kid].wins + 1
        printTimed(player_colors[kid]..GetHeroProperName(killerUnit).."|r"..GetLocalizedStringV2("won")..GetLocalizedStringV2("total wins")..player[kid].wins,15)
        printTimed(GetLocalizedStringV2("thanksforgame"),1)
        EndRound()
    end
    
end

function HideScore()
    if(GetLocalPlayer()==GetTriggerPlayer())then
        for i = 0, 11 do
            BlzFrameSetVisible(scoreframes[i], false)
        end
    end

end

function ShowScore()
    if(GetLocalPlayer()==GetTriggerPlayer())then
        for i = 0, 11 do
            BlzFrameSetVisible(scoreframes[i], true)
        end
    end

end

scoreframes = {}
scoreframesText = {}
scoreframesTextRight = {}

function CreateScoreTab()

    scoreframes[0] = BlzCreateSimpleFrame("MyFakeBar", game_ui, 0)
    scoreframesText[0] = BlzGetFrameByName("MyFakeBarTitle",0)
    scoreframesTextRight[0] = BlzGetFrameByName("MyFakeBarRightText",0)
    BlzFrameSetAbsPoint(scoreframes[0], FRAMEPOINT_TOPRIGHT, 0.8, 0.6)
    BlzFrameSetTexture(scoreframes[0], "Replaceabletextures\\Teamcolor\\Teamcolor05.blp", 0, true)
    BlzFrameSetTexture(BlzGetFrameByName("MyFakeBarBorder",0),"MyBarBorder.blp", 0, true)

    BlzFrameSetText(BlzGetFrameByName("MyFakeBarTitle",0), GetPlayerName(Player(0)))

    BlzFrameSetVisible(scoreframes[0], false)

    for i = 1, 11 do
        scoreframes[i] = BlzCreateSimpleFrame("MyFakeBar", game_ui, 0)
        scoreframesText[i] = BlzGetFrameByName("MyFakeBarTitle",0)
        scoreframesTextRight[i] = BlzGetFrameByName("MyFakeBarRightText",0)

        BlzFrameSetPoint(scoreframes[i], FRAMEPOINT_TOPRIGHT, scoreframes[i-1], FRAMEPOINT_BOTTOMRIGHT, 0, 0)
        BlzFrameSetTexture(scoreframes[i], "Replaceabletextures\\Teamcolor\\Teamcolor05.blp", 0, true)
        BlzFrameSetTexture(BlzGetFrameByName("MyFakeBarBorder",0),"MyBarBorder.blp", 0, true)

        BlzFrameSetText(BlzGetFrameByName("MyFakeBarTitle",0), GetPlayerName(Player(i)))

        BlzFrameSetVisible(scoreframes[i], false)
    end


    local t = CreateTrigger()
    for i = 0, 11 do
        BlzTriggerRegisterPlayerKeyEvent(t, Player(i), OSKEY_TAB, 0, true)
    end
    TriggerAddCondition(t, Condition(ShowScore))

    local t = CreateTrigger()
    for i = 0, 11 do
        BlzTriggerRegisterPlayerKeyEvent(t, Player(i), OSKEY_TAB, 0, false)
    end
    TriggerAddCondition(t, Condition(HideScore))
end

CreateScoreTab()
__frame_texture_red = "Replaceabletextures\\Teamcolor\\Teamcolor12.blp"
__frame_texture_orange = "Replaceabletextures\\Teamcolor\\Teamcolor05.blp"
__frame_texture_green = "Replaceabletextures\\Teamcolor\\Teamcolor06.blp"

function UpdateScoreTab()
    local topscore = -1
    local top = 0
    local botscore = 999
    local bot = 0

    for i = 0, 11 do
        if(player[i].score>topscore)then
            top = i
            topscore = player[i].score
        end
        if(player[i].score<botscore)then
            bot = i
            botscore = player[i].score
        end
        BlzFrameSetText(scoreframesText[i], player_colors[GetPlayerId(Player(i))]..GetPlayerName(Player(i)).."|r "..player[i].score.."/"..FragLimit)
        BlzFrameSetText(scoreframesTextRight[i], player[i].wins)
        BlzFrameSetValue(scoreframes[i], mathfix((player[i].score/FragLimit)*100))
    end
    
    for i = 0, 11 do
        BlzFrameSetTexture(scoreframes[i], __frame_texture_orange, 0, true)
    end

    BlzFrameSetTexture(scoreframes[top], __frame_texture_red, 0, true)
    BlzFrameSetTexture(scoreframes[bot], __frame_texture_green, 0, true)
end

TimerStart(CreateTimer(), 1, true, UpdateScoreTab)