return {
    { "typicode/bg.nvim", lazy = false },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('plugins.configs.lualine')
        end,
    },
    {
      "0xstepit/flow.nvim",
      lazy = false,
      priority = 1000,
      tag = "v2.0.2",
      config = function()
          require('plugins.configs.flow')
      end,
    },
    -- {
    --   "neanias/everforest-nvim",
    --   version = false,
    --   lazy = false,
    --   priority = 1000, -- make sure to load this before all the other start plugins
    --   -- Optional; default configuration will be used if setup isn't called.
    --   config = function()
    --     require("everforest").setup({
    --       -- Your config here
    --       background = "soft",
    --       disable_italic_comments = true
    --     })
    --   end,
    -- },
}

