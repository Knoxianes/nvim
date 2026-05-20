return {

    'stevearc/conform.nvim',
    config = function()
        require('conform').setup({
            formatters_by_ft = {
                javascript = { "prettierd", "prettier", stop_after_first = true },
                typescript = { "prettierd", "prettier", stop_after_first = true },
                javascriptreact = { "prettierd", "prettier", stop_after_first = true },
                typescriptreact = { "prettierd", "prettier", stop_after_first = true },
                html = { "prettierd", "prettier", stop_after_first = true },
            }
        })

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.html" },
            callback = function(args)
                require("conform").format({ bufnr = args.buf, async = false })
            end,
        })
    end,
}
