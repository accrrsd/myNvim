return {
	"nvimtools/none-ls.nvim",
	enabled = not IsVsCode,
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.formatting.prettier,
				-- null_ls.builtins.diagnostics.eslint,
				null_ls.builtins.formatting.gdformat,
			},
		})
	end,
}
