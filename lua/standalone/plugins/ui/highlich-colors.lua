return {
	"brenoprata10/nvim-highlight-colors",
	event = "BufRead",
	config = function()
		require("cmp").setup({
			formatting = {
				format = require("nvim-highlight-colors").format,
			},
		})
	end,
}
