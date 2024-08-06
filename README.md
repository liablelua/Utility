<b>Utility is Ready for Production! 🎉</b>
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
## headshot
```lua
local HeadShot = headshot(game.Players.LocalPlayer)
print(HeadShot)
```
great for using for images like your own ui library, etc.
### Other not important functions
time() -- Get Current Time<br>test() -- Like a UNC test, but your checking if your functions are up-to-date, only checks the BIG functions not the "not important" functions.<br>UnloadUtility() -- unload for testing (should only be used in Dev environments)<br>uload(x)() -- loadfile temporary until celery fixes
### Logs and allat
Utility has LOG SUPPORT 🎉<br>
Logs are automatically enabled, go ahead check them:
```lua
for i = 1, #_G.UtilityStorage do
    print(_G.UtilityStorage[i])
end
```
DONT USE THAT NOW USE
```lua
logs()
```
to get the logs table
```lua
local Logs = logs(true)
print(Logs)
```
# Anti-Tamper
```lua
--  imagine this is obfuscated

antiskid("sigma","sigma")

local Variables = {
    ["a"] = 1,
    ["b"] = 2
}

registerTampers(Variables)

Variables.a = 3
updateTamper(Variables.a, 3)

while wait(1) do
    if checkTamper(Variables) then
        print("TAMPERED SKID")
        Variables = nil
        game.Players.LocalPlayer:Kick("kys skid")
    end
end

-- lets tamper with the variable now

Variables.a = 50
```
this should make all sense blacklist him or smth if u  have a key system
# Anti-Skid
![image](https://github.com/user-attachments/assets/77c66809-d692-4e5f-a64b-b38c5ad31461)
# Troubleshooting
check remotes, etc. make sure no errors in console from your functions. else contact liablelua
## other concerns
discord @ liablelua
# Can I use Source.
Yes, just don't distribute it. Or I will personally obfuscate this script and block you from using it.
# Examples
yeah i added examples!!<br>
Remote Viewer: https://github.com/liablelua/Utility/blob/main/remote_viewer.lua [Uses hook, unhook, prompt, notification!!!]<br>
HeadShot Image Test: https://github.com/liablelua/Utility/blob/main/headshot.lua [420 by 420 image headshot.]
