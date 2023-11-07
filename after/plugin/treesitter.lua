require'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = {"javascript","typescript","tsx", "c", "lua", "vim", "vimdoc", "html","python","go","css","json","sql" },
	sync_install = false,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},
}
