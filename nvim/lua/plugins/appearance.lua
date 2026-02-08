return {
    {
        'uhs-robert/oasis.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('oasis').setup({
                light_intensity = 2,
            }) -- (see Configuration below for all customization options)
            vim.o.background = 'light'
            vim.cmd.colorscheme('oasis-twilight')
            -- After setup, apply theme (or any style like "oasis-night")
        end,
    },
    {
        -- sync terminal boarder color with nvim bg
        'typicode/bg.nvim',
        lazy = false,
    },
    {
        -- statusline
        'nvim-lualine/lualine.nvim',
        -- dependencies = { 'nvim-tree/nvim-web-devicons' }
        opts = {
            options = {
                icons_enabled = false,
                component_separators = '',
                section_separators = '',
            },
            sections = {
                lualine_y = {},
            },
        },
    },
    {
        -- show column line on insert mode
        'Bekaboo/deadcolumn.nvim',
        opts = {
            scope = function()
                if vim.fn.mode():find('^[iRss\x13]') ~= nil then
                    return vim.fn.strdisplaywidth(vim.fn.getline('.'))
                end

                -- Don't show in read-only buffers
                if not vim.bo.ma or vim.bo.ro then
                    return 0
                end

                -- Find maximum length within visible range
                local max_len = math.max(
                    unpack(
                        vim.tbl_map(
                            vim.fn.strdisplaywidth,
                            vim.api.nvim_buf_get_lines(
                                0,
                                vim.fn.line('w0') - 1,
                                vim.fn.line('w$'),
                                false
                            )
                        )
                    )
                )

                if max_len >= cc_resolve(vim.wo.cc) then
                    return max_len
                end
                return 0
            end,
        },
    },
}
