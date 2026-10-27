vim.pack.add({ 
    { src = "https://github.com/nvim-lua/plenary.nvim"  },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/pwntester/octo.nvim" },
})

if vim.fn.executable("gh") == 1 then
    require("octo").setup({
        picker = "telescope",
        enable_builtin = true,
        use_local_fs = true,
        file_panel = { icons = false },
        mappings = {
            submit_win = {
                -- conflict with tmux prefix
                approve_review = { lhs = "<C-y", desc = "approve review", mode = { "n" } },
            },
        },
    })

    local picker = require("octo.picker")

    vim.keymap.set("n", "<leader>oi", picker.issues, { desc = "Octo list issues" })
    vim.keymap.set("n", "<leader>op", picker.prs, { desc = "Octo list PRs" })
    vim.keymap.set("n", "<leader>oo", "<cmd>Octo pr<cr>", { desc = "Octo open PR for current branch" })
    vim.keymap.set("n", "<leader>od", picker.discussions, { desc = "Octo list discussions" })
    vim.keymap.set("n", "<leader>on", picker.notifications, { desc = "Octo list notifications" })

else
    vim.notify("`gh` not found", vim.log.levels.WARN)
end
