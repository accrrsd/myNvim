return {
	"brenoprata10/nvim-highlight-colors",
	enabled = not IsVsCode,
	config = function()
		require("cmp").setup({
			formatting = {
				format = require("nvim-highlight-colors").format,
			},
		})
	end,
}
