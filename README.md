<b>Disclaimer: Utility is not ready for production, I don't recommend using any code here YET until I'm finished with Utility.</b>
# Warning
To run <b>Utility</b> you should use <a href="https://celery.zip">Celery</a> to inject/execute this script.
![image](https://github.com/user-attachments/assets/5980f896-70d1-4f5d-b93d-7fe775039957)
# Functions
## hook
Hook is basically hookfunction but for Client Remotes. Let me teach you how its done.<br>
Run it from source!
```lua
hook = function(rem, func)
  rem.OnClientEvent:Connect(func)
end
```
Well.. Nothing happened? Try to run it with a remote.
```lua
hook(game.ReplicatedStorage.REMOTEAREA, function(args)
    if typeof(args) ~= "table" then
        for i, v in pairs(args) do
            print(i .. " | " .. v)
        end
    else
        print(args .. " (typeof=" .. typeof(args) .. ")")    
    end
end)
```
Get the remote to fire, and boom. Results! Any errors? Well scroll down to the Troubleshooting area.<br>
Now you know how to hook Client Remotes like a pro!
## remotescan
Remote Scanning is an easy way to hook onto a remote, and it will be awesome when Celery has hookfunction.<br>
Run it from source!
```lua
remotescan = function(scan)
  local Children = scan:GetChildren()
  for a, b in pairs(Children) do
    print(b.Name .. " | " .. b.ClassName)
  end
end
```
Now you may notice if you looked at Utility from source that deep isn't included. We don't really need deep if we are playing around with functions!!<br>
Lets run it with some context.
```lua
remotescan(game.ReplicatedStorage)
```
Lets say I found a 'Remotes' folder. Lets scan it.
```lua
remotescan(game.ReplicatedStorage.Remotes)
```
I found 'InvUpd'! That must mean Updating the Inventory, which (should) be client-sided!
```lua
hook(game.ReplicatedStorage.InvUpd, function(args)
    print("Item Update")
    print(args)
end)
```
Happy findings! 👆
### Other not important functions
time() -- Get Current Time<br>test() -- Like a UNC test, but your checking if your functions are up-to-date, only checks the BIG functions not the "not important" functions.
### Logs and allat
Utility has LOG SUPPORT 🎉<br>
Logs are automatically enabled, go ahead check them:
```lua
for i = 1, #_G.UtilityStorage do
    print(_G.UtilityStorage[i])
end
```
# Troubleshooting
## hook
I don't see how hook wouldn't work. Maybe a new roblox update? Check your remotes, etc. If none of that works contact me @ _xpluv on discord.
## remotescan
Make sure you have the right remote, else this was broken by roblox </3 Contact me @ _xpluv on discord.
## other concerns
discord @ _xpluv
# Can I use Source.
Yes, just don't distribute it. Or I will personally obfuscate this script and block you from using it.
