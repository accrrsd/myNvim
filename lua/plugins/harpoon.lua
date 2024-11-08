return {
	"ThePrimeagen/harpoon",
	enabled = not IsVsCode,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		vim.keymap.set("n", "<leader>hm", mark.add_file, { desc = "Mark file with harpoon" })
		vim.keymap.set("n", "<leader>hn", ui.nav_next, { desc = "Go to next harpoon mark" })
		vim.keymap.set("n", "<leader>hp", ui.nav_prev, { desc = "Go to previous harpoon mark" })
		vim.keymap.set("n", "<leader>ht", ui.toggle_quick_menu, { desc = "Toggle harpoon quick menu" })

		vim.keymap.set("n", "<C-1>", function()
			ui.nav_file(1)
		end, { desc = "Go to file 1" })
		vim.keymap.set("n", "<C-2>", function()
			ui.nav_file(2)
		end, { desc = "Go to file 2" })
		vim.keymap.set("n", "<C-3>", function()
			ui.nav_file(3)
		end, { desc = "Go to file 3" })
		vim.keymap.set("n", "<C-4>", function()
			ui.nav_file(4)
		end, { desc = "Go to file 4" })
		vim.keymap.set("n", "<C-5>", function()
			ui.nav_file(5)
		end, { desc = "Go to file 5" })
	end,
}
