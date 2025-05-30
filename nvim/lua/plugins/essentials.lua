return {
    {
        -- 自动切换输入法
        "keaising/im-select.nvim",
        config = function()
            require("im_select").setup({})
        end,
    },
    {
        -- 文件与符号的模糊查找
        'nvim-telescope/telescope.nvim', -- tag = '0.1.8',
        -- or                          
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        -- 动态colorcolumn，未超出时不显示
        'Bekaboo/deadcolumn.nvim'
    },
    {
         'neovim/nvim-lspconfig'
    },
}
