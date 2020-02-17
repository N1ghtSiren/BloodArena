somerandominteger = 1

function InitNewRound()
    if(GetExpiredTimer()~=nil)then DestroyTimer(GetExpiredTimer()) end

    FogEnable(false)
    FogMaskEnable(false)

    EnableUserControl(false)
    EnableOcclusion(false)
    EnableUserControl(true)
    EnableOcclusion(true)
    --------------------------------------------------------------
    somerandominteger = somerandominteger + 1

    if(somerandominteger == 1)then
        SetCurrentLocation("garden")
    elseif(somerandominteger == 2)then
        SetCurrentLocation("volcano")
    elseif(somerandominteger == 3)then
        SetCurrentLocation("ancients")
    elseif(somerandominteger == 4)then
        SetCurrentLocation("forest")
        somerandominteger = 0
    end
    
    VoteHeroesShow(19)
    TimerStart(CreateTimer(), 20., false, StartNewRound)

end

function StartNewRound()
    if(GetExpiredTimer()~=nil)then DestroyTimer(GetExpiredTimer()) end

    local u
    local x,y
    
    for i = 0, 11 do
        if(GetPlayerSlotState(Player(i))==PLAYER_SLOT_STATE_PLAYING)then
            u = player[i].unit
            x,y = PolarProjectionXY(current_location.startx, current_location.starty, 400, 30*i)

            if(IsRemoved(u))then

                local z = GetRandomInt(0,2)
                if(z==0)then u = CreateHero_Warden(i,x,y,30*i); printTimed(GetPlayerNameV2(i).." has randomed Warden!",15)
                elseif(z==1)then u = CreateHero_Paladin(i,x,y,30*i); printTimed(GetPlayerNameV2(i).." has randomed Paladin!",15)
                elseif(z==2)then u = CreateHero_Evilsylvanas(i,x,y,30*i); printTimed(GetPlayerNameV2(i).." has randomed Dark Ranger!",15)
                elseif(z==3)then u = CreateHero_MurlocYellow(i,x,y,30*i); printTimed(GetPlayerNameV2(i).." has randomed Murloc!",15)
                elseif(z==4)then u = CreateHero_Ratling(i,x,y,30*i); printTimed(GetPlayerNameV2(i).." has randomed Ratling!",15)
                else u = CreateHero_Seawitch(i,x,y,30*i); printTimed(GetPlayerNameV2(i).." has randomed Sea Witch!",15)
                end
                
            end

            UnitResetImpulses(u)
            UnitRemoveAllBuffs(u)
            UnitRefreshAllAbils(u)
            FullHeal(u)
            SetUnitAnimation(u,"stand ready")

            SetUnitX(u,x)
            SetUnitY(u,y)
            SetUnitFacing(u,30*i)

            SetCameraPositionForPlayer(Player(i),GetUnitXY(u))
            ClearSelectionForPlayer(Player(i))
            SelectUnitAddForPlayer(u,Player(i))
            
            UnitAddStun(u,5)
            UnitAddInvul(u,7)
        end
    end

    if(IsDebug())then Debug_AddBodies() end
end

function EndRound()
    local u
    local x,y
    local obj
    for i = 0, 11 do
        if(player[i].heroobj~=nil)then
            player[i].score = 0
            PauseUnit(player[i].heroobj.unit,true)
            obj = player[i].heroobj
            UnitRemoveAllBuffs(obj.unit)
            
            for z = 0, 11 do
                if(obj.abils[z].used==true)then
                    obj.abils[z].remove()
                end
            end
            
            RemoveUnit(obj.unit)
        end
    end

    TimerStart(CreateTimer(),3.,false, InitNewRound)
end