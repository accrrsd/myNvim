return {
	"ahmedkhalf/project.nvim",
	enabled = not IsVsCode,
	config = function()
		require("project_nvim").setup()
	end,
}
