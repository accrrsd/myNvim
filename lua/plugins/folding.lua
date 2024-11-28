return {
	{
		"kevinhwang91/nvim-ufo",
		dependencies = { "kevinhwang91/promise-async" },
		enabled = not IsVsCode,
		config = function()
			vim.o.foldcolumn = "0"
			vim.o.foldlevel = 99
			vim.o.foldlevelstart = 99
			vim.o.foldenable = true

			local ufo = require("ufo")

			-- za for toggle, its default vim keymap
			vim.keymap.set("n", "zO", ufo.openAllFolds, { desc = "Open all folds" })
			vim.keymap.set("n", "zC", ufo.closeAllFolds, { desc = "Close all folds" })
			vim.keymap.set("n", "zL", function()
				local winid = ufo.peekFoldedLinesUnderCursor()
				if not winid then
					vim.lsp.buf.hover()
				end
			end, { desc = "Peek fold under cursor" })

			ufo.setup({
				provider_selector = function(bufnr, filetype, buftype)
					return { "lsp", "indent" }
				end,
			})
		end,
	},
}
