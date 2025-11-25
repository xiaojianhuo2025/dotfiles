return {
    {
        'stevearc/conform.nvim',
        opts = {
            formatter_by_ft = {
                lua = { 'stylua' },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_format = 'fallback',
            },
        },
    },
}
