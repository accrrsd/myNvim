return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	enabled = not IsVsCode,
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
