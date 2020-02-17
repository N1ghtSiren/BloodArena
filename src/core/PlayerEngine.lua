function launchAI(pid)
    player[pid].ai = CreateTimer()

    local function on_timer()
        local i = GetRandomInt(0,11)
        
        if(player[pid].heroobj==nil)then return end

        if(player[pid].heroobj.abils[i].used==true)then
            TriggerEvaluate(player[pid].heroobj.abils[i].trig[0])
        end

    end

    TimerStart(player[pid].ai, GetRandomReal(0.8, 2.0), true, on_timer)
end

player = {}
for i = 0, 11 do
    player[i] = {}
    player[i].score = 0
    player[i].wins = 0
    player[i].ai = nil

    PlayerGetLocale(Player(i))
    CreateManaBar(i)
    CreateHealthBar(i)
    CreateUIForPlayer(i)
    
    if(GetPlayerController(Player(i))==MAP_CONTROL_COMPUTER or GetPlayerSlotState(Player(i))==PLAYER_SLOT_STATE_EMPTY)then
        launchAI(i)
    end
end



function onChat()
    printTimed(player_colors[GetPlayerId(GetTriggerPlayer())]..GetPlayerName(GetTriggerPlayer()).."|r: "..GetEventPlayerChatString(),30)
end

local trig = CreateTrigger()

TriggerAddCondition(trig, Condition(onChat))
for i = 0, 11 do
    TriggerRegisterPlayerChatEvent(trig, Player(i), "", false)
end

function onLeave()
    printTimed(player_colors[GetPlayerId(GetTriggerPlayer())]..GetPlayerName(GetTriggerPlayer()).."|r HAS LEFT THE GAME.")
end

local trig = CreateTrigger()
TriggerAddCondition(trig, Condition(onLeave))
for i = 0, 11 do
    TriggerRegisterPlayerEventLeave(trig,Player(i))
end