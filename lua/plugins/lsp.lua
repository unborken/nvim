vim.pack.add{
    { src = "https://github.com/neovim/nvim-lspconfig" },
}

vim.lsp.enable({
    "clangd",
    "basedpyright"
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "grD", vim.lsp.buf.definition, opts)
    end,
})
