-- 基本设置
require('common')
-- GUI编辑器
-- require('neovide')
-- 主题
require('plugins.flow')
-- require('plugins.zenbones')
-- 模糊查找
require('plugins.telescope')
-- 自动切换输入法
require('plugins.im-select')
-- 动态文本长度标尺
require('plugins.deadcolumn')
-- 状态栏
require('plugins.lualine')
-- 语言服务器
-- require('plugins.lspconfig')
-- 文件操作
require('plugins.oil')

if jit.os ~= 'Windows' then
    require('plugins.bg')
end
