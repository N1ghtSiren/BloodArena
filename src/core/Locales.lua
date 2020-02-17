function PlayerGetLocale(p)
    if(GetLocalPlayer()==p)then
        BlzSendSyncData("GetLocale", BlzGetLocale())
    end
end

function PlayerSetLocale(playerr, langcode)
    player[GetPlayerId(playerr)].locale = langcode 
end

function SyncData()
    if(BlzGetTriggerSyncPrefix() == "GetLocale")then
        player[GetPlayerId(GetTriggerPlayer())].locale = BlzGetTriggerSyncData()
    end
end

function InitLocales()
    local t = CreateTrigger()
    for i = 0, 11 do
        BlzTriggerRegisterPlayerSyncEvent(t, Player(i), "GetLocale", false)
    end
    TriggerAddCondition(t, Condition(SyncData))
end
InitLocales()

function PlayerUpdateSkillsDescriptions(playerr)
    obj = player[GetPlayerId(playerr)].heroobj
    if(obj~=nil)then
        for i = 0, 11 do
            if(obj.abils[i].update~=nil)then
                obj.abils[i].update()
            end
        end
    end
end

function GetLocalizedString(StringCodeName, pid)
    if(Localz[StringCodeName][player[pid].locale] ~= nil)then return Localz[StringCodeName][player[pid].locale] end
    if(Localz[StringCodeName][_en] ~= nil)then return Localz[StringCodeName][_en] end
    print(StringCodeName,"not found on ",player[pid].locale)
    return StringCodeName
end

function GetLocalizedStringV2(StringCodeName)
    if(Localz[StringCodeName][player[GetPlayerId(GetLocalPlayer())].locale] ~= nil)then return Localz[StringCodeName][player[GetPlayerId(GetLocalPlayer())].locale] end
    if(Localz[StringCodeName][_en] ~= nil)then return Localz[StringCodeName][_en] end
    print(StringCodeName,"not found on ",player[GetPlayerId(GetLocalPlayer())].locale)
    return StringCodeName
end

function GetLocalizedStringByLang(StringCodeName, langcode)
    if(Localz[StringCodeName][langcode] ~= nil)then return Localz[StringCodeName][langcode] end
    if(Localz[StringCodeName][_en] ~= nil)then return Localz[StringCodeName][_en] end
    print(StringCodeName,"not found on ",player[pid].locale)
    return StringCodeName
end
-------------------------------------------------------------------------------------------------
_de = "deDE"
_en = "enUS"
_esMX = "esMX"
_esES = "esES"
_fr = "frFR"
_it = "itIT"
_pl = "plPL"
_ptBR = "ptBR"
_ru = "ruRU"
_ko = "koKR"
_zhCN = "zhCN"
_zhTW = "zhTW"

Localz = {}
local StringCodeName
----------------------------------------------
--things
StringCodeName = "voting"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Голосование:"
Localz[StringCodeName][_en] = "Voting:"

StringCodeName = "votebloodamount"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Выберите кол-во крови."
Localz[StringCodeName][_en] = "Chose blood amount."

StringCodeName = "langchosen"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Выбран русский язык. Вы можете поменять язык, написав \'-lang\'"
Localz[StringCodeName][_en] = "English was chosen. You can change language by typing \'-lang\'"

StringCodeName = "leading"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "лидирует: "
Localz[StringCodeName][_en] = "is leading:  "

StringCodeName = "bloodeffs"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Эффекты Крови: "
Localz[StringCodeName][_en] = "Blood Effects: "

StringCodeName = "hotkey"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "|n|nХоткей: "
Localz[StringCodeName][_en] = "|n|nHotkey: "

StringCodeName = "damage"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "|nУрон: "
Localz[StringCodeName][_en] = "|nDamage: "

StringCodeName = "range"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "|nОбласть: "
Localz[StringCodeName][_en] = "|nRange: "

StringCodeName = "proj speed"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = " Скорость снаряда: "
Localz[StringCodeName][_en] = " Projectile speed: "

StringCodeName = "manacost"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "|nМана: "
Localz[StringCodeName][_en] = "|nManacost: "

StringCodeName = "duration"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "|nДлительность: "
Localz[StringCodeName][_en] = "|nDuration: "

StringCodeName = "cooldown"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "|nПерезарядка: "
Localz[StringCodeName][_en] = "|nCooldown: "

StringCodeName = "sec"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "секунд(a/ы)"
Localz[StringCodeName][_en] = "second(s)"

StringCodeName = "health"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Здоровье"
Localz[StringCodeName][_en] = "Health"

StringCodeName = "mana"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Мана"
Localz[StringCodeName][_en] = "Mana"

StringCodeName = "usesmouse"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "|nИспользует текущие координаты курсора"
Localz[StringCodeName][_en] = "|nUses cursor position."

StringCodeName = "usesmouseEnemies"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "|nИспользует текущие координаты курсора, ищет ВИДИМЫХ врагов в %области%."
Localz[StringCodeName][_en] = "|nUses cursor position, searches for VISIBLE enemies in %range%."

StringCodeName = "won"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = " победил!"
Localz[StringCodeName][_en] = " has won!"

StringCodeName = "total wins"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = " Всего побед: "
Localz[StringCodeName][_en] = " Total wins: "

StringCodeName = "thanksforgame"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Спасибо за игру! Заходите в наш дискорд: discord.gg/gGdPndE"
Localz[StringCodeName][_en] = "Thanks for game! Join our discord: discord.gg/gGdPndE"

------------------------------------------------------------------------------------------------------------------------------------------
StringCodeName = "votefragsamount"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Выберите кол-во фрагов для победы в раунде:"
Localz[StringCodeName][_en] = "Chose frags amount to win round:"

StringCodeName = "votefragsafk"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Стандартные \'20\' фрагов - ибо никто не так и не проголосовал. Хорошая работа, Афкшеры!"
Localz[StringCodeName][_en] = "\'20\' frags was chosen because noone voted. GJ, AFKers!"

StringCodeName = "frags"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "фрагов"
Localz[StringCodeName][_en] = "frags"

StringCodeName = "frags10"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Очень быстрая игра, 2-3 минуты на раунд."
Localz[StringCodeName][_en] = "Beri fast game, 2-3 mins for round"

StringCodeName = "frags20"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Быстрая игра, 3-5 минут на раунд."
Localz[StringCodeName][_en] = "Fast game, 3-5 mins for round"

StringCodeName = "frags30"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Стандартная игра, 5-8 минут на раунд."
Localz[StringCodeName][_en] = "Standart game, 5-8 mins for round"

StringCodeName = "frags40"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Продлённая игра, 7-10 минут на раунд."
Localz[StringCodeName][_en] = "Extended game, 7-10 mins for round"

StringCodeName = "frags50"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Долгая игра, 10-12 минут на раунд."
Localz[StringCodeName][_en] = "Long game, 10-12 mins for round"

StringCodeName = "frags75"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Вечная игра, 9999 (15)минут на раунд."
Localz[StringCodeName][_en] = "Everlasting game, 9999 (15)mins for round"

StringCodeName = "gamemodechosen"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Выбран режим игры: "
Localz[StringCodeName][_en] = "Game Mode chosen: "
------------------------------------------------------------------------------------------------------------------------------------------
StringCodeName = "welcome1"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Добро пожаловать в кровавую арену"
Localz[StringCodeName][_en] = "Welcome to the blood arena."

StringCodeName = "welcome2_1"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Правила просты: наберите "
Localz[StringCodeName][_en] = "Rules are simple: get "

StringCodeName = "welcome2_2"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = " фрагов для победы."
Localz[StringCodeName][_en] = " frags to win."

StringCodeName = "welcome3"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Применяйте заклинания по хоткеям, кнопки на экране показывают только описание."
Localz[StringCodeName][_en] = "Cast spells with hotkeys, buttons on screen will only show tooltip."

StringCodeName = "welcome4"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Зажмите TAB чтобы открыть таблицу фрагов."
Localz[StringCodeName][_en] = "Hold TAB to open scorescreen."

StringCodeName = "welcome5"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Игра начнётся через 60 секунд."
Localz[StringCodeName][_en] = "Game will start in 60 seconds."

StringCodeName = "welcome6"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Меню всё ещё доступно по кнопке F10"
Localz[StringCodeName][_en] = "Don't worry, menu is still available with F10 button"

------------------------------------------------------------------------------------------------------------------------------------------
StringCodeName = "voteended"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = "Голосование закончено"
Localz[StringCodeName][_en] = "Voteing has ended."

StringCodeName = "vote(s)"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = " голос(а/ов)"
Localz[StringCodeName][_en] = " vote(s)"

StringCodeName = "voted for"
Localz[StringCodeName] = {}
Localz[StringCodeName][_ru] = " проголосовал за "
Localz[StringCodeName][_en] = " voted for "

------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
--"deDE"
--"enUS"
--"esMX"
--"esES"
--"frFR"
--"itIT"
--"plPL"
--"ptBR"
--"ruRU"
--"koKR"
--"zhCN"
--"zhTW"