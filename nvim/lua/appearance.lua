-- 主题
require('plugins.deepwhite')

-- 状态栏
require('plugins.lualine')

-- 同步边界颜色
if jit.os ~= 'Windows' then
    require('plugins.bg')
end
