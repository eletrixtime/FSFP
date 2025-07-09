-- github: https://github.com/eletrixtime/FSFP
-- made by ~ eletrix.fr ~ 

local explorer = {}

function explorer.LoadFiles(path)
    local file_temp = storage:file(path, READ)
    file_temp:open()
    local file_temp_text_ = file_temp:readAll()
    file_temp:close()
    return file_temp_text_
end

function explorer.ShowFiles(path, onFileContent)

    if list ~= nil then
        list:clear()
    else
        list = gui:vlist(win, 35, 90, 250, 280)
    end

    local files = storage:listDir(path)
    for i, file in ipairs(files) do
        local case = gui:box(list, 0, (i-1)*36, 250, 36)
        local nameLabel = gui:label(case, 21, 0, 230, 18)
        nameLabel:setText(file)
        nameLabel:setFontSize(16)

        case:onClick(function()
            time:setTimeout(function ()
                local full_path = path .. "/" .. file
                if storage:isDir(full_path) then
                    explorer.ShowFiles(full_path, onFileContent)
                else
                    local content = explorer.LoadFiles(full_path)
                    if onFileContent then
                        onFileContent(content)
                        list:clear()
                    end
                end
            end, 0)
        end)
    end
end

return explorer
