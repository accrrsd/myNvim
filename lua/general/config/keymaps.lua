Keymap = vim.keymap.set
local o = { noremap = true, silent = true, desc = "" }

-- Keymap leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

Keymap("n", "s", "<Nop>", o)
-- Shorten function name
Keymap("", "<Space>", "<Nop>", o)

-- redo
Keymap("n", "U", "<C-r>", o)

-- change movement keys to fit blind wrtining
Keymap({ "n", "v", "t" }, "j", "h")
Keymap({ "n", "v", "t" }, "k", "j")
Keymap({ "n", "v", "t" }, "l", "k")
Keymap({ "n", "v", "t" }, ";", "l")

-- Move text up and down in normal mode
o.desc = ""
Keymap("n", "<M-l>", ":m .-2<CR>==", o)
Keymap("n", "<M-k>", ":m .+1<CR>==", o)

-- Move text up and down in other modes
Keymap({ "x", "v" }, "<M-l>", ":m '<-2<CR>gv=gv", o)
Keymap({ "x", "v" }, "<M-k>", ":m '>+1<CR>gv=gv", o)
-- Keymap({ "x", "v" }, "L", ":m '<-2<CR>gv=gv", o)
-- Keymap({ "x", "v" }, "K", ":m '>+1<CR>gv=gv", o)

-- Stay in indent mode
Keymap("v", "<", "<gv^", o)
Keymap("v", ">", ">gv^", o)

-- because of change of movement, we need to change hotkey for movement to next
Keymap("n", "'", ";")

-- repeat previous f, t, F or T movement
Keymap('n', '\'', ';')

-- removes highlighting after escaping vim search
Keymap("n", "<Esc>", "<Esc>:noh<CR>", o)

-- skip folded regions
Keymap("n", "k", "gj")
Keymap("n", "l", "gk")

Keymap("n", "<leader>o", "O<ESC>o")

-- o.desc = "change language"
--_both keymaps works, first for insert in diff language, second for change language when you already in insert mode, i prefer second
--Keymap({ "n", "x" }, "<leader>ll", "i_<C-^>")
-- Keymap("i", "<C-l>", "<C-^>", o)

-- stringify that stroke and below
Keymap("n", "J", "mzJ`z")

-- stay same place when cursor move between pages
Keymap("n", "<C-d>", "<C-d>zz")
Keymap("n", "<C-u>", "<C-u>zz")

-- search with cursor in middle
Keymap("n", "n", "nzzzv")
Keymap("n", "N", "Nzzzv")