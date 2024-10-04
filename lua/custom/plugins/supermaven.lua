return {
    "supermaven-inc/supermaven-nvim",
    opts = {
        keymaps = {
            accept_suggestion = "<C-j>",
            clear_suggestion = "<C-x>",
            accept_word = "<C-J>",
        },
        ignore_filetypes = { cpp = true },
        log_level = "info",                -- set to "off" to disable logging completely
        disable_inline_completion = false, -- disables inline completion for use with cmp
        disable_keymaps = false            -- disables built in keymaps for more manual control
    },
}
