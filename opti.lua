-- Script Made By Отчайный Торговец#8122

-- Settings [false = OFF] [true = ON] (ENABLE ONLY 1)
DeathRace = true
MirrorMaze = false
SpikySurvival = false
GrowganothGulchL = false -- LEFT
GrowganothGulchR = false -- RIGHT

Speed = 200 -- Delay Speed
FSpeed = 250 -- Delay Speed to finis (not work for dead trace 5000)
TorSPeed = 200

WorldDrop = "MGFCC|0MM" -- After End it Will Entering World (NO AUTO DROP)

--========[ SCRIPT ]==============

ticketid = 1898 -- Dont Touch
rodid = 3010 -- Dont Touch
DelayWorld = 2000 -- Delay World to World

function pool2()
    if rodamount() > 1 then
    LogToConsole("`4You get Licorice Rod")
    Chat("/warn ``4You get Licorice Rod")
	Chat("`cI get `$Licorice Rod `eDiscord `0(`$https://discord.gg/KjYBbjZ38U`0)")
    EditToggle("Antibounce", false)
    EditToggle("No Clip + Ghost", false)
EditToggle("Cant Pickup Item", false)
	EditToggle("ModFly", false)
    Sleep(DelayWorld)
    SendPacket(3, "action|join_request\nname|" .. WorldDrop)
    end
 end
 
function ticketamount()
for _, item in pairs(GetInventory()) do
if (item.id == 1898) then
return item.amount
        end    
    end
    return 0
end

function rodamount()
for _, item in pairs(GetInventory()) do
if (item.id == 3010) then
return item.amount
        end    
    end
    return 0
end

  function Punch(x, y)
    pkt = {}
    pkt.type = 3
    pkt.value = 18
    pkt.px = x
    pkt.py = y
    pkt.x = GetLocal().posX
    pkt.y = GetLocal().posY
    SendPacketRaw(false, pkt)
  end

  function Enter(x, y)
    pkt = {}
    pkt.type = 7
    pkt.value = 18
    pkt.px = x
    pkt.py = y
    pkt.x = GetLocal().posX
    pkt.y = GetLocal().posY
    SendPacketRaw(false, pkt)
  end

  function Chat(Text)
    SendPacket(2, "action|input\n|text|"..Text)
  end
  
Chat("/warn `8Script made by `$Torgovets")
Sleep(2000)
   LogToConsole("`8Script made by `$Torgovets")
	LogToConsole("`8You can find more scripts here `eDiscord `0(`$https://discord.gg/KjYBbjZ38U`0)")
	Sleep(1500)
    
  function deathrace()
    Sleep(700)
    while deathrace do
    x = math.floor(GetLocal().posX / 32)
    y = math.floor(GetLocal().posY / 32)
    if x == 53 and y == 53 or x == 54 and y == 53  or x == 55 and y == 53 or x == 56 and y == 53 or x == 57 and y == 53 or x == 58 and y == 53 or x == 59 and y == 53  then
  EditToggle("Antibounce V2", false)
  EditToggle("ModFly", true)
    LogToConsole("`$Move to `6Death Race 5000")
    Chat("/warn `$Move to `eDeath Race 5000 `w(`4DONT MOVE`w)")
    FindPath(56, 48)
    Sleep(Speed)
    elseif x == 56 and y == 48 then
    Sleep(Speed)
	Chat("`cScript by `$Torgovets")
    FindPath(57, 26)
    elseif x == 57 and y == 26 then
    Sleep(Speed)
    FindPath(56, 39)
    elseif x == 56 and y == 39 then
    Sleep(Speed)
FindPath(56, 20)
    elseif x == 56 and y == 20 then
    Sleep(Speed)
FindPath(39, 16)
    elseif x == 39 and y == 16 then
    Sleep(1000) -- Начало смертельной трассы
    FindPath(35, 11)
EditToggle("ModFly", false)
LogToConsole("`$Starting `6Death Race 5000")
Chat("/warn `$Starting `#Death Race 5000")
EditToggle("Antibounce", true)
EditToggle("Cant Pickup Item", true)
EditToggle("No Clip + Ghost", true)
    Sleep(Speed)
    elseif x == 35 and y == 16 then
    EditToggle("ModFly", true)
    Sleep(400)
    FindPath(33, 13)
    Sleep(350)
    Enter(33, 13)
    Sleep(400)
function pool()
    if ticketamount() > 0 or rodamount() > 1 then
    deathrace()

    else
    LogToConsole("`4Not Enough Ticket to Start Another Loop")
    Chat("/warn `4Not Enough Ticket to Start Another Loop")
	Chat("`cScript by `$Torgovets `eDiscord `0(`$https://discord.gg/KjYBbjZ38U`0)")
    EditToggle("Antibounce", false)
    EditToggle("No Clip + Ghost", false)
EditToggle("Cant Pickup Item", false)
	EditToggle("ModFly", false)
    Sleep(DelayWorld)
    SendPacket(3, "action|join_request\nname|" .. WorldDrop)
    end
 end
pool()
pool2()
    elseif x == 33 and y == 15 then
    elseif x == 31 and y == 15 then
	Sleep(TorSPeed)
	FindPath(31,11)
	Sleep(600)
	FindPath(31,11)
    end
    end
    end
    
	function mirrormaze()
    Sleep(700)
    while mirrormaze do
    x = math.floor(GetLocal().posX / 32)
    y = math.floor(GetLocal().posY / 32)
    if x == 53 and y == 53 or x == 54 and y == 53  or x == 55 and y == 53 or x == 56 and y == 53 or x == 57 and y == 53 or x == 58 and y == 53 or x == 59 and y == 53  then
  EditToggle("Antibounce V2", false)
  EditToggle("ModFly", true)
    LogToConsole("`$Move to `6Mirror Maze")
    Chat("/warn `$Move to `eMirror Maze `w(`4DONT MOVE`w)")
    Sleep(Speed)
    FindPath(56, 48)
    elseif x == 56 and y == 48 then
    Sleep(Speed)
	Chat("`cScript by `$Torgovets")
    FindPath(57, 26)
    elseif x == 57 and y == 26 then
    Sleep(Speed)
    FindPath(56, 39)
    elseif x == 56 and y == 39 then
    Sleep(Speed)
FindPath(56, 20)
    elseif x == 56 and y == 20 then
    Sleep(Speed)
FindPath(33, 21)
    elseif x == 33 and y == 21 then
    Sleep(1000) -- Начало Лабиринта
    FindPath(27, 19)
EditToggle("ModFly", false)
LogToConsole("`$Starting `6Mirror Maze")
Chat("/warn `$Starting `#Mirror Maze")
EditToggle("Antibounce", true)
EditToggle("Cant Pickup Item", true)
EditToggle("No Clip + Ghost", true)
    Sleep(Speed)
    elseif x == 27 and y == 25 then
	EditToggle("ModFly", true)
    FindPath(26, 25)
    Sleep(350)
    Enter(26, 25)
    Sleep(400)
function pool()
    if ticketamount() > 0 or rodamount() > 1 then
    mirrormaze()

    else
    LogToConsole("`4Not Enough Ticket to Start Another Loop")
    Chat("/warn `4Not Enough Ticket to Start Another Loop")
	Chat("`cScript by `$Torgovets `eDiscord `0(`$https://discord.gg/KjYBbjZ38U`0)")
    EditToggle("Antibounce", false)
    EditToggle("No Clip + Ghost", false)
EditToggle("Cant Pickup Item", false)
	EditToggle("ModFly", false)
    Sleep(DelayWorld)
    SendPacket(3, "action|join_request\nname|" .. WorldDrop)
    end
 end
pool()
pool2()
    elseif x == 26 and y == 28 then
    elseif x == 14 and y == 32 then
	Sleep(FSpeed)
	FindPath(24,24)
	Sleep(600)
	FindPath(24,24)
    end
    end
    end
  
  function spikysurvival()
    Sleep(700)
    while spikysurvival do
    x = math.floor(GetLocal().posX / 32)
    y = math.floor(GetLocal().posY / 32)
    if x == 53 and y == 53 or x == 54 and y == 53  or x == 55 and y == 53 or x == 56 and y == 53 or x == 57 and y == 53 or x == 58 and y == 53 or x == 59 and y == 53  then
  EditToggle("Antibounce V2", false)
  EditToggle("ModFly", true)
    LogToConsole("`$Move to `6Spiky Surival")
    Chat("/warn `$Move to `eSpiky Surival `w(`4DONT MOVE`w)")
    FindPath(56, 48)
    Sleep(Speed)
	Chat("`cScript by `$Torgovets")
    elseif x == 56 and y == 48 then
    FindPath(52, 43)
    Sleep(Speed)
    elseif x == 52 and y == 43 then
    FindPath(38, 43)
    Sleep(Speed)
    elseif x == 38 and y == 43 then
FindPath(29, 37)
    Sleep(Speed)
    elseif x == 29 and y == 37 then
    Sleep(1000) -- Начало Выживания
EditToggle("ModFly", false)
LogToConsole("`$Starting `6Spiky Surival")
Chat("/warn `$Starting `#Spiky Surival")
EditToggle("Antibounce", true)
EditToggle("Cant Pickup Item", true)
EditToggle("No Clip + Ghost", true)
    Sleep(Speed)
    elseif x == 29 and y == 42 or x == 34 and y == 42 then
	EditToggle("ModFly", true)
EditToggle("Antibounce", true)
EditToggle("Cant Pickup Item", true)
    FindPath(28, 42)
    Sleep(300)
    Enter(28, 42)
    Sleep(400)
function pool()
    if ticketamount() > 0 or rodamount() > 1 then
    spikysurvival()

    else
    LogToConsole("`4Not Enough Ticket to Start Another Loop")
    Chat("/warn `4Not Enough Ticket to Start Another Loop")
	Chat("`cScript by `$Torgovets `eDiscord `0(`$https://discord.gg/KjYBbjZ38U`0)")
    EditToggle("Antibounce", false)
    EditToggle("No Clip + Ghost", false)
EditToggle("Cant Pickup Item", false)
	EditToggle("ModFly", false)
    Sleep(DelayWorld)
    SendPacket(3, "action|join_request\nname|" .. WorldDrop)
    end
 end
pool()
pool2()
    elseif x == 30 and y == 46 then
    elseif x == 21 and y == 41 then
	Sleep(1500)
    end
    end
    end
   
   function growganothgluchl()
    Sleep(700)
    while growganothgluchl do
    x = math.floor(GetLocal().posX / 32)
    y = math.floor(GetLocal().posY / 32)
    if x == 53 and y == 53 or x == 54 and y == 53  or x == 55 and y == 53 or x == 56 and y == 53 or x == 57 and y == 53 or x == 58 and y == 53 or x == 59 and y == 53  then
  EditToggle("Antibounce V2", false)
  EditToggle("ModFly", true)
    LogToConsole("`$Move to `6Left Growganoth Gulch")
    Chat("/warn `$Move to `eLeft Growganoth Gulch `w(`4DONT MOVE`w)")
    FindPath(56, 48)
    Sleep(Speed)
    elseif x == 56 and y == 48 then
    Sleep(Speed)
    FindPath(56, 39)
	Chat("`cScript by `$Torgovets")
    elseif x == 56 and y == 39 then
    Sleep(Speed)
    FindPath(32, 39)
    elseif x == 32 and y == 39 then
    Sleep(Speed)
	FindPath(21, 36)
    elseif x == 21 and y == 36 then
    Sleep(Speed)
FindPath(12, 36)
    elseif x == 12 and y == 36 then
    Sleep(Speed)
FindPath(9, 35)
    Sleep(Speed)
    elseif x == 9 and y == 35 then
    Sleep(1000) -- Начало Паркура
EditToggle("ModFly", false)
LogToConsole("`$Starting `6Left Growganoth Gulch")
Chat("/warn `$Starting `#Left Growganoth Gulch")
    Sleep(Speed)
    elseif x == 9 and y == 39 then
EditToggle("ModFly", true)
EditToggle("Antibounce", true)
EditToggle("Cant Pickup Item", true)
    FindPath(7, 37)
    Sleep(300)
    Enter(7, 37)
    Sleep(700)
function pool()
    if ticketamount() > 0 or rodamount() > 1 then
    growganothgluchl()

    else
    LogToConsole("`4Not Enough Ticket to Start Another Loop")
    Chat("/warn `4Not Enough Ticket to Start Another Loop")
	Chat("`cScript by `$Torgovets `eDiscord `0(`$https://discord.gg/KjYBbjZ38U`0)")
    EditToggle("Antibounce", false)
EditToggle("Cant Pickup Item", false)
	EditToggle("ModFly", false)
    Sleep(DelayWorld)
    SendPacket(3, "action|join_request\nname|" .. WorldDrop)
    end
 end
pool()
pool2()
    elseif x == 7 and y == 39 then
    elseif x == 3 and y == 53 then
	Sleep(FSpeed)
	FindPath(2,23)
	Sleep(600)
	FindPath(2,23)
	elseif x == 2 and y == 23 then
	Sleep(350)
	Punch(3,23)
	Sleep(500)
    end
    end
    end
	
	function growganothgluchr()
    Sleep(700)
    while growganothgluchr do
    x = math.floor(GetLocal().posX / 32)
    y = math.floor(GetLocal().posY / 32)
    if x == 53 and y == 53 or x == 54 and y == 53  or x == 55 and y == 53 or x == 56 and y == 53 or x == 57 and y == 53 or x == 58 and y == 53 or x == 59 and y == 53  then
  EditToggle("Antibounce V2", false)
  EditToggle("ModFly", true)
    LogToConsole("`$Move to `6Right Growganoth Gulch")
    Chat("/warn `$Move to `eRight Growganoth Gulch `w(`4DONT MOVE`w)")
    FindPath(56, 48)
    Sleep(Speed)
    elseif x == 56 and y == 48 then
    Sleep(Speed)
	Chat("`cScript by `$Torgovets")
    FindPath(56, 39)
    elseif x == 56 and y == 39 then
    Sleep(Speed)
    FindPath(86, 39)
    elseif x == 86 and y == 39 then
    Sleep(Speed)
	FindPath(90, 35)
    elseif x == 90 and y == 35 then
    Sleep(1000) -- Начало Паркура
EditToggle("ModFly", false)
LogToConsole("`$Starting `6Right Growganoth Gulch")
Chat("/warn `$Starting `#Right Growganoth Gulch")
    Sleep(Speed)
    elseif x == 90 and y == 39 then
EditToggle("ModFly", true)
EditToggle("Antibounce", true)
EditToggle("Cant Pickup Item", true)
    FindPath(92, 37)
    Sleep(200)
    Enter(92, 37)
    Sleep(700)
function pool()
    if ticketamount() > 0 or rodamount() > 1 then
    growganothgluchr()

    else
    LogToConsole("`4Not Enough Ticket to Start Another Loop")
    Chat("/warn `4Not Enough Ticket to Start Another Loop")
	Chat("`cScript by `$Torgovets `eDiscord `0(`$https://discord.gg/KjYBbjZ38U`0)")
    EditToggle("Antibounce", false)
EditToggle("Cant Pickup Item", false)
	EditToggle("ModFly", false)
    Sleep(DelayWorld)
    SendPacket(3, "action|join_request\nname|" .. WorldDrop)
    end
 end
pool()
pool2()
    elseif x == 92 and y == 39 then
    elseif x == 96 and y == 53 then
	Sleep(FSpeed)
	FindPath(97,23)
	Sleep(600)
	FindPath(97,23)
	elseif x == 97 and y == 23 then
	Sleep(350)
	Punch(96,23)
	Sleep(500)
    end
    end
    end
	
   function CheckingWorld()
   while Check do
   if DeathRace == true then
   Sleep(700)
   deathrace()
   elseif MirrorMaze == true then
   Sleep(700)
   mirrormaze()
   elseif SpikySurvival == true then
   Sleep(700)
   spikysurvival()
   elseif GrowganothGulchL == true then
   Sleep(700)
   growganothgluchl()
   elseif GrowganothGulchR == true then
   Sleep(700)
   growganothgluchr()
   else
Sleep(700)
SendPacket(2, "action|input\n|text|/warn `4Error, you may not have selected the game mode in the settings")
   Check = false
   end
   end
   end
  
   EditToggle("Antibounce", true)
   EditToggle("Auto Leave When Mods Join", true)
   EditToggle("AntiBan" , true)
   EditToggle("Use Warn Text" , true)

   Check = true
   CheckingWorld()
