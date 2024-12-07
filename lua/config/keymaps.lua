Kopts = { noremap = true, silent = true }

-- Keymap leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

Keymap = vim.keymap.set
-- Shorten function name
Keymap("", "<Space>", "<Nop>", Kopts)

-- redo
Keymap("n", "U", "<C-r>", Kopts)

-- return to title screen
Keymap("n", "<leader><leader>q", ":Alpha<CR>")

-- change movement keys to fit blind wrtining
Keymap({ "n", "v", "t" }, "j", "h")
Keymap({ "n", "v", "t" }, "k", "j")
Keymap({ "n", "v", "t" }, "l", "k")
Keymap({ "n", "v", "t" }, ";", "l")

-- better window navigation
Keymap("n", "<C-w>j", "<C-w>h", { noremap = true, silent = true, desc = "move to left window" })
Keymap("n", "<C-w>k", "<C-w>j", { noremap = true, silent = true, desc = "move to down window" })
Keymap("n", "<C-w>l", "<C-w>k", { noremap = true, silent = true, desc = "move to up window" })
Keymap("n", "<C-w>;", "<C-w>l", { noremap = true, silent = true, desc = "move to right window" })

-- Navigate buffers
Keymap("n", "<leader>bc", ":bd<CR>", { noremap = true, silent = true, desc = "close buffer" })
Keymap("n", "<leader>bd", ":bd!<CR>", { noremap = true, silent = true, desc = "force close buffer" })

Keymap("n", "<leader>bn", function()
	vim.cmd("enew")
	vim.cmd("Telescope find_files")
end, { noremap = true, silent = true, desc = "new buffer" })

Keymap("n", "<M-u>", ":bprevious<CR>", { noremap = true, silent = true, desc = "previous buffer" })
Keymap("n", "<M-p>", ":bnext<CR>", { noremap = true, silent = true, desc = "next buffer" })

-- split keymaps
Keymap("n", "<C-w>sv", ":vsplit<CR>", { noremap = true, silent = true, desc = "vertical split" })
Keymap("n", "<C-w>sh", ":split<CR>", { noremap = true, silent = true, desc = "horizontal split" })

-- Move text up and down in normal mode
Keymap("n", "<M-l>", ":m .-2<CR>==", Kopts)
Keymap("n", "<M-k>", ":m .+1<CR>==", Kopts)

-- Move text up and down in other modes
Keymap({ "x", "v" }, "<M-l>", ":m '<-2<CR>gv=gv", Kopts)
Keymap({ "x", "v" }, "<M-k>", ":m '>+1<CR>gv=gv", Kopts)
-- Keymap({ "x", "v" }, "L", ":m '<-2<CR>gv=gv", Kopts)
-- Keymap({ "x", "v" }, "K", ":m '>+1<CR>gv=gv", Kopts)

-- Stay in indent mode
Keymap("v", "<", "<gv^", Kopts)
Keymap("v", ">", ">gv^", Kopts)

-- because of change of movement, we need to change hotkey for movement to next
Keymap("n", "'", ";")

-- Resize with arrows
Keymap("n", "<C-Up>", ":resize -2<CR>", Kopts)
Keymap("n", "<C-Down>", ":resize +2<CR>", Kopts)
Keymap("n", "<C-Left>", ":vertical resize -2<CR>", Kopts)
Keymap("n", "<C-Right>", ":vertical resize +2<CR>", Kopts)

-- removes highlighting after escaping vim search
Keymap("n", "<Esc>", "<Esc>:noh<CR>", Kopts)

-- skip folded regions
Keymap("n", "k", "gj")
Keymap("n", "l", "gk")

-- Keymap("n", "<leader>o", "O<ESC>O")
Keymap("n", "<leader>o", "O<ESC>o")
-- Keymap("n", "<leader>O", "o<cr>")

-- additional language key map
vim.opt.keymap = "russian-jcukenwin"
vim.opt.iminsert = 0
vim.opt.imsearch = 0

--_both keymaps works, first for insert in diff language, second for change language when you already in insert mode, i prefer second
--Keymap({ "n", "x" }, "<leader>ll", "i_<C-^>")
Keymap("i", "<C-l>", "<C-^>", { desc = "Change language" })

-- stringify that stroke and below, DISABLED in test
-- Keymap("n", "J", "mzJ`z")

-- stay same place when cursor move between pages
Keymap("n", "<C-d>", "<C-d>zz")
Keymap("n", "<C-u>", "<C-u>zz")

-- search with cursor in middle
Keymap("n", "n", "nzzzv")
Keymap("n", "N", "Nzzzv")

-- exit terminal mode
Keymap("t", "<Esc><Esc>", "<C-\\><C-n>")

-- search and replace word im on
Keymap(
	"n",
	"<leader><leader>r",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ noremap = true, silent = true, desc = "Replace word inside file" }
)

if IsVsCode then
	-- vim.api.nvim_del_keymap("n", "<C-w>")
	Keymap(
		{ "n", "v" },
		"<leader><leader>",
		"<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>",
		{ silent = true }
	)
	Keymap("n", "zC", "<cmd>lua require('vscode').action('editor.foldAll')<CR>", { silent = true })
	Keymap("n", "za", "<cmd>lua require('vscode').action('editor.toggleFold')<CR>", { silent = true })
	Keymap("n", "zO", "<cmd>lua require('vscode').action('editor.unfoldAll')<CR>", { silent = true })

	Keymap(
		"n",
		"<leader>bc",
		"<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>",
		{ silent = true }
	)

	Keymap("n", "<M-p>", "<cmd>lua require('vscode').action('workbench.action.nextEditor')<CR>", { silent = true })
	Keymap("n", "<M-u>", "<cmd>lua require('vscode').action('workbench.action.previousEditor')<CR>", { silent = true })

	Keymap("n", "gcc", "<cmd>lua require('vscode').action('editor.toggleLineComments')<CR>", { silent = true })
	Keymap("v", "gc", "<cmd>lua require('vscode').action('editor.toggleLineComments')<CR>", { silent = true })
end
