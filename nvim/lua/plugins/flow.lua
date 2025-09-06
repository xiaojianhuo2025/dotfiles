vim.pack.add({ 'https://github.com/0xstepit/flow.nvim' })

require('flow').setup({
    colors = {
        fluo = 'cyan',
    }
})

vim.cmd.colorscheme('flow')
