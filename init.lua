require('keymaps')
require('options')

if vim.g.vscode then
        require('vscode_cfg')
else
        require('plugins.colorscheme')
        require('plugins.telescope')
        require('plugins.treesitter')
end

require('plugins.fugitive')

if vim.fn.has("win32") == 1 then
    require("powershell")
end
