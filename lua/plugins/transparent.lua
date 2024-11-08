return {
	"xiyaowong/transparent.nvim",
	enabled = not IsVsCode,
	config = function()
		require("transparent").setup()
	end,
}
