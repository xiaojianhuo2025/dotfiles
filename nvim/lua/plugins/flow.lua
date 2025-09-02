vim.pack.add({ 'https://github.com/0xstepit/flow.nvim' })

vim.opt.background = 'dark'

require('flow').setup({
    colors = {
        fluo = 'yellow',
    }
})

vim.cmd.colorscheme('flow')
