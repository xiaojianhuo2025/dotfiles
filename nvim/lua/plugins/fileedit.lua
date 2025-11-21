return {
    {
        'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            {
                '<leader>ff', 
                function() require('telescope.builtin').find_files() end, 
                mode = 'n', 
                desc = 'Find files',
            },
        },
    },
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        keys = {
            {
                '-',
                '<CMD>Oil<CR>',
                mode = 'n', 
                desc = 'Open Parent Directory',
            }
        },
        -- Optional dependencies
        -- dependencies = { { "nvim-mini/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
    },
}
