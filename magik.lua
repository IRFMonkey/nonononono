repeat task.wait() until game:IsLoaded()
repeat task.wait() until shared.GuiLibrary
local uis = game:GetService("UserInputService")
local GuiLibrary = shared.GuiLibrary
local ScriptSettings = {}
local UIS = game:GetService("UserInputService")
local COB = function(tab, argstable) 
    return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end
function securefunc(func)
    task.spawn(function()
        spawn(function()
            pcall(function()
                loadstring(
                    func()
                )()
            end)
        end)
    end)
end

local NoClickDelay = COB("Combat", {
    ["Name"] = "noclickdelay",
    ["Function"] = function(callback)
        if callback then
            pcall(function()
            if getgenv().funisus and entity.isAlive then
                for i2,v2 in pairs(itemtable) do
                    if type(v2) == "table" and rawget(v2, "sword") then
                        v2.sword.attackSpeed = 0.000000001
                    end
                    SwordCont.isClickingTooFast = function() return false end
                end
            end)
        end,
    ["Default"] = false,
    ["HoverText"] = "no clickdelays (bedwars is gay to have that)"
})
