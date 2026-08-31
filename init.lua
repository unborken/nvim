require('keymaps')
require('options')

if vim.g.vscode then
        require('vscode')
else
        require('plugins.telescope')
end

if vim.fn.has("win32") == 1 then
    require("powershell")
end

