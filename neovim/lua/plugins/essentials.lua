return {
    {
    "keaising/im-select.nvim",
    config = function()
        require("im_select").setup({})
    end,
    },
    {
        'nvim-telescope/telescope.nvim', -- tag = '0.1.8',
        -- or                          
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
