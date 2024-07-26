getgenv().Team = "Marines"

repeat wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");

if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat task.wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if getgenv().Team == "Marines" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Marines"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                       b:Fire() 
                    end
                    v.Function()
                end 
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Pirates"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                       b:Fire() 
                    end
                    v.Function()
                end 
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end
--Functions Sea--
if game.PlaceId == 2753915549 then
    First_Sea = true
elseif game.PlaceId == 4442272183 then
    Second_Sea = true
elseif game.PlaceId == 7449423635 then
    Third_Sea = true
else
    game.Players.LocalPlayer:Kick("[Ganteng Hub] Only Support BF")
end 
-- Functions Main
--[[Farm Level Function]]--
local Q = require(game.ReplicatedStorage.Quests)
    local R = {"BartiloQuest", "Trainees", "MarineQuest", "CitizenQuest"}
    local function S()
        local T = game.Players.LocalPlayer.Data.Level.Value
        local min = 0
        if T >= 1450 and game.PlaceId == 4442272183 then
            Mob1 = "Water Fighter"
            Mob2 = "ForgottenQuest"
            Mob3 = 2
        elseif T >= 700 and game.PlaceId == 2753915549 then
            Mob1 = "Galley Captain"
            Mob2 = "FountainQuest"
            Mob3 = 2
        else
            for r, v in pairs(Q) do
                for M, N in pairs(v) do
                    local U = N.LevelReq
                    for O, P in pairs(N.Task) do
                        if T >= U and U >= min and N.Task[O] > 1 and not table.find(R, tostring(r)) then
                            min = U
                            Mob1 = tostring(O)
                            Mob2 = r
                            Mob3 = M
                        end
                    end
                end
            end
        end
    end
    function CFrameQuest()
        local GuideModule = require(game.ReplicatedStorage.GuideModule)
        for list,NPCListC in pairs(GuideModule["Data"]["NPCList"]) do
            if NPCListC["NPCName"] == GuideModule["Data"]["LastClosestNPC"] then
                return list["CFrame"]
            end
        end
    end
    local Q = require(game.ReplicatedStorage.Quests)
    local a3 = require(game.ReplicatedStorage:WaitForChild("GuideModule"))
    function CheckDataQuest()
        for r, v in next, a3.Data do
            if r == "QuestData" then
                return true
            end
        end
        return false
    end
    function CheckNameMobDoubleQuest()
        local a
        if CheckDataQuest() then
            for r, v in next, a3.Data.QuestData.Task do
                a = r
            end
        end
        return a
    end
    function CheckDoubleQuestSkidcuaYMF()
        S()
        local a5 = {}
        if game.Players.LocalPlayer.Data.Level.Value >= 10 and CheckDataQuest() and CheckNameMobDoubleQuest() == Mob1 and #CheckNameMobDoubleQuest() > 2 then
            for r, v in pairs(Q) do
                for M, N in pairs(v) do
                    for O, P in pairs(N.Task) do
                        if tostring(O) == Mob1 then
                            for a6, a7 in next, v do
                                for a8, a9 in next, a7.Task do
                                    if a8 ~= Mob1 and a9 > 1 then
                                        if a7.LevelReq <= game.Players.LocalPlayer.Data.Level.Value then
                                            a5["Name"] = tostring(a8)
                                            a5["Mob2"] = r
                                            a5["ID"] = a6
                                        else
                                            a5["Name"] = Mob1
                                            a5["Mob2"] = Mob2
                                            a5["ID"] = Mob3
                                        end
                                        return a5
                                    end
                                end
                            end
                        end
                    end
                end
            end
        else
            a5["Name"] = Mob1
            a5["Mob2"] = Mob2
            a5["ID"] = Mob3
            return a5
        end
        a5["Name"] = Mob1
        a5["Mob2"] = Mob2
        a5["ID"] = Mob3
        return a5
    end
    function MobLevel1OrMobLevel2()
        local aa = {}
        for r, v in pairs(game.Workspace.Enemies:GetChildren()) do
            if not table.find(aa, v.Name) and v:IsA("Model") and v.Name ~= "PirateBasic" and not string.find(v.Name, "Brigade") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                table.insert(aa, v.Name)
            end
        end
        for r, v in pairs(aa) do
            local ab = v
            v = tostring(v:gsub(" %pLv. %d+%p", ""))
            if tostring(v) == CheckNameMobDoubleQuest() then
                return tostring(ab)
            end
        end
        return false
    end

    function TpEntrance(P)
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("requestEntrance", P)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        wait(0.5)
    end

    local statusTween = ""
    function WaitHRP(q0) 
        if not q0 then 
            return 
        end
        return q0.Character:WaitForChild("HumanoidRootPart", 9) 
    end

    local tween
    function topos(Pos)
        if game.Players.LocalPlayer.Character.Humanoid.Health > 0 and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if not Pos then 
                return 
            end
            if Distance <= 350 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            end
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 9)
            game.Players.LocalPlayer.Character:WaitForChild("Head", 9)
            if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Hold") then
                local Hold = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
                Hold.Name = "Hold"
                Hold.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                Hold.Velocity = Vector3.new(0, 0, 0)
            else
                game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Hold"):Destroy()
            end
            if not game.Players.LocalPlayer.Character:FindFirstChild("PartTele") then
                local PartTele = Instance.new("Part", game.Players.LocalPlayer.Character) -- Create part
                PartTele.Size = Vector3.new(10,1,10)
                PartTele.Name = "PartTele"
                PartTele.Anchored = true
                PartTele.Transparency = 1
                PartTele.CanCollide = false
                PartTele.CFrame = WaitHRP(game.Players.LocalPlayer).CFrame 
                PartTele:GetPropertyChangedSignal("CFrame"):Connect(function()
                    task.wait(0.01)
                    local hrp = WaitHRP(game.Players.LocalPlayer)
                    if hrp then
                        hrp.CFrame = PartTele.CFrame
                    end
                end)
            end
            if tween then
                tween:Cancel()
            end
            tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.PartTele, TweenInfo.new(Distance / TweenSpeed, Enum.EasingStyle.Linear),{CFrame = Pos})
            tween:Play()
            tween.Completed:Wait()
        end
    end

    function IsIslandRaid(cu)
        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. cu) then
            min = 4500
            for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                if
                    v.Name == "Island " .. cu and
                        (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min
                 then
                    min = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end
            for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                if
                    v.Name == "Island " .. cu and
                        (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min
                 then
                    return v
                end
            end
        end
    end

    function getNextIsland()
        for r, v in pairs({5, 4, 3, 2, 1}) do
            if IsIslandRaid(v) and (IsIslandRaid(v).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
                return IsIslandRaid(v)
            end
        end
    end

    function CheckIsRaiding()
        checkraid1 = game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true
        checkraid2 = getNextIsland()
        if checkraid1 then
            return checkraid1
        end
        return checkraid2
    end
-- Functions Official
--[[Library Gui]]--

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Gateng Hub - No Name " .. "Version 3",
    SubTitle = "by Flontium2",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 380),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

function Notify(content, dura)
    content = tostring(content)
    Fluent:Notify({
        Title = "Ganteng Hub - Notification",
        Content = content,
        SubContent = "",
        Duration = dura
    })
end

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    Sub = Window:AddTab({ Title = "Sub Tab", Icon = "captions"}),
    Necessary = Window:AddTab({ Title = "Necessary Tab", Icon = "swords"}),
    Status = Window:AddTab({ Title = "Status Tab", Icon = "trending-up"}),
}

local FarmLevel = Tabs.Main:AddToggle("FarmLevel", {Title = "Auto Farm Level", Default = false })

FarmLevel:OnChanged(function(Value)
    AutoFarmLv = Value
end)

function GetRandomTween(ck)
    local RandomL,R2 = math.random(30,100), math.random(10,40)
    return ck * CFrame.new(RandomL, 30, R2)
end

function RemoveLevelTitle(v)
    return tostring(tostring(v):gsub(" %pLv. %d+%p", ""):gsub(" %pRaid Boss%p", ""):gsub(" %pBoss%p", ""))
end 

function GetMobSpawnList(a)
    a = RemoveLevelTitle(a)
    k = {}
    for i, v in pairs(game.Workspace.MobSpawns:GetChildren()) do
        if v.Name == a then
            table.insert(k, v)
        end
    end
    return k
end

function Buso()
    if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
        local rel = game.ReplicatedStorage
        rel.Remotes.CommF_:InvokeServer("Buso")
    end
end
--//ken
function Ken()
    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true)
end
--- Equip 
function equip(tooltip)
    local player, character = game.Players.LocalPlayer, game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    for _, item in pairs(player.Backpack:GetChildren()) do
        if item:IsA("Tool") and item.ToolTip == tooltip then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and not humanoid:IsDescendantOf(item) then
                humanoid:UnequipTools()
                humanoid:EquipTool(item)
                return true
            end
        end
    end
    return false
end

function ResetTP(Pos)
    if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
        if (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
            for i = 1,3 do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            end
            task.wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
        end
    else
        ToTween(Pos)
    end
end

function GetTpNearest(Pos)
    pcall(function ()
        if (Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2800 then
            TpEntrance(Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125))
        else
            ResetTP(Pos)
        end
    end)
end

function VelocityEnemys(enemy)
    local humanoid = enemy.HumanoidRootPart or enemy:WaitForChild('HumanoidRootPart')
    if not humanoid then return end    
    humanoid.ChildAdded:Connect(function(child)
        if child:IsA("BodyVelocity") or child:IsA("BodyPosition") then
            child.MaxForce = Vector3.new(0, 0, 0)
            child.P = 0 
        elseif child:IsA("BodyGyro") then 
            child.P = 0 
            child.MaxTorque = Vector3.new(0, 0, 0)
        end
    end)
end
game.workspace.Characters.ChildAdded:Connect(loadplr)
function Bring(nameMob,BringC,DistanceF,radius)
    inputed = nameMob
    inputed2 = DistanceF
    inputed3 = radius
    inputed4 = BringC
    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v.Name == inputed and DetectingPart(v) and v.Humanoid.Health > 0 and inputed2.Magnitude <= inputed3 then
            VelocityEnemys(v)
            TweenObject(inputed4, v.HumanoidRootPart, 1400)
            v.HumanoidRootPart.Size = Vector3.new(4,4,4)
            v.Humanoid.JumpPower = 0
            v.Humanoid.WalkSpeed = 0
            if v.Humanoid:FindFirstChild("Animator") then
                v.Humanoid.Animator:Destroy()
            end
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
    end
end

function TweenObject(TweenCFrame,obj,ts)
    if not ts then ts = 350 end
    local tween_s = game:service "TweenService"
    local info = TweenInfo.new((TweenCFrame.Position -obj.Position).Magnitude /ts,Enum.EasingStyle.Linear)
    tween= tween_s:Create(obj,info,{CFrame=TweenCFrame})
    tween:Play() 
end	

function CheckEnemies(k, replicated)
    if not replicated then
        replicated = false
    end
    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
        if type(k) == "table" then
            if table.find(k, v.Name) and DetectingPart(v) and v.Humanoid.Health > 0 then
                return v
            end
        else
            if v.Name == k and DetectingPart(v) and v.Humanoid.Health > 0 then
                return v
            end
        end
    end
    if replicated then
        for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
            if type(k) == "table" then
                if table.find(k, v.Name) then
                    return v
                end
            else
                if v.Name == k then
                    return v
                end
            end
        end
    end
end

function DetectingPart(v1)
    return v1 and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid")
end

local KillMonster = function(mob,bringmobvalue,value)
    if CheckEnemies(mob) then
        local v = CheckEnemies(mob)
        task.spawn(function()
            if bringmobvalue == true then
                Bring(v.Name,v.HumanoidRootPart.CFrame,(v.HumanoidRootPart.Position - v.HumanoidRootPart.Position), 350)
            end
        end)
        if DetectingPart(v) and v.Humanoid.Health > 0 then
            repeat task.wait()
                Buso()
                equip("Melee")
                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
            until value or v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0
        end
    end
end

function GetQuest()
    local Distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest().Position).Magnitude
    if Distance <= 20 then
        game.ReplicatedStorage.Remotes["CommF_"]:InvokeServer("StartQuest", tostring(CheckDoubleQuestSkidcuaYMF().Mob2), CheckDoubleQuestSkidcuaYMF().ID)
    else
        topos(CFrameQuest())
    end
end

function CheckBossCake()
    for _,Boss in pairs(game.Workspace.Enemies:GetChildren()) do
        if Boss.Name == "Cake Prince" or Boss.Name == "Dough King" and DetectingPart(Boss) and Boss.Humanoid.Health > 0 then
            return Boss
        end
    end
    for _,Boss in pairs(game.ReplicatedStorage:GetChildren()) do
        if Boss.Name == "Cake Prince" or Boss.Name == "Dough King" then
            return Boss
        end
    end
end

function sendkey(bt)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, bt, false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, bt, true, game)
end

spawn(function ()
    while task.wait() do
        if AutoFarmLv == true then
            if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible then
                if not MobLevel1OrMobLevel2() then
                    for i, v in pairs(GetMobSpawnList(GetMob())) do
                        pcall(function()
                            if not MobLevel1OrMobLevel2() and AutoFarmLv then
                                topos(GetRandomTween(v.CFrame))
                            end
                        end)
                    end
                else
                    pcall(function()
                        for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == MobLevel1OrMobLevel2() and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
                                repeat task.wait()
                                    KillMonster(v.Name, true, AutoFarmLv == false)
                                until not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or not AutoFarmLv
                            end
                        end
                    end)
                end
            else
                GetQuest()
            end
        end
    end
end)

if Third_Sea then
    local AutoFarmBone = Tabs.Main:AddToggle("AutoFarmBone", {Title = "Auto Farm Bone", Default = false })

    AutoFarmBone:OnChanged(function(Value)
        AutoFarmBone = Value
    end)

    task.spawn(function()
        while task.wait() do
            if AutoFarmBone then
                local table_BoneMobs = {"Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy"}
                if CheckEnemies(table_BoneMobs) then
                    local v = CheckEnemies(table_BoneMobs)
                    if v and DetectingPart(v) and v.Humanoid.Health > 0 then
                        pcall(function()
                            repeat task.wait()
                                KillMonster(v.Name, true, AutoFarmBone == false)
                            until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or AutoFarmBone == false
                        end)
                    end
                else
                    if (CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                        GetTpNearest(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                    else
                        topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                    end
                end
            end
        end
    end)

    local AutoFarmKata = Tabs.Main:AddToggle("AutoFarmKata", {Title = "Auto Farm Kata", Default = false })

    AutoFarmKata:OnChanged(function(Value)
        AutoFarmKata = Value
    end)

    task.spawn(function()
        while task.wait() do
            if AutoFarmKata == true then
                local table_CakeMobs = {"Cookie Crafter","Cake Guard","Baking Staff","Head Baker"}
                local table_CakePrinceBosses = {"Dough King","Cake Prince"}
                if CheckBossCake() then
                    if (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1700 then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace").Map.CakeLoaf.BigMirror.Main.TouchInterest, 0)
                    else
                        local v = CheckBossCake()
                        pcall(function()
                            repeat task.wait()
                                KillMonster(v.Name, false, AutoFarmKata == false)
                            until not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or AutoFarmKata == false
                        end)
                    end
                elseif CheckEnemies(table_CakeMobs) then
                    local v = CheckEnemies(table_CakeMobs)
                    pcall(function()
                        repeat task.wait()
                            KillMonster(v.Name, true, AutoFarmKata == false)
                        until not v or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health <= 0 or AutoFarmKata == false
                    end)
                else
                    if (CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                        GetTpNearest(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                    else
                        topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                    end
                end
            end
        end
    end)
end

local TurnV3 = Tabs.Settings:AddToggle("TurnV3", {Title = "Auto Turn on V3", Default = false })

TurnV3:OnChanged(function(Value)
    TurnOnV3 = Value
end)

local TurnV4 = Tabs.Settings:AddToggle("TurnV4", {Title = "Auto Turn on V4", Default = false })

TurnV4:OnChanged(function(Value)
    TurnOnV4 = Value
end)

spawn(function ()
    while wait() do
        if TurnOnV3 then
            sendkey("T")
        end
        if TurnOnV4 then
            if game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and not game.Players.LocalPlayer.Character.RaceTransformed.Value then
                sendkey("Y")
            end
        end
    end
end)

Tabs.Settings:AddParagraph({
    Title = "Setting Functions",
    Content = ""
})

local TSP = Tabs.Settings:AddSlider("TSP", {
    Title = "Tween Speed",
    Description = "",
    Default = 300,
    Min = 250,
    Max = 400,
    Rounding = 1,
    Callback = function(Value)
        TweenSpeed = Value
    end
})

TSP:OnChanged(function(Value)
    TweenSpeed = Value
end)

local OpenDimension = Tabs.Settings:AddToggle("OpenDimension", {Title = "Auto Open Dimension Cake Prince", Default = false })

OpenDimension:OnChanged(function(Value)
    OpenDimension = Value
end)

task.spawn(function()
    while wait() do
        if OpenDimension then
            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true):find("open the portal now") then
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
            end
        end
    end
end)    
--Function Tab Sub--
--[[Ganteng Hub - Sub Functions]]--

local SoulReaper = Tabs.Sub:AddToggle("AutoSR", {Title = "Auto Soul Repear", Default = false })

SoulReaper:OnChanged(function(Value)
    AutoSR = Value
end)

function CheckItemBPCR(name)
    chbp = {game.Players.LocalPlayer.Character,game.Players.LocalPlayer.Backpack}
    for i, v in pairs(chbp) do
        if v:FindFirstChild(name) then
            return v:FindFirstChild(name)
        end
    end
end

function GetDistance(Pos1, Pos2)
    if not Pos2 then
        Pos2 = game.Players.LocalPlayer.Character.HumanoidRootPart
    end
    if not Pos1 then return end
    return (Pos1.Position - Pos2.Position).Magnitude
end

task.spawn(function()
    while task.wait() do
        if AutoSR == true then
            if CheckEnemies("Soul Reaper") then
                local v = CheckEnemies("Soul Reaper")
                repeat task.wait()
                    KillMonster(v.Name, false, AutoSR == false)
                until not v or v.Humanoid.Health <= 0 or AutoSR == false
            else
                if CheckItemBPCR("Hallow Essence") then
                    topos(CFrame.new(-8930.6083984375, 144.92068481445312, 6066.2236328125))
                    if GetDistance(CFrame.new(-8930.6083984375, 144.92068481445312, 6066.2236328125)) <= 20 then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, game.Workspace.Map["Haunted Castle"].Detection.TouchInterest, 0)
                    end
                end
            end
        end
    end
end) 

local AutoRipIndra = Tabs.Sub:AddToggle("AutoRipIndra", {Title = "Auto Rip Indra [Sea 3]", Default = false })

AutoRipIndra:OnChanged(function(Value)
    AutoRipIndra = Value
end)

task.spawn(function()
    while task.wait() do
        if AutoRipIndra then
            local v = CheckEnemies("rip _indra True Form") or CheckEnemies("rip_indra")
            if Third_Sea then
                repeat task.wait()
                    KillMonster(v.Name, false, AutoRipIndra == false)
                until not v or v.Humanoid.Health <= 0 or AutoRipIndra == false
            else
                if CheckItemBPCR("God's Chalice") then
                    TpEntrance(Vector3.new(-5069.121, 314.541, -3000.467))
                    wait(2)
                    equip("God's Chalice")
                    topos(CFrame.new(-5560.22998046875, 313.9412536621094, -2664.19921875))
                end
            end
        end
    end
end)

local AutoCyborg = Tabs.Sub:AddToggle("AutoCyborg", {Title = "Auto Cyborg [Sea 2]", Default = false })

AutoCyborg:OnChanged(function(Value)
    AutoCyborg = Value
end)

function BuyChipLaw()
    v354 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2")
    if v354 == 1 then
        return true
    end
    if v354 == 0 then
        return false
    end
    if v354 == 2 then
        return true
    end
end

task.spawn(function()
    while task.wait() do
        if AutoCyborg then
            Check_Cyborg = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Check")
            Buy_Cyborg =  game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy")
            if Check_Cyborg == 2 then
                break
            end
            if not Check_Cyborg then
                if not game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector.CanCollide then
                    return Buy_Cyborg
                else
                    if CheckItemBPCR("Core Brain") then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                    else
                        if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckBlockPart") then
                        elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckBlockPart") then
                            if CheckEnemies(RemoveLevelTitle("Order [Lv. 1250] [Raid Boss]")) then
                                local v = CheckEnemies(RemoveLevelTitle("Order [Lv. 1250] [Raid Boss]"))
                                KillMonster(v.Name, false, AutoCyborg == false)
                            else
                                if not CheckItemBPCR("Microchip") and game.Players.LocalPlayer.Data.Fragments.Value >= 1000 then
                                    BuyChipLaw()
                                elseif CheckItemBPCR("Microchip") then
                                    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                                end
                            end
                        else
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end
    end
end)



--Function Tab Necessary--
--[[Ganteng Hub - Necessary Functions]]--

--Function Tab Status--
--[[Ganteng Hub - Status Functions]]--

function CheckRace()
    local bf = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
    local c4 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
    if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V4"
    end
    if bf == -2 then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V3"
    end
    if c4 == -2 then
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V2"
    end
    return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V1"
end

function Check_Summon_Cake()
    local c = tonumber(string.match(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner", true), "%d+"))
    if c then
        return "Sumoon Kata Remaning: " .. c
    elseif CheckBossCake() then
        return "Boss Already Spawned!"
    else
        return "Summon Kata Remaning: None"
    end
end

local CP = Tabs.Status:AddParagraph({ Title = "Cake Prince Status", Content = "None"})
local Bone = Tabs.Status:AddParagraph({ Title = "Bone Status", Content = "None"})
local PlayerPara = Tabs.Status:AddParagraph({ Title = "Player Status", Content = "None"})

task.spawn(function()
    while task.wait() do
        CP:SetDesc(tostring(Check_Summon_Cake()))
        Bone:SetDesc("Bone Inventory: ".. tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Bones", "Check")))
        PlayerPara:SetDesc("Your Race Version: ".. CheckRace())
    end
end)
-- Function Fast Attack--
--[[Fast Attack Beta Functions]]--
local fastattack = 0
getgenv().FastAttack = true
    task.spawn(function()
        while wait() do
            if getgenv().FastAttack == true then
                fastattack = 0.17
            end
        end
    end)
    local RunService = game:GetService("RunService")
    local CombatFramework = require(game.Players.LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
    local CombatFrameworkR = debug.getupvalues(CombatFramework)[2]
    BladeHits = function(Value)
        local Hits = {}
        for _, Hit in ipairs(game.Workspace.Enemies:GetChildren()) do
            local Humanoid = Hit and Hit:FindFirstChildOfClass("Humanoid")
            if Humanoid and Humanoid.Health > 0 then
                local RootPart = Humanoid.RootPart
                if RootPart and game.Players.LocalPlayer:DistanceFromCharacter(RootPart.Position) < Value then
                    table.insert(Hits, RootPart)
                end
            end
        end
        return Hits
    end
    PlayerHits = function(Value)
        local Hits = {}
        for _, Char in ipairs(game.Workspace.Characters:GetChildren()) do
            if Char.Name ~= game.Players.LocalPlayer.Name then
                local Humanoid = Char and Char:FindFirstChildOfClass("Humanoid")
                if Humanoid and Humanoid.RootPart and Humanoid.Health > 0 then
                    if game.Players.LocalPlayer:DistanceFromCharacter(Humanoid.RootPart.Position) < Value then
                        table.insert(Hits, Humanoid.RootPart)
                    end
                end
            end
        end
        return Hits
    end
    AddAttack = function(Hit)
        local ac = CombatFrameworkR.activeController
        if ac and ac.equipped then
            if #Hit > 0 then
                local agrs1 = getupvalue(ac.attack, 5)
                local agrs2 = getupvalue(ac.attack, 6)
                local agrs3 = getupvalue(ac.attack, 4)
                local agrs4 = getupvalue(ac.attack, 7)
                local agrs5 = (agrs1 * 798405 + agrs3 * 727595) % agrs2
                local agrs6 = agrs3 * 798405
                agrs5 = (agrs5 * agrs2 + agrs6) % 1099511627776
                agrs1 = math.floor(agrs5 / agrs2)
                agrs3 = agrs5 - agrs1 * agrs2
                agrs4 = agrs4 + 1
                setupvalue(ac.attack, 5, agrs1)
                setupvalue(ac.attack, 6, agrs2)
                setupvalue(ac.attack, 4, agrs3)
                setupvalue(ac.attack, 7, agrs4)
                local Blade = ac.currentWeaponModel
                if Blade then
                    game.ReplicatedStorage.RigControllerEvent:FireServer("weaponChange", Blade.Name)
                    ac.animator.anims.basic[1]:Play(0.01, 0.01, 0.01)
                    game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(agrs5 / 1099511627776 * 16777215), agrs4)
                    game.ReplicatedStorage.RigControllerEvent:FireServer("hit", Hit, 1, "")
                end
            end
        end
    end
    AttackFunc = function()
        AddAttack(BladeHits(65))
        AddAttack(PlayerHits(65))
    end
    task.spawn(function()
        while task.wait() do
            if getgenv().CurrentlyFast then
                pcall(function()
                    local controller = CurveFrame.activeController
                    controller.timeToNextAttack = -1
                    controller.focusStart = 0
                    controller.hitboxMagnitude = 40
                    controller.humanoid.AutoRotate = true
                    controller.increment = 2          
                    game:GetService("VirtualUser"):Button1Down(Vector2.new())
                    game:GetService("VirtualUser"):Button1Up(Vector2.new())      
                end)
            end
        end
    end)
    local Tick = tick()
    local Delay = fastattack
    DetectFastAttack = function()
        task.spawn(function()
            while task.wait() do 
                if (tick() - Tick) >= math.clamp(Delay, 0.100, 1) then
                    task.spawn(AttackFunc)
                    getgenv().CurrentlyFast = true
                    Tick = tick()
                end
            end 
        end)
    end
    DetectFastAttack()

local ScreenGui = Instance.new("ScreenGui")
local icon = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

icon.Name = "icon"
icon.Parent = ScreenGui
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
icon.BorderSizePixel = 0
icon.Position = UDim2.new(0.0922165811, 0, 0.216599196, 0)
icon.Size = UDim2.new(0, 68, 0, 66)
icon.Image = "http://www.roblox.com/asset/?id=15006559003"
icon.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,"LeftControl",false,game)
	game:GetService("VirtualInputManager"):SendKeyEvent(false,"LeftControl",false,game)
end)
icon.Draggable = true
UICorner.CornerRadius = UDim.new(0, 94)
UICorner.Parent = icon

Notify("Loaded Script Successfully!", 5)
Window:SelectTab(1)
SaveManager:IgnoreThemeSettings()
SaveManager:LoadAutoloadConfig()
-- Functions Remove Effect --
--[[Loading Has Source]]--
loadstring(game:HttpGet("https://hvauto.click/raw/Destroy-Effect.txt"))()
