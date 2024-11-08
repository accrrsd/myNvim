return {
	"skwee357/nvim-prose",
	enabled = not IsVsCode,
	config = function()
		return require("nvim-prose").setup({
			wpm = 200.0,
			filetypes = { "markdown", "asciidoc", "text" },
			placeholders = {
				words = "words",
				minutes = "min",
			},
		})
	end,
}
