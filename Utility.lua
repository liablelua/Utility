-- Utility.lua (OffBrandsZickoi - Roblox, therealautoimi - Discord)

print([[

    Utility Unstable (No Set Version, Use At Risk.)
    contact _xpluv if any bugs
    
    Contributors:
    Trax (traxxy123)
    
]])

UnloadUtility = function()
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
    test = nil
end

time = function()
    local os = os.date("!*t")
    local hour = os.hour
    local minute = os.min
    local second = os.sec
    return "["..hour..":"..minute..":"..second.."]"
end

-- Don't mind "time" it's used for logging certain things and whatnot.

UnloadUtility() -- Uncomment if your testing Utility Source

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
    _G.UtilityLoaded = false
    _G.UtilityStorage = {}
    _G.Hooks = {}
    _G.Remotes = {}
    plr = game.Players.LocalPlayer
    
    table.insert(_G.UtilityStorage, time()..": Utility started.")

    hook = function(rem, func)
        if _G.Hooks[rem.Name] ~= nil then
            warn("Theres already a Hook for that! Unhook it to proceed!")
        else
            table.insert(_G.UtilityStorage, time()..": Used hook on "..rem.Name..".")
            _G.Hooks[rem.Name] = rem.OnClientEvent:Connect(func)
        end
    end
    
    unhook = function(rem, func)
        if _G.Hooks[rem.Name] then
            table.insert(_G.UtilityStorage, time()..": Removed hook on "..rem.Name..".")
            _G.Hook[rem.Name] = nil
        else
            warn("Theres no hook for that Remote.")
        end
    end

    remotescan = function(scan, deep)
        table.insert(_G.UtilityStorage, time()..": Used Remote Scan on "..scan.Name..".")
        local Children = scan:GetChildren()
        for a, b in pairs(Children) do
            table.insert(_G.UtilityStorage, time()..": Scanned: "..b.Name..".")
            print(b.Name .. " | " .. b.ClassName)
            if deep ~= nil then
                if typeof(deep) == "boolean" then
                    for c, d in pairs(b:GetChildren()) do
                        table.insert(_G.UtilityStorage, time()..": Scanned: "..d.Name..".")
                        print(d.Name .. " | " .. d.ClassName)
                    end
                else
                    error("Type 'deep' isn't a boolean.")
                    break
                end
            end
        end
    end
    
    scanall = function(f)
        -- specifically for my remote spy (when hookfunction get added) but will do with my hook method for local remotes
        -- DONT USE IN PRODUCTION
        for i, v in pairs(f:GetChildren()) do
            if v:IsA("Folder") then
                scanall(v)
            elseif v:IsA("RemoteEvent") then
                table.insert(_G.Remotes, v)
            end
        end
    end
    
    key = function(keyInput, keyWeb)
        local theKey = string.gsub(game:HttpGet(keyWeb), "^%s*(.-)%s*$", "%1")
        if theKey == keyInput then
            return true
        else
            return false    
        end
    end
    
    prompt = function(text, cancel, accept, cfunc, afunc)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/liablelua/Utility/main/prompt.lua"))()
        wait(0.2)
        local Prompt = plr.PlayerGui.prompt
        local Frame = Prompt.Frame
        Frame.TextLabel2.Text = text
        Frame.TextButton.Text = cancel
        Frame.TextButton2.Text = accept
        Frame.TextButton.MouseButton1Down:Connect(function()
            Prompt:Destroy()
            cfunc()
        end)
        Frame.TextButton2.MouseButton1Down:Connect(function()
            Prompt:Destroy()
            afunc()
        end)
    end
    
    notification = function(text,time)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/liablelua/Utility/main/notification.lua"))()
        wait(0.2)
        local Notif = plr.PlayerGui.notif
        local Frame = Notif.Frame2
        Frame.TextLabel2.Text = text
        wait(time)
        Notif:Destroy()
    end

    logs = function()
        for i = 1, #_G.UtilityStorage do
            print(_G.UtilityStorage[i])
        end
    end
    
    test = function()
        table.insert(_G.UtilityStorage, time()..": Started compatibility test.")
        if hook ~= nil then print("✅ hook function") else print("❎ hook function") end
        if unhook ~= nil then print("✅ unhook function") else print("❎ unhook function") end
        if remotescan ~= nil then print("✅ remotescan function") else print("❎ remotescan function") end
        if key ~= nil then print("✅ key function") else print("❎ key function") end
        if prompt ~= nil then print("✅ prompt function") else print("❎ prompt function") end
        if notification ~= nil then print("✅ notification function") else print("❎ notification function") end
        if logs ~= nil then print("✅ logs function") else print("❎ logs function") end
        table.insert(_G.UtilityStorage, time()..": Finished compatibility test.")
    end
    
    table.insert(_G.UtilityStorage, time()..": Utility loaded.")

    _G.UtilityLoaded = true
end
