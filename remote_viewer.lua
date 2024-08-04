-- Local Remote Viewer v1.0.2

loadstring(game:HttpGet("https://raw.githubusercontent.com/liablelua/Utility/main/Utility.lua"))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "_xpluv's rviewer", HidePremium = false, SaveConfig = false, ConfigFolder = "rspy"})

local Tab = Window:MakeTab({
	Name = "Remote Viewer",
	Icon = "rbxassetid://10851817259",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Remotes"
})

-- scan everything (ez just added to Utility)

scanall(game.ReplicatedStorage)

print("Scanning all")

wait(2)

print("Got all")

-- remote sigma

for i = 1, #_G.Remotes do
    Tab:AddButton({
	    Name = _G.Remotes[i].Name,
	    Callback = function()
      		spy = function()
      		    notification("spying on remote now.",1)
      		    hook(_G.Remotes[i], function(args) print(args) notification("check console for ".._G.Remotes[i].Name.."'s response",2) end)
      		end
      		
      		unspy = function()
      		    notification("unspying on remote now.",1)
      		    unhook(_G.Remotes[i])
      		end
      		
      		prompt("Spy on this Remote?", "Cancel", "Confirm", unspy, spy)
  	    end    
    })
end
