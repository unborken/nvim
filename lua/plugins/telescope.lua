vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim"  }, -- Dependency
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
})

local hidden_args = function()
    return { "--hidden" }
end

require("telescope").setup({
    defaults = {
        -- custom options go here
        file_ignore_patterns = {
            "^%.git[/\\]",
            "[/\\]%.git[/\\]",
        },
    },
    pickers = {
        find_files = {
            hidden = true,
        },
        live_grep = { additional_args = hidden_args, },
        grep_string = { additional_args = hidden_args, },
        colorscheme = {
            enable_preview = true,
            ignore_builtins = true,
        },
    },
})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
