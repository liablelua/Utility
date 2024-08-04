<b>Disclaimer: Utility is not ready for production, I don't recommend using any code here YET until I'm finished with Utility.</b>
# Warning
To run <b>Utility</b> you should use <a href="https://celery.zip">Celery</a> to inject/execute this script.
![image](https://github.com/user-attachments/assets/5980f896-70d1-4f5d-b93d-7fe775039957)
# Functions
## hook
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
should be obvious
## unhook
```lua
unhook(game.ReplicatedStorage.REMOTEAREA)
```
unhook the remote, duh.
## remotescan

```lua
remotescan(game.ReplicatedStorage,false)
```
deepscan:
```lua
remotescan(game.ReplicatedStorage.Remotes,true)
```
## key
```lua
isKey = key("votedonaldtrump","https://raw.githubusercontent.com/liablelua/Utility/main/keyTest.txt")
if isKey then
  print("key")
end
```
key support!!
## prompt
```lua
cancel = function()
    game.Players.LocalPlayer:Kick("why u cancel grr")
end

accept = function()
    notification("thx for accepting",1)
end

prompt("be my frend plez", "Cancel", "Accept", cancel, accept)
```
yeah i added prompts thats pretty cool
## notification
```lua
notification("thanks for using my script",5)
```
will show "thanks for using my script" for 5 seconds.
### Other not important functions
time() -- Get Current Time<br>test() -- Like a UNC test, but your checking if your functions are up-to-date, only checks the BIG functions not the "not important" functions.<br>UnloadUtility() -- unload for testing (should only be used in Dev environments)
### Logs and allat
Utility has LOG SUPPORT 🎉<br>
Logs are automatically enabled, go ahead check them:
```lua
for i = 1, #_G.UtilityStorage do
    print(_G.UtilityStorage[i])
end
```
# Troubleshooting
check remotes, etc. make sure no errors in console from your functions. else contact _xpluv
## other concerns
discord @ _xpluv
# Can I use Source.
Yes, just don't distribute it. Or I will personally obfuscate this script and block you from using it.
