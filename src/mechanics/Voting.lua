---------------------------------------------------------------------------------------------------
function Lang_en()
    player[GetPlayerId(GetTriggerPlayer())].locale = _en
    BlzFrameSetEnable(BlzGetTriggerFrame(), false)
    BlzFrameSetEnable(BlzGetTriggerFrame(), true)

    if(GetLocalPlayer()==GetTriggerPlayer())then
        BlzFrameSetVisible(VoteLang.frame, false)
        printTimed(GetLocalizedStringV2("langchosen"),30)
    end

    PlayerUpdateSkillsDescriptions(GetTriggerPlayer())
end

function Lang_ru()
    player[GetPlayerId(GetTriggerPlayer())].locale = _ru
    BlzFrameSetEnable(BlzGetTriggerFrame(), false)
    BlzFrameSetEnable(BlzGetTriggerFrame(), true)

    if(GetLocalPlayer()==GetTriggerPlayer())then
        BlzFrameSetVisible(VoteLang.frame, false)
        printTimed(GetLocalizedStringV2("langchosen"),30)
    end
    
    PlayerUpdateSkillsDescriptions(GetTriggerPlayer())
end

function LangVoteResults()
    BlzFrameSetVisible(VoteLang.frame, false)
end

function VoteLangShow(time)
    BlzFrameSetVisible(VoteLang.frame, true)
    TimerStart(CreateTimer(),time, false, LangVoteResults)
end

function VoteLangShowForPlayer(playerid)
    if(GetLocalPlayer()==Player(playerid))then
        BlzFrameSetVisible(VoteLang.frame, true)
    end
end

function VoteLangCreate()
    local v = VoteCreate("Language/Язык","Chose Language/Выберите язык|nMore coming soon.")
    VoteLang = v
    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNChaosPeon.tga", "English", "English will be used in descriptions", Lang_en)
    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNPeasant.blp", "Русский", "В описаниях будет использован русский язык", Lang_ru)
end
VoteLangCreate()
---------------------------------------------------------------------------------------------------
function Frags10()
    CurrentVote.results[0] = CurrentVote.results[0]+1

    BlzFrameSetEnable(BlzGetTriggerFrame(), false)
    BlzFrameSetEnable(BlzGetTriggerFrame(), true)

    if(GetTriggerPlayer()==GetLocalPlayer())then
        BlzFrameSetVisible(CurrentVote.frame, false)
    end
    printTimed(player_colors[GetPlayerId(GetTriggerPlayer())]..GetPlayerName(GetTriggerPlayer()).."|r"..GetLocalizedStringV2("voted for").."10")
    printTimed("10 : |cffff0000"..CurrentVote.results[0].."|r"..GetLocalizedStringV2("vote(s)"))

end

function Frags20()
    CurrentVote.results[1] = CurrentVote.results[1]+1

    BlzFrameSetEnable(BlzGetTriggerFrame(), false)
    BlzFrameSetEnable(BlzGetTriggerFrame(), true)

    if(GetTriggerPlayer()==GetLocalPlayer())then
        BlzFrameSetVisible(CurrentVote.frame, false)
    end
    printTimed(player_colors[GetPlayerId(GetTriggerPlayer())]..GetPlayerName(GetTriggerPlayer()).."|r"..GetLocalizedStringV2("voted for").."20")
    printTimed("20 : |cffff0000"..CurrentVote.results[1].."|r"..GetLocalizedStringV2("vote(s)"))

end

function Frags30()
    CurrentVote.results[2] = CurrentVote.results[2]+1

    BlzFrameSetEnable(BlzGetTriggerFrame(), false)
    BlzFrameSetEnable(BlzGetTriggerFrame(), true)

    if(GetTriggerPlayer()==GetLocalPlayer())then
        BlzFrameSetVisible(CurrentVote.frame, false)
    end
    printTimed(player_colors[GetPlayerId(GetTriggerPlayer())]..GetPlayerName(GetTriggerPlayer()).."|r"..GetLocalizedStringV2("voted for").."30")
    printTimed("30 : |cffff0000"..CurrentVote.results[2].."|r"..GetLocalizedStringV2("vote(s)"))

end

function Frags40()
    CurrentVote.results[3] = CurrentVote.results[3]+1

    BlzFrameSetEnable(BlzGetTriggerFrame(), false)
    BlzFrameSetEnable(BlzGetTriggerFrame(), true)

    if(GetTriggerPlayer()==GetLocalPlayer())then
        BlzFrameSetVisible(CurrentVote.frame, false)
    end
    printTimed(player_colors[GetPlayerId(GetTriggerPlayer())]..GetPlayerName(GetTriggerPlayer()).."|r"..GetLocalizedStringV2("voted for").."40")
    printTimed("40 : |cffff0000"..CurrentVote.results[3].."|r"..GetLocalizedStringV2("vote(s)"))

end

function Frags50()
    CurrentVote.results[4] = CurrentVote.results[4]+1

    BlzFrameSetEnable(BlzGetTriggerFrame(), false)
    BlzFrameSetEnable(BlzGetTriggerFrame(), true)

    if(GetTriggerPlayer()==GetLocalPlayer())then
        BlzFrameSetVisible(CurrentVote.frame, false)
    end
    printTimed(player_colors[GetPlayerId(GetTriggerPlayer())]..GetPlayerName(GetTriggerPlayer()).."|r"..GetLocalizedStringV2("voted for").."50")
    printTimed("50 : |cffff0000"..CurrentVote.results[4].."|r"..GetLocalizedStringV2("vote(s)"))

end

function Frags75()
    CurrentVote.results[5] = CurrentVote.results[5]+1

    BlzFrameSetEnable(BlzGetTriggerFrame(), false)
    BlzFrameSetEnable(BlzGetTriggerFrame(), true)

    if(GetTriggerPlayer()==GetLocalPlayer())then
        BlzFrameSetVisible(CurrentVote.frame, false)
    end
    printTimed(player_colors[GetPlayerId(GetTriggerPlayer())]..GetPlayerName(GetTriggerPlayer()).."|r"..GetLocalizedStringV2("voted for").."75")
    printTimed("75 : |cffff0000"..CurrentVote.results[5].."|r"..GetLocalizedStringV2("vote(s)"))

end

function FragsVoteResults()
    local v = CurrentVote
    local top = -1
    local bot = 999
    printTimed(GetLocalizedStringV2("voteended"))

    BlzFrameSetVisible(CurrentVote.frame, false)

    for i = 0, 5 do
        if(v.results[i]>top and v.results[i]~=0)then
            top = i
        end
    end
    
    if(top==5)then
        printTimed("75: "..v.results[top]..GetLocalizedStringV2("vote(s)"))
        printTimed(GetLocalizedStringV2("gamemodechosen")..GetLocalizedStringV2("frags75"))
        FragLimit = 75

    elseif(top==4)then
        printTimed("50: "..v.results[top]..GetLocalizedStringV2("vote(s)"))
        printTimed(GetLocalizedStringV2("gamemodechosen")..GetLocalizedStringV2("frags50"))
        FragLimit = 50

    elseif(top==3)then
        printTimed("40: "..v.results[top]..GetLocalizedStringV2("vote(s)"))
        printTimed(GetLocalizedStringV2("gamemodechosen")..GetLocalizedStringV2("frags40"))
        FragLimit = 40

    elseif(top==2)then
        printTimed("30: "..v.results[top]..GetLocalizedStringV2("vote(s)"))
        printTimed(GetLocalizedStringV2("gamemodechosen")..GetLocalizedStringV2("frags30"))
        FragLimit = 30

    elseif(top==1)then
        printTimed("20: "..v.results[top]..GetLocalizedStringV2("vote(s)"))
        printTimed(GetLocalizedStringV2("gamemodechosen")..GetLocalizedStringV2("frags20"))
        FragLimit = 20

    elseif(top==0)then
        printTimed("10: "..v.results[top]..GetLocalizedStringV2("vote(s)"))
        printTimed(GetLocalizedStringV2("gamemodechosen")..GetLocalizedStringV2("frags10"))
        FragLimit = 10

    elseif(top==-1)then
        printTimed(GetLocalizedStringV2("votefragsafk"))
        FragLimit = 20
    end
end

function VoteFragsCreate(time)
    local v = VoteCreate(GetLocalizedStringV2("voting"),GetLocalizedStringV2("votefragsamount"))
    v.results = {}
    CurrentVote = v

    --10 frags
    v.results[0] = 0  
    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNSkink.blp", "10", GetLocalizedStringV2("frags10"), Frags10)

    --20 frags
    v.results[1] = 0
    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNThunderLizard.blp", "20", GetLocalizedStringV2("frags20"), Frags20)

    --30 frags
    v.results[2] = 0
    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNRazorback.blp", "30", GetLocalizedStringV2("frags30"), Frags30)

    --40 frags
    v.results[3] = 0
    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNSpiritWalker.blp", "40", GetLocalizedStringV2("frags40"), Frags40)

    --50 frags
    v.results[4] = 0
    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNSludgeCreature.blp", "50", GetLocalizedStringV2("frags50"), Frags50)

    --75 frags
    v.results[5] = 0
    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNMannoroth.blp", "75", GetLocalizedStringV2("frags75"), Frags75)

    TimerStart(CreateTimer(),time, false, FragsVoteResults)
end

function VoteHeroesResult()
    printTimed("Heroes was chosen, or randomed for our dear afkers!",10)
    BlzFrameSetVisible(HeroesPick.frame, false)
    DestroyTimer(GetExpiredTimer())
end

function VoteHeroesShow(time)
    BlzFrameSetVisible(HeroesPick.frame, true)
    TimerStart(CreateTimer(),time, false, VoteHeroesResult)
end

function VoteHeroesCreate()
    local v = VoteCreate("Choose Hero","Pick your hero for this round")
    HeroesPick = v
    BlzFrameSetVisible(HeroesPick.frame, false)

    local function pickWarden()
        local pid = GetPlayerId(GetTriggerPlayer())
        if(not IsRemoved(player[pid].unit))then return end

        x,y = PolarProjectionXY(current_location.startx, current_location.starty, 400, 30*pid)
        UnitAddImmortality(CreateHero_Warden(pid,x,y,30*pid),20)
        printTimed(GetPlayerNameV2(pid).." has picked Warden!",15)

        if(Player(pid)==GetLocalPlayer())then
            BlzFrameSetVisible(HeroesPick.frame, false)
        end
    end
    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNHeroWarden.blp", "Warden", "Very mobile hero. Can cross arena 2 times in 1 second...", pickWarden)


    local function pickPaladin()
        local pid = GetPlayerId(GetTriggerPlayer())
        if(not IsRemoved(player[pid].unit))then return end

        x,y = PolarProjectionXY(current_location.startx, current_location.starty, 400, 30*pid)
        UnitAddImmortality(CreateHero_Paladin(pid,x,y,30*pid),20)
        printTimed(GetPlayerNameV2(pid).." has picked Paladin!",15)

        if(Player(pid)==GetLocalPlayer())then
            BlzFrameSetVisible(HeroesPick.frame, false)
        end
    end
    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNHeroPaladin.blp", "Paladin", "Strong one. Uses his HAMMER in any situation...", pickPaladin)
    

    local function pickEvilSylvanas()
        local pid = GetPlayerId(GetTriggerPlayer())

        if(not IsRemoved(player[pid].unit))then return end

        x,y = PolarProjectionXY(current_location.startx, current_location.starty, 400, 30*pid)
        UnitAddImmortality(CreateHero_Evilsylvanas(pid,x,y,30*pid),20)
        printTimed(GetPlayerNameV2(pid).." has picked Dark Ranger!",15)

        if(Player(pid)==GetLocalPlayer())then
            BlzFrameSetVisible(HeroesPick.frame, false)
        end
    end

    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNBansheeRanger.blp", "Dark Ranger", "Banshee. Was it before, now she is op archer...", pickEvilSylvanas)
    

    local function pickMurlocYellow()
        local pid = GetPlayerId(GetTriggerPlayer())

        if(not IsRemoved(player[pid].unit))then return end

        x,y = PolarProjectionXY(current_location.startx, current_location.starty, 400, 30*pid)
        UnitAddImmortality(CreateHero_MurlocYellow(pid,x,y,30*pid),20)
        printTimed(GetPlayerNameV2(pid).." has picked Murloc!",15)

        if(Player(pid)==GetLocalPlayer())then
            BlzFrameSetVisible(HeroesPick.frame, false)
        end
    end

    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNMurloc.blp", "Murloc", "Has some experience in fishing...", pickMurlocYellow)


    local function pickRatling()
        local pid = GetPlayerId(GetTriggerPlayer())

        if(not IsRemoved(player[pid].unit))then return end

        x,y = PolarProjectionXY(current_location.startx, current_location.starty, 400, 30*pid)
        UnitAddImmortality(CreateHero_Ratling(pid,x,y,30*pid),20)
        printTimed(GetPlayerNameV2(pid).." has picked Ratling!",15)

        if(Player(pid)==GetLocalPlayer())then
            BlzFrameSetVisible(HeroesPick.frame, false)
        end
    end

    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNratling.blp", "Rat With Gatling", "Was too good to not add here...", pickRatling)
    
    local function pickSeaWitch()
        local pid = GetPlayerId(GetTriggerPlayer())

        if(not IsRemoved(player[pid].unit))then return end

        x,y = PolarProjectionXY(current_location.startx, current_location.starty, 400, 30*pid)
        UnitAddImmortality(CreateHero_Seawitch(pid,x,y,30*pid),20)
        printTimed(GetPlayerNameV2(pid).." has picked Sea Witch!",15)

        if(Player(pid)==GetLocalPlayer())then
            BlzFrameSetVisible(HeroesPick.frame, false)
        end
    end

    VoteAddButton(v, "ReplaceableTextures\\CommandButtons\\BTNNagaSeaWitch.blp", "Sea Witch", "Came from the deepest sea...", pickSeaWitch)
    
end
VoteHeroesCreate()