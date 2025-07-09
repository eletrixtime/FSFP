# File Selector For PaxOS9 (FSFP)

**FSFP** is a very cool file selector for your apps!

## How to use (working 2025)

- 1 : Create a lib folder and put `explorer.lua`
- 2 : go to your `manifest.json` and add `files` in the permissions
- 3 : Copy this very nice example code (available in `app.lua`) :

```lua
x = require("lib/explorer.lua")

function run(arg)
    win = gui:window()

    local function callback_file(content)
        print("file content :")
        print(content)
        -- do something with this.
    end
    x.ShowFiles("../", callback_file) -- (Arg1: Enter the base folder, Arg2 Enter the callback function)
    gui:setWindow(win)
end
```

Under the MIT License
