require('keymaps')
require('options')

require('plugins.colorscheme')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.octo')
require('plugins.fugitive')

if vim.fn.has("win32") == 1 then
    require("powershell")
end
