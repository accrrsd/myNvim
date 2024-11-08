return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree toggle right<CR>", Kopts)
		require("neo-tree").setup({
			window = {
				mappings = {
					["l"] = "noop",
					[";"] = "focus_preview",
				},
			},
		})
	end,
}
