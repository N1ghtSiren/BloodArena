local MousePosX = {}
local MousePosY = {}
local MouseSaveFlag = {}

function SaveMouseCoords()
    local id = GetPlayerId(GetTriggerPlayer())
    if(MouseSaveFlag[id])then
        if (BlzGetTriggerPlayerMouseX()~= 0.0 and BlzGetTriggerPlayerMouseY()~=0.0) then
            MousePosX[id] = BlzGetTriggerPlayerMouseX()
            MousePosY[id] = BlzGetTriggerPlayerMouseY()
            MouseSaveFlag[id] = false
        end
    end
end

function PlayerMouseSyncTimer()
    for id = 0,11 do
        MouseSaveFlag[id] = true
    end
end
TimerStart(CreateTimer(),0.1,true,PlayerMouseSyncTimer)

local trig = CreateTrigger()
for i = 0,11 do
    TriggerRegisterPlayerEvent(trig, Player(i), EVENT_PLAYER_MOUSE_MOVE)
end
TriggerAddCondition(trig,Condition(SaveMouseCoords))

---@param playerid integer
---@return MouseX integer
---@return MouseY integer
function GetPlayerMouseXY(pid)
    --если бот
    if(IsAI(pid))then
        return current_location.mouse(pid)
    end
    
    return MousePosX[pid], MousePosY[pid]
end