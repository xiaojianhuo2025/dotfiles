vim.pack.add({ 'https://github.com/Verf/deepwhite.nvim' })

require('deepwhite').setup({
    -- low_blue_light = true
})

vim.opt.termguicolors = true
vim.cmd.colorscheme('deepwhite')
