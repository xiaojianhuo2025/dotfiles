-- 主题
require('plugins.deepwhite')
-- require('plugins.flow')

-- 状态栏
require('plugins.lualine')

-- 同步边界颜色
-- 半透明后不需要了
if jit.os ~= 'Windows' then
    require('plugins.bg')
end

-- 半透明
-- require('plugins.transparent')
