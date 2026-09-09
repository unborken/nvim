local M = {}

-- theme setup
local function setup_github_theme()
    require("github-theme").setup({
        groups = {
            all = { StatusLine = { fg = "fg2", bg = "bg2" } },
        },
    })
end

M.items = {
    {
        name = "github-nvim-theme",
        repo = "https://github.com/projekt0n/github-nvim-theme",
        setup = setup_github_theme,
    },
}

M.fallback = "github_dark_default"

return M
