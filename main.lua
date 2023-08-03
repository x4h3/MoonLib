-- VARIABLES
hum = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")
hrp = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

-- NOTIFICATION OR CONSOLE WARN
function notify(text)
    if _G.Notification == false or _G.Notification == nil then
        warn(text)
    else
        local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

        Notification:Notify(
            {Title = "TEXT TITLE", Description = text},
            {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
            {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
    end
end

-- FUNCTIONS
function Speed(num)
    local convertedNum = tonumber(num)

    if convertedNum then
        hum.WalkSpeed = convertedNum
    else
        notify("The supplied value is not a valid number.")
    end
end

function JPower(num)
    local convertedNum = tonumber(num)

    if convertedNum then
        hum.JumpPower = convertedNum
    elseif convertedNum == nil then
        notify("The supplied value is not a valid number.")
    end
end
