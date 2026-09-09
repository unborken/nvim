local colorschemes = require("colorschemes")

local packages = vim.tbl_map(function(item)
    return {
        src =  item.repo,
        name = item.name
    }
end, colorschemes.items)

vim.pack.add(packages, { load = false})

for _, item in ipairs(colorschemes.items) do
    if item.setup
        then item.setup()
    end
end

local persist = vim.fs.joinpath(vim.fn.stdpath("state"), "colorscheme")

vim.api.nvim_create_autocmd("ColorScheme", {
    group = vim.api.nvim_create_augroup("colorscheme_persist", { clear = true }),
    callback = function(ev)
        vim.fn.writefile({ ev.match }, persist)
    end,
})

local function get_saved_scheme()
    if vim.fn.filereadable(persist) == 1 then
        return vim.fn.readfile(persist)[1]
    end
end

local saved = get_saved_scheme()

if not (saved and pcall(vim.cmd.colorscheme, saved)) then
    vim.cmd.colorscheme(colorschemes.fallback)
end
