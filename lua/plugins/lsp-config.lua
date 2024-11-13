return {
	{
		"williamboman/mason.nvim",
		enabled = not IsVsCode,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		enabled = not IsVsCode,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
				auto_install = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		enabled = not IsVsCode,
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			require("lspconfig").gdscript.setup(capabilities)
			lspconfig.lua_ls.setup({})
			Keymap("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
			Keymap("n", "gR", vim.lsp.buf.rename, { desc = "Rename" })
			Keymap("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
			Keymap("n", "gr", vim.lsp.buf.references, { desc = "References", nowait = true })
			Keymap("n", "gI", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
			Keymap("n", "gy", vim.lsp.buf.type_definition, { desc = "Goto Type Definition" })
			Keymap("n", "gk", vim.lsp.buf.hover, { desc = "Hover" })
			Keymap("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Help" })
			Keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
			Keymap({ "n", "v" }, "<leader>cc", vim.lsp.codelens.run, { desc = "Run Codelens" })
			Keymap("n", "<leader>cC", vim.lsp.codelens.refresh, { desc = "Refresh & Display Codelens" })
			Keymap("n", "<leader>gf", function()
				vim.lsp.buf.format({ async = true })
			end, { desc = "Lsp format" })
		end,
	},
}
