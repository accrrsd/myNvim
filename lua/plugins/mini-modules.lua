return {
	{
		"echasnovski/mini.surround",
		enabled = not IsVsCode,
		version = false,
		config = function()
			require("mini.surround").setup()
		end,
	},
	{
		"echasnovski/mini.comment",
		enabled = not IsVsCode,
		version = false,
		config = function()
			require("mini.comment").setup()
		end,
	},
	{
		"echasnovski/mini.pairs",
		enabled = not IsVsCode,
		version = false,
		config = function()
			require("mini.pairs").setup()
		end,
	},
	{
		"echasnovski/mini.ai",
		enabled = not IsVsCode,
		version = false,
		config = function()
			require("mini.ai").setup()
		end,
	},
	{
		"echasnovski/mini.notify",
		enabled = not IsVsCode,
		version = false,
		config = function()
			require("mini.notify").setup()
		end,
	},
}
