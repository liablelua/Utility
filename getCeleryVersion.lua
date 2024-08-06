local HttpService = game:GetService("HttpService")
local GHRelease = game:HttpGet("https://api.github.com/repos/bCelery/Celery/releases/latest")
local GHDecode = HttpService:JSONDecode(GHRelease)

getCeleryVersion = function()
  return GHDecode.tag_name
end
