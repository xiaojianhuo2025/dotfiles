vim.pack.add({'https://github.com/tribela/transparent.nvim'})

require('transparent').setup({
    extra_groups = {
        CursorLineNr,
        LineNr,
    },
})
