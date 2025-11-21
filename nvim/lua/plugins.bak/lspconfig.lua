vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })

vim.lsp.enable('lua_ls')

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
