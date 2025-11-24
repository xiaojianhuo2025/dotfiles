-- vim.opt和vim.o等同
vim.o.signcolumn = 'yes:1'
vim.o.ignorecase = true
vim.o.swapfile = false
-- 显示空白字符
-- vim.o.list = true
-- 按下tab键时使用空格字符填充缩进
vim.o.expandtab = true

-- 缩进只用空格，宽度统一为4
local indentval = 4
-- 设置制表字符（\t）的显示宽度，显示只用tab缩进的代码时使用
vim.o.tabstop = indentval
-- 设置敲击tab或退格键时缩进值，跟随tabstop
vim.o.softtabstop = indentval
-- 设置normal模式时使用大于号小于号键增加减少缩进时的缩进值，跟随tabstop
vim.o.shiftwidth = indentval
-- 自动跟随上一行的缩进
vim.o.autoindent = true

-- 滚动余量
local scrolloff = 2
-- 水平方向滚动余量
vim.o.scrolloff = scrolloff
-- 垂直方向滚动余量
vim.o.sidescrolloff = scrolloff

-- 显示行号
vim.o.number = true
-- 显示相对行号（便于数字jk跳转）
vim.o.relativenumber = true

-- 单行长度警戒线
vim.o.colorcolumn = '80'

-- 使用系统剪贴板
vim.o.clipboard = 'unnamedplus'

-- 突出显示光标所在行
vim.o.cursorline = true

vim.cmd.filetype('plugin indent on')

-- undo file
vim.o.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.o.undofile = true

vim.o.winborder = 'single'
