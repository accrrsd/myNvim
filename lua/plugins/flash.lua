return {
	"folke/flash.nvim",
	event = "VeryLazy",
	config = function()
		local f = require("flash")

		f.setup({
			label = {
				uppercase = false,
			},
			modes = {
				search = {
					enabled = true,
				},
			},
		})

		vim.keymap.set({ "n", "x", "o" }, "<leader>S", function()
			require("flash").treesitter_search()
		end, { desc = "Flash Treesitter" })
	end,
}

-- stylua: ignore
-- not needed because used in search mode
-- { "<leader>s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
-- toggle dont work for me
-- { "<C-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
--{ "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
--{ "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
