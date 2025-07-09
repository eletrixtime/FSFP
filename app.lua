-- github: https://github.com/eletrixtime/FSFP
-- made by ~ eletrix.fr ~ 

x = require("lib/explorer.lua")

local ATMP = "../" -- root of the SD Card

function run(arg)
    win = gui:window()

    local function callback_file(content)
        print("file content :")
        print(content)
    end
    x.ShowFiles(ATMP, callback_file) -- (Arg1: Enter the base folder, Arg2 Enter the callback function)
    gui:setWindow(win)
end

