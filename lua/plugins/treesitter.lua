return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	enabled = not IsVsCode,
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			auto_install = true,
			ensure_installed = {
				"lua",
				"gdscript",
			},
			highlight = { enable = true, additional_vim_regex_highlighting = true },
			-- indent = { enable = true },
		})
	end,
}
