-- Utility.lua (OffBrandsZickoi - Roblox, liablelua - Discord)

if string.find(identifyexecutor(), "Wave") and getidentity() <= 6 then 
    return
end

print([[
    Utility Stable v2.1
    contact liablelua if any bugs
    
    Contributors:
    Trax (traxxy123)
    RazAPIx64.dll (razzoni)
	xyzkade (xyzkade)

    Changelog:
    Optimizations and more stuff by xyzkade!
    Character functions! (swim, speed, jump, sit)
    UNC test! (unc)

    (v2.1): Blocked Wave + Level 6 and under executors.
]])

NukeUtility = function()
    _G.UtilityLoaded = nil
    _G.UtilityStorage = nil
    _G.Hooks = nil

	table.clear(_G.Remotes) -- free the memory!
    _G.Remotes = {}
    time = nil
    hook = nil
    unhook = nil
    remotescan = nil
    key = nil
    prompt = nil
    notification = nil
    uload = nil
    headshot = nil
    logs = nil
    test = nil
end

time = function()
    local CurTime = os.date("!*t")
    local hour = CurTime.hour
    local minute = CurTime.min
    local second = CurTime.sec
    return "["..hour..":"..minute..":"..second.."]"
end

-- Don't mind "time" it's used for logging certain things and whatnot.

--NukeUtility() -- Uncomment if your testing Utility Source

local players = game:FindFirstChildOfClass("Players") -- faster + better to be defined

local v = "stable-d1175011b6a984c836e456f81ede0e23"
local update = string.gsub(game:HttpGet("https://raw.githubusercontent.com/liablelua/Utility/main/version_update.txt"), "^%s*(.-)%s*$", "%1")

if update ~= v then
    warn("⚠️ Important changes could of been made to Utility, update ASAP!!")
end

if _G.UtilityLoaded ~= nil then
    if typeof(_G.UtilityLoaded) == "boolean" then
        if _G.UtilityLoaded then
            print("Utility is already loaded.")
        else
            print("Utility is loading.")
        end
    else
        error("Utility failed to load the first time, perhaps restart Roblox?")
    end
else
    local AntiTamper = {}
    _G.UtilityLoaded = false
    _G.UtilityStorage = {}
    _G.Hooks = {}
    _G.Remotes = {}
    plr = players.LocalPlayer
    
    table.insert(_G.UtilityStorage, time()..": Utility started.")

    hook = function(rem, func)
        if _G.Hooks[rem.Name] == nil then
            table.insert(_G.UtilityStorage, time()..": Used hook on "..rem.Name..".")
            _G.Hooks[rem.Name] = rem.OnClientEvent:Connect(func)
        end
    end
    
    unhook = function(rem, func)
        if _G.Hooks[rem.Name] then
            table.insert(_G.UtilityStorage, time()..": Removed hook on "..rem.Name..".")
            _G.Hook[rem.Name] = nil
        end
    end

    remotescan = function(scan, deep)
        table.insert(_G.UtilityStorage, time()..": Used Remote Scan on "..scan.Name..".")
        local Children = scan:GetChildren()

        for _, b in Children do
            table.insert(_G.UtilityStorage, time()..": Scanned: "..b.Name..".")
            print(b.Name .. " | " .. b.ClassName)
            if deep ~= nil then
                if typeof(deep) == "boolean" then
                    for _, d in b:GetChildren() do
                        table.insert(_G.UtilityStorage, time()..": Scanned: "..d.Name..".")
                        print(d.Name .. " | " .. d.ClassName)
                    end
                else
                    break
                end
            end
        end
    end
    
    scanall = function(f)
        table.insert(_G.UtilityStorage, time()..": Scanning, "..f.Name..".")
        for _, v in f:GetChildren() do
            if v:IsA("Folder") then
                scanall(v)
            elseif v:IsA("RemoteEvent") then
                table.insert(_G.Remotes, v)
            end
        end
    end
    
    key = function(keyInput, keyWeb)
        table.insert(_G.UtilityStorage, time()..": Key system loaded.")

        local theKey = string.gsub(game:HttpGet(keyWeb), "^%s*(.-)%s*$", "%1")

        if theKey == keyInput then
            return true
        else
            return false
        end
    end
    
    prompt = function(text, cancel, accept, cfunc, afunc)
        table.insert(_G.UtilityStorage, time()..": Prompt loaded.")

        local prompt = Instance.new("ScreenGui")
		local Frame = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Frame_2 = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		local TextLabel2 = Instance.new("TextLabel")
		local TextButton = Instance.new("TextButton")
		local UICorner_2 = Instance.new("UICorner")
		local TextButton2 = Instance.new("TextButton")
		local UICorner_3 = Instance.new("UICorner")
		local UISizeConstraint = Instance.new("UISizeConstraint")

		prompt.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Frame.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
		Frame.BackgroundTransparency = 0.5
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
		Frame.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)

		Frame_2.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
		Frame_2.BackgroundTransparency = 0.5
		Frame_2.BorderSizePixel = 0
		Frame_2.Position = UDim2.new(0, 0, 0.200000003, 0)
		Frame_2.Size = UDim2.new(1, 0, 0, 2)
		Frame_2.ZIndex = 2

		TextLabel.BackgroundTransparency = 1
		TextLabel.Position = UDim2.new(0, 0, 8.70190391e-08, 0)
		TextLabel.Size = UDim2.new(0, 350, 0, 35)
		TextLabel.Font = Enum.Font.BuilderSans
		TextLabel.Text = "Prompt"
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14
		TextLabel.TextWrapped = true

		TextLabel2.BackgroundTransparency = 1
		TextLabel2.Position = UDim2.new(8.70190391e-08, 0, 0.24522391, 0)
		TextLabel2.Size = UDim2.new(0, 350, 0, 74)
		TextLabel2.Font = Enum.Font.BuilderSans
		TextLabel2.Text = text
		TextLabel2.TextColor3 = Color3.new(1, 1, 1)
		TextLabel2.TextSize = 14
		TextLabel2.TextWrapped = true

		TextButton.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
		TextButton.BackgroundTransparency = 0.5
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(0.0251197852, 0, 0.666999996, 0)
		TextButton.Size = UDim2.new(0.449999988, 0, 0.300000012, 0)
		TextButton.Font = Enum.Font.BuilderSansExtraBold
		TextButton.Text = cancel
		TextButton.TextColor3 = Color3.new(1, 1, 1)
		TextButton.TextSize = 14

		TextButton2.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
		TextButton2.BackgroundTransparency = 0.5
		TextButton2.BorderSizePixel = 0
		TextButton2.Position = UDim2.new(0.520727217, 0, 0.666999996, 0)
		TextButton2.Size = UDim2.new(0.449999988, 0, 0.300000012, 0)
		TextButton2.Font = Enum.Font.BuilderSansExtraBold
		TextButton2.Text = accept
		TextButton2.TextColor3 = Color3.new(1, 1, 1)
		TextButton2.TextSize = 14

		UISizeConstraint.MaxSize = Vector2.new(350, 175)
		UISizeConstraint.MinSize = Vector2.new(350, 175)

		UICorner_2.Parent = TextButton
		UISizeConstraint.Parent = Frame
		UICorner_3.Parent = TextButton2
		TextButton2.Parent = Frame
		TextButton.Parent = Frame
		TextLabel2.Parent = Frame
		TextLabel.Parent = Frame
		Frame_2.Parent = Frame
		UICorner.Parent = Frame
		Frame.Parent = prompt
		prompt.Parent = gethui()
		
        TextButton.MouseButton1Down:Once(function()
			prompt:Destroy()
            cfunc()
		end)
		TextButton2.MouseButton1Down:Connect(function()
            prompt:Destroy()
            afunc()
        end)
    end
    
    notification = function(text, time)
        table.insert(_G.UtilityStorage, time()..": Notification loaded.")

		local notif = Instance.new("ScreenGui")
		local Frame2 = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Frame = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		local TextLabel2 = Instance.new("TextLabel")
		local UISizeConstraint = Instance.new("UISizeConstraint")
		
		notif.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Frame2.Parent = notif
		Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame2.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
		Frame2.BackgroundTransparency = 0.5
		Frame2.BorderSizePixel = 0
		Frame2.Position = UDim2.new(0.5, 0, 0.150000006, 0)
		Frame2.Size = UDim2.new(0.300000012, 0, 0.185211286, 0)
		
		Frame.BackgroundColor3 = Color3.new(0.513726, 0.513726, 0.513726)
		Frame.BackgroundTransparency = 0.5
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0, 0, 0.200000003, 0)
		Frame.Size = UDim2.new(1, 0, 0, 1)
		
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(8.70190391e-08, 0, 9.78964181e-08, 0)
		TextLabel.Size = UDim2.new(0, 350, 0, 24)
		TextLabel.Font = Enum.Font.BuilderSans
		TextLabel.Text = "Notification"
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14
		TextLabel.TextWrapped = true
		
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.Position = UDim2.new(8.70190391e-08, 0, 0.24522391, 0)
		TextLabel2.Size = UDim2.new(0, 350, 0, 74)
		TextLabel2.Font = Enum.Font.BuilderSans
		TextLabel2.Text = text
		TextLabel2.TextColor3 = Color3.new(1, 1, 1)
		TextLabel2.TextSize = 14
		TextLabel2.TextWrapped = true
		
		UISizeConstraint.MaxSize = Vector2.new(350, 116)
		UISizeConstraint.MinSize = Vector2.new(350, 116)
		
		UISizeConstraint.Parent = Frame2
		TextLabel2.Parent = Frame2
		TextLabel.Parent = Frame2
		UICorner.Parent = Frame2
		Frame.Parent = Frame2
		notif.Parent = gethui()

        task.delay(time, function()
			notif:Destroy()
		end)
    end

    registerTampers = function(variables)
        table.insert(_G.UtilityStorage, time()..": Registered tamper variables.")
        for i, v in variables do
            AntiTamper[i] = v
        end
    end

    updateTamper = function(var,upd)
        table.insert(_G.UtilityStorage, time()..": Updated tamper variables.")
        AntiTamper[var] = upd
    end

    checkTamper = function(vars)
        table.insert(_G.UtilityStorage, time()..": Tamper check started.")
        local Tampered = false
        for i, v in vars do
            if not (AntiTamper[i] == v and v == vars[i]) then
                table.insert(_G.UtilityStorage, time()..": The variables were tampered with.")
                Tampered = true
            end
        end
        return Tampered
    end
    
    uload =  function(x)
        table.insert(_G.UtilityStorage, time()..": uload used for link: "..x..".")
        return loadstring(readfile(x))
    end
    
    headshot = function(id) 
        table.insert(_G.UtilityStorage, time()..": Headshot used for UID: "..tostring(id)..".")
        local HeadShot = players:GetUserThumbnailAsync(id,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size420x420)
        return HeadShot
    end

    logs = function(ret)
        if ret ~= nil then
            if ret then
                return _G.UtilityStorage
            end
        end
        for i = 1, #_G.UtilityStorage do
            print(_G.UtilityStorage[i])
        end
    end

    antiskid = function(scOwner,scValue)
        table.insert(_G.UtilityStorage, time()..": Anti-Skid Protection Ran.")
        if scValue ~= scOwner then
            task.spawn(function()
                while task.wait() do
                    NukeUtility()
                end
            end)
            task.wait(2)
            plr:Kick("❎ THE OWNER OF THIS SCRIPT IS A SKID ❎ [Kicked by Utility Anti-Skid]")
        end
    end

    speed = function(plr,val)
        plr.Character.Humanoid.WalkSpeed = val
    end

    jump = function(plr,val)
        plr.Character.Humanoid.JumpPower = val
    end

    sit = function(plr)
        plr.Character.Humanoid.Sit = not plr.Character.Humanoid.Sit
    end

    swim = function(plr)
        if plr.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Swimming then
            plr.Character.Humanoid:SetStateEnabled("GettingUp", false)
            plr.Character.Humanoid:ChangeState("Swimming")
        else
            plr.Character.Humanoid:SetStateEnabled("GettingUp", true)
        end
    end

    unc = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua"))()
    end
    
    test = function()
        table.insert(_G.UtilityStorage, time()..": Started compatibility test.")
        if hook ~= nil then print("✅ hook function") else print("❎ hook function") end
        if unhook ~= nil then print("✅ unhook function") else print("❎ unhook function") end
        if remotescan ~= nil then print("✅ remotescan function") else print("❎ remotescan function") end
        if key ~= nil then print("✅ key function") else print("❎ key function") end
        if prompt ~= nil then print("✅ prompt function") else print("❎ prompt function") end
        if notification ~= nil then print("✅ notification function") else print("❎ notification function") end
        if headshot ~= nil then print("✅ headshot function") else print("❎ headshot function") end
        if logs ~= nil then print("✅ logs function") else print("❎ logs function") end
        if antiskid ~= nil then print("✅ antiskid function") else print("❎ antiskid function") 
            task.spawn(function()  
                while task.wait(1) do
                    NukeUtility()
                end
            end)
            task.wait(2)
            plr:Kick("⚠️ THIS SKID THOUGHT HE COULD BYPASS ANTISKID? ⚠️")
        end
        if NukeUtility ~= nil then print("✅ NukeUtility function") else print("❎ NukeUtility function") 
            task.spawn(function()  
                while task.wait(1) do
                    NukeUtility()
                end
            end)
            task.wait(2)
            plr:Kick("⚠️ THIS SKID THOUGHT HE COULD BYPASS ANTISKID? ⚠️")
        end
        if checkTamper ~= nil and updateTamper ~= nil and registerTampers ~= nil then print("✅ Tamper functions") else print("❎ Tamper functions") 
            task.spawn(function()  
                while task.wait(1) do
                    NukeUtility()
                end
            end)
            task.wait(2)
            plr:Kick("⚠️ THIS SKID THOUGHT HE COULD BYPASS ANTISKID? ⚠️")
        end
        table.insert(_G.UtilityStorage, time()..": Finished compatibility test.")
    end

    -- Final Anti-Skid measures (unbypassable?)

    task.spawn(function()
        while task.wait(10) do
            if antiskid == nil or NukeUtility == nil or test == nil or checkTamper == nil or updateTamper == nil or registerTampers == nil then
                _G.UtilityLoaded = nil
                _G.UtilityStorage = nil
                _G.Hooks = nil
                _G.Remotes = {}
                time = nil
                hook = nil
                unhook = nil
                remotescan = nil
                key = nil
                prompt = nil
                notification = nil
                uload = nil
                headshot = nil
                logs = nil
                test = nil
                task.wait(2)
                plr:Kick("⚠️ THIS SKID THOUGHT HE COULD BYPASS ANTISKID? ⚠️")
            end
        end
    end)
    
    table.insert(_G.UtilityStorage, time()..": Utility loaded.")

    test()

    _G.UtilityLoaded = true
end
