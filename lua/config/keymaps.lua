Kopts = { noremap = true, silent = true }

-- Keymap leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

Keymap = vim.keymap.set
-- Shorten function name
Keymap("", "<Space>", "<Nop>", Kopts)

-- redo
Keymap("n", "U", "<C-r>", Kopts)

-- unmap default key (in dev)
--vim.Keymap.del({"n", "v"}, "h")
-- unmap s key, because of surround
--vim.keymap.set({"n", "x"}, "s", "<Nop>")

-- return to title screen
Keymap("n", "<leader><leader>q", ":Alpha<CR>")

-- change movement keys to fit blind wrtining
Keymap({ "n", "v", "t" }, "j", "h")
Keymap({ "n", "v", "t" }, "k", "j")
Keymap({ "n", "v", "t" }, "l", "k")
Keymap({ "n", "v", "t" }, ";", "l")

-- better window navigation
Keymap("n", "<tab>j", "<C-w>h", { noremap = true, silent = true, desc = "move to left window" })
Keymap("n", "<tab>k", "<C-w>j", { noremap = true, silent = true, desc = "move to down window" })
Keymap("n", "<tab>l", "<C-w>k", { noremap = true, silent = true, desc = "move to up window" })
Keymap("n", "<tab>;", "<C-w>l", { noremap = true, silent = true, desc = "move to right window" })

-- Navigate buffers
-- Keymap("n", "<S-j>", ":bnext<CR>", Kopts)
-- Keymap("n", "<S-;>", ":bprevious<CR>", Kopts)

-- Move text up and down
Keymap("n", "<A-l>", ":m .+1<CR>==", Kopts)
Keymap("n", "<A-k>", ":m .-2<CR>==", Kopts)

-- Press jk fast to exit insert mode
--keymap("i", "jk", "<ESC>", Kopts)
--keymap("i", "kj", "<ESC>", Kopts)

-- Stay in indent mode
Keymap("v", "<", "<gv^", Kopts)
Keymap("v", ">", ">gv^", Kopts)

-- move text up and down in v mode
Keymap("v", "K", ":m '>+1<CR>gv=gv", Kopts)
Keymap("v", "L", ":m '<-2<CR>gv=gv", Kopts)

-- Move text up and down
Keymap("x", "K", ":m '>+1<CR>gv=gv", Kopts)
Keymap("x", "L", ":m '<-2<CR>gv=gv", Kopts)

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

-- delete and paste without copy
Keymap({ "n", "v" }, "x", '"_x')
Keymap({ "n", "v" }, "X", '"_X')
Keymap({ "n", "v" }, "d", '"_d')
Keymap({ "n", "v" }, "D", '"_D')

-- make leader key copy before delete or paste
Keymap("n", "<leader>p", '""p')
Keymap("n", "<leader>P", '""P')
Keymap("n", "<leader>d", '""d')
Keymap("n", "<leader>D", '""D')
Keymap("n", "<leader>x", '""x')
Keymap("n", "<leader>X", '""X')

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
-- Keymap("t", "<Esc>", "<C-\\><C-n>")
Keymap("t", "<Esc><Esc>", "<C-\\><C-n>")

-- search and replace word im on
Keymap("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

if IsVsCode then
	Keymap(
		{ "n", "v" },
		"<leader><leader>",
		"<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>",
		{ silent = true }
	)
	Keymap("n", "zc", "<cmd>lua require('vscode').action('editor.fold')<CR>", { silent = true })
	Keymap("n", "za", "<cmd>lua require('vscode').action('editor.toggleFold')<CR>", { silent = true })
	Keymap("n", "zR", "<cmd>lua require('vscode').action('editor.unfoldAll')<CR>", { silent = true })
end

-- vs code only Keymaptings
-- if vim.g.vscode then
-- 	Keymap("n", "zM", "<cmd>lua require('vscode').action('editor.foldAll')<CR>", { silent = true })
-- 	Keymap("n", "zo", "<cmd>lua require('vscode').action('editor.unfold')<CR>", { silent = true })
-- 	Keymap("n", "zO", "<cmd>lua require('vscode').action('editor.unfoldRecursively')<CR>", { silent = true })
-- 	Keymap("n", "zc", "<cmd>lua require('vscode').action('editor.fold')<CR>", { silent = true })
-- 	Keymap("n", "zC", "<cmd>lua require('vscode').action('editor.foldRecursively')<CR>", { silent = true })
-- end
