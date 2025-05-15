-- 缩进只用空格，宽度统一为4

-- vim.opt和vim.o等同
-- 按下tab键时使用空格字符填充缩进
vim.o.expandtab = true
-- 设置制表字符（\t）的显示宽度，显示只用tab缩进的代码时使用
vim.o.tabstop = 4
-- 设置敲击tab或退格键时缩进值，跟随tabstop
vim.o.softtabstop = 4
-- 设置normal模式时使用大于号小于号键增加减少缩进时的缩进值，跟随tabstop
vim.o.shiftwidth = 4
-- 自动跟随上一行的缩进
vim.o.autoindent = true

-- 滚动余量
local scrolloff = 2
-- 水平方向滚动余量
vim.opt.scrolloff = scrolloff
-- 垂直方向滚动余量
vim.opt.sidescrolloff = scrolloff

vim.o.colorcolumn = "80"
vim.o.number = true
-- vim.o.relativenumber = true

vim.o.termguicolors = true
vim.o.background = 'light'
vim.cmd.colorscheme 'everforest'

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
