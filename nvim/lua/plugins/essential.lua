return {
    {
        -- 离开插入模式时自动切成英文输入法，返回插入模式时恢复原输入法
        'keaising/im-select.nvim',
        opts = {},
    },
    {
        -- 保存时自动去掉多余空格
        'cappyzawa/trim.nvim',
        opts = {
            -- 高亮多余空格
            highlight = true,
        },
    },
}
