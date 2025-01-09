return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
	-- lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			auto_install = true,
			ensure_installed = {
				"lua",
				"gdscript",
				"markdown",
				"markdown_inline",
			},
			highlight = { enable = true, additional_vim_regex_highlighting = true },
		})
	end,
}
