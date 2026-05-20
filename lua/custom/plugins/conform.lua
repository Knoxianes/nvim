return {

    'stevearc/conform.nvim',
    config = function()
        require('conform').setup({
            formatters = {
                prettierd = {
                    prepend_args = { '--single-quote', '--semi', '--no-bracket-spacing', '--arrow-parens', 'avoid' },
                },
                prettier = {
                    prepend_args = { '--single-quote', '--semi', '--no-bracket-spacing', '--arrow-parens', 'avoid' },
                },
            },
            formatters_by_ft = {
                javascript = { "prettierd", "prettier", stop_after_first = true },
                typescript = { "prettierd", "prettier", stop_after_first = true },
                javascriptreact = { "prettierd", "prettier", stop_after_first = true },
                typescriptreact = { "prettierd", "prettier", stop_after_first = true },
                html = { "prettierd", "prettier", stop_after_first = true },
                python = { "isort", "black" },
            }
        })

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.html", "*.py" },
            callback = function(args)
                require("conform").format({ bufnr = args.buf, async = false })
            end,
        })
    end,
}
