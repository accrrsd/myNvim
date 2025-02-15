-- vim.g.markdown_folding = 1
-- buffer manager
-- local opts = { noremap = true }
-- local map = vim.keymap.set
--
-- return {
-- 	"j-morano/buffer_manager.nvim",
-- 	dependencies = {
-- 		"nvim-lua/plenary.nvim",
-- 	},
-- 	config = function()
-- 		require("buffer_manager").setup({
-- 			-- select_menu_item_commands = {
-- 			-- 	v = {
-- 			-- 		key = "<C-v>",
-- 			-- 		command = "vsplit",
-- 			-- 	},
-- 			-- 	h = {
-- 			-- 		key = "<C-h>",
-- 			-- 		command = "split",
-- 			-- 	},
-- 			-- },
-- 			focus_alternate_buffer = false,
-- 			short_file_names = true,
-- 			short_term_names = true,
-- 			loop_nav = false,
-- 			highlight = "Normal:BufferManagerBorder",
-- 			win_extra_options = {
-- 				winhighlight = "Normal:BufferManagerNormal",
-- 			},
-- 		})
-- 		-- Navigate buffers bypassing the menu
-- 		local bmui = require("buffer_manager.ui")
-- 		local keys = "123456789"
-- 		for i = 1, #keys do
-- 			local key = keys:sub(i, i)
-- 			map("n", string.format("<leader>b%s", key), function()
-- 				bmui.nav_file(i)
-- 			end, opts)
-- 		end
-- 		opts.desc = "Buffer Manager"
-- 		-- Just the menu
-- 		map("n", "<leader>bb", bmui.toggle_quick_menu, opts)
-- 		opts.desc = "Buffer Manager Search"
-- 		-- Open menu and search
-- 		map("n", "<leader>bf", function()
-- 			bmui.toggle_quick_menu()
-- 			-- wait for the menu to open
-- 			vim.defer_fn(function()
-- 				vim.fn.feedkeys("/")
-- 			end, 50)
-- 		end, opts)
-- 		opts.desc = ""
-- 		-- Next/Prev
-- 		map("n", "<M-;>", bmui.nav_next, opts)
-- 		map("n", "<M-j>", bmui.nav_prev, opts)
-- 	end,
-- }

-- vs code only Keymaptings
-- if vim.g.vscode then
-- 	Keymap("n", "zM", "<cmd>lua require('vscode').action('editor.foldAll')<CR>", { silent = true })
-- 	Keymap("n", "zo", "<cmd>lua require('vscode').action('editor.unfold')<CR>", { silent = true })
-- 	Keymap("n", "zO", "<cmd>lua require('vscode').action('editor.unfoldRecursively')<CR>", { silent = true })
-- 	Keymap("n", "zc", "<cmd>lua require('vscode').action('editor.fold')<CR>", { silent = true })
-- 	Keymap("n", "zC", "<cmd>lua require('vscode').action('editor.foldRecursively')<CR>", { silent = true })
-- end

-- old linter formatter
-- return {
-- 	{
-- 		"mfussenegger/nvim-lint",
-- 		event = { "BufReadPre", "BufNewFile" },
-- 		config = function()
-- 			require("lint").linters_by_ft = {
-- 				gdscript = { "gdlint" },
-- 			}
-- 			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
-- 				callback = function()
-- 					require("lint").try_lint()
-- 				end,
-- 			})
-- 		end,
-- 	},
--
-- 	{
-- 		"stevearc/conform.nvim",
-- 		config = function()
-- 			require("conform").setup({
-- 				format_on_save = {
-- 					lsp_format = "fallback",
-- 					timeout_ms = 500,
-- 				},
-- 				formatters_by_ft = {
-- 					lua = { "stylua" },
-- 					markdown = { "alex" },
-- 					gdscript = { "gdformat" },
-- 				},
-- 			})
-- 		end,
-- 	},
-- }
