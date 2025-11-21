vim.pack.add({ 'https://github.com/nvim-lualine/lualine.nvim' })

require('lualine').setup({
    options = {
        icons_enabled = false,
        component_separators = '',
        section_separators = '',
    },
})
