Utility v3.0.0 is finally out with new Documentation.
# How to Include Utility?
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/liablelua/Utility/main/Utility.lua"))()
```
That way you can use unc(), iy(), etc. In the same script! (If your using shit like Solara)
# What Executors Support Utility
Known List:
- ✅ Celery (100%, Undetected)
- ✅ Wave (100%, Undetected)
- ✅ Solara (33%, Detected)
If you find an Executor that works with Utility, let me know!
# Documentation
Rewritten Utility Documentation! (For every function.) (Oh god.)
## Hooking Functions
These are for local scripts only.<br>Say you want to modify how your Inventory looks Client-Sided.<br>Lets get the info from the Remote and Trigger an update.<br>
```lua
hook(Remotes.InvUpd, function(...)
    for i, v in pairs(...) do
        print(i.." | "..v)
    end
end)
```
I found out that "v" is just an Item Name.<br>Lets do this.<br>
```lua
Remotes.InvUpd:FireClient({"Knife1","Knife2","Knife3"})
```
Lets unhook that remote now.
```lua
unhook(Remotes.InvUpd)
```
## Remote Functions
Functions to find remotes n shit!<br>Scan for remotes in specific areas.<br>
```lua
remotescan(Remotes)
local Result = getgenv().Remotes
for i, v in pairs(Result) do
    print(v.Name)
end
```
Get all remotes in an area. Like full scan.
```lua
scanall(Remotes)
local Result = getgenv().Remotes
for i, v in pairs(Result) do
    print(v.Name)
end
```
(Undocumented): Theres a 2nd arg in Remotescan and if you set it to true it will go 1 folder deep.
## UI Functions
Wanted to make a prompt easily with correct sizing and simplistic UI?<br>That is now possible with Utility.<br>Heres a sample:
```lua
cancel = function()
    game.Players.LocalPlayer:Kick("why u cancel grr")
end

accept = function()
    notification("thx for accepting",1)
end

prompt("be my frend plez", "Cancel", "Accept", cancel, accept)
```
And for the notification side, there was a hidden way how to do it in the prompt example, the 2nd arg for notification is the Wait Time.
## Tamper Functions
I'll give you the Big example. Theres not much I can document here.<br>Register your Tampers.<br>
```lua
local vars = {a=50,b=20}
registerTampers(vars)
```
Update a tamper
```lua
vars.a = 69
updateTamper(vars.a, 69)
```
Check tampers
```lua
local tampered = checkTamper(vars)
if tampered then
    -- self destruct
end
```
## Anti-Skid Protection Function
Anti-Skid is a new way of Protection.<br>You need a TextLabel or a Value and then a Base Value<br>Example: The TextLabel is hidden and obfuscated/unchangable and its set to "liablelua" and your owner value is set to "liablelua" but its unobfuscated. During the obfuscation, anti-skid it!<br>
```lua
local OwnerName = Owner.Text -- obfuscate this shti or smth
local Owner = "LiableLua" -- leave this unobfuscated
antiskid(OwnerName, Owner) -- obfuscate this too
```
## Humanoid Functions
HUMNAOID!!!!!!!<br>Swim
```lua
swim()
```
Sit
```lua
sit()
```
Speed
```lua
speed(50)
```
Jump
```lua
jump(100)
```
Should be kinda obvious, etc.
## Hex Functions
Examples of Hex.<br>Convert "sigma" into Hex.<br>
```lua
local Hex = tohex("sigma")
print(Hex)
```
Hex to "sigma".
```lua
local Sigma = fromhex("7369676D61")
print(Sigma)
```
## Misc. Functions
### Key
```lua
isKey = key("votedonaldtrump","https://raw.githubusercontent.com/liablelua/Utility/main/keyTest.txt")
if isKey then
  print("key")
end
```
### UNC
```lua
unc()
```
### Infinite Yield
```lua
iy()
```
### Synapse Save Instance
```lua
synsaveinstance()
```
### Headshot 
```lua
local HeadShot = headshot(game.Players.LocalPlayer)
print(HeadShot)
```
### Logs
```lua
local Logs = logs(true)
```
### Run Tests
```lua
runtests()
```
# Donate!
$auto445 on Cash App
