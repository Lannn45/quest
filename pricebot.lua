_ORBIT = "WSXUI2JjYUldJ7CKq9wE1MGwXs-ldzlUlHOQszwQe0s"

function handleEror(msg, erorMessage)
ao.send({
    Target = msg.From,
    Tags = {
        Action = "Eror",
        ["message-Id"] = msg.Id,
        Eror = erorMessage
    }

})
end

Handlers.add("lannn45",
Handlers.utils.hasMatchingTag("Action", "lannn45"),
function(msg)
local token = msg.Tags.Token
local url = "https://api.coingecko.com/api/v3/simple/price" .. "?ids=" .. token .. "&vs_currencies=usd"
ao.send({
    Target = _ORBIT,
    Action = "Get-Real-Data",
    Url = url
})
Handlers.utils.reply("PriceFetch")
(msg)
end
)