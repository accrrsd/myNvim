return {
	"nvim-lualine/lualine.nvim",
	enabled = not IsVsCode,
	dependencies = { "nvim-tree/nvim-web-devicons", "skwee357/nvim-prose" },
	config = function()
		local prose = require("nvim-prose")
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				always_show_tabline = false,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					-- {
					-- 	require("noice").api.status.message.get_hl,
					-- 	cond = require("noice").api.status.message.has,
					-- },
					{
						require("noice").api.status.command.get,
						cond = require("noice").api.status.command.has,
						color = { fg = "#ff9e64" },
					},
					{
						require("noice").api.status.mode.get,
						cond = require("noice").api.status.mode.has,
						color = { fg = "#ff9e64" },
					},
					{
						require("noice").api.status.search.get,
						cond = require("noice").api.status.search.has,
						color = { fg = "#ff9e64" },
					},
				},
				--lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_c = { "buffers" },
				--lualine_x = {'encoding', 'fileformat', 'filetype'},
				--lualine_x = {"filetype"}
				lualine_x = {},
				lualine_y = {
					"progress",
					{ prose.reading_time, cond = prose.is_available },
					{ prose.word_count, cond = prose.is_available },
				},
				lualine_z = { "location" },
				--lualine_z = { "buffers" },
				-- lualine_y = {},
				-- lualine_z = {},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
