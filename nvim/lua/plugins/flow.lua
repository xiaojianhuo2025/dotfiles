vim.pack.add({ 'https://github.com/0xstepit/flow.nvim' })

require('flow').setup({
    theme = {
        contrast = 'high',
        transparent = true,
    },
    colors = {
        -- fluo = 'cyan',
        fluo = 'orange',
    }
})

vim.opt.termguicolors = true
vim.cmd.colorscheme('flow')
