-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        '--branch=stable',
        lazyrepo,
        lazypath,
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
            { out, 'WarningMsg' },
            { '\nPress any key to exit...' },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
-- add lazypath to runtimepaths
vim.opt.rtp:prepend(lazypath)

-- setup 'mapleader' before load lazy.nvim
require('config.keymaps')
require('config.common')

-- Setup lazy.nvim
require('lazy').setup({
    spec = {
        -- import your plugins
        { import = 'plugins' },
    },
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    -- install = { colorscheme = { "habamax" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
    -- disable luarocks
    rocks = { enabled = false },
    -- set colorscheme for Lazy initial UI
    colorscheme = { 'deepwhite' },
    -- use border because the background colors of menu and editor are same
    ui = {
        title = 'NeoVim Plugin Manager',
        border = 'single',
        backdrop = 100,
    },
    change_detection = {
        enabled = false,
        notify = false,
    },
})
