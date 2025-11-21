return {
    {
        'Verf/deepwhite.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd [[colorscheme deepwhite]]
        end,
    },
    { "typicode/bg.nvim", lazy = false },
    {
        'nvim-lualine/lualine.nvim',
        -- dependencies = { 'nvim-tree/nvim-web-devicons' }
        opts = {
    	options = {
                icons_enabled = false,
                component_separators = '',
                section_separators = '',
            }
        }
    }
}
