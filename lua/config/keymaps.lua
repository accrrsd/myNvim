Keymap = vim.keymap.set
o = { noremap = true, silent = true, desc = "" }

-- Keymap leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

Keymap("n", "s", "<Nop>", o)
-- Shorten function name
Keymap("", "<Space>", "<Nop>", o)

-- redo
Keymap("n", "U", "<C-r>", o)

o.desc = ""
-- return to title screen
Keymap("n", "<leader><leader>q", ":Alpha<CR>")

-- change movement keys to fit blind wrtining
Keymap({ "n", "v", "t" }, "j", "h")
Keymap({ "n", "v", "t" }, "k", "j")
Keymap({ "n", "v", "t" }, "l", "k")
Keymap({ "n", "v", "t" }, ";", "l")

-- better window navigation
o.desc = "move to left window"
Keymap("n", "<C-w>j", "<C-w>h", o)
o.desc = "move to down window"
Keymap("n", "<C-w>k", "<C-w>j", o)
o.desc = "move to up window"
Keymap("n", "<C-w>l", "<C-w>k", o)
o.desc = "move to right window"
Keymap("n", "<C-w>;", "<C-w>l", o)

-- Navigate buffers
o.desc = "close buffer"
Keymap("n", "<leader>bc", ":bd<CR>", o)
o.desc = "force close buffer"
Keymap("n", "<leader>bd", ":bd!<CR>", o)

o.desc = "new buffer"
Keymap("n", "<leader>bn", ":enew<CR>", o)

o.desc = "previous buffer"
Keymap("n", "<M-u>", ":bprevious<CR>", o)
o.desc = "next buffer"
Keymap("n", "<M-p>", ":bnext<CR>", o)

-- split keymaps
o.desc = "vertical split"
Keymap("n", "<C-w>sv", ":vsplit<CR>", o)
o.desc = "horizontal split"
Keymap("n", "<C-w>sh", ":split<CR>", o)

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

-- Resize with arrows
Keymap("n", "<C-Up>", ":resize -2<CR>", o)
Keymap("n", "<C-Down>", ":resize +2<CR>", o)
Keymap("n", "<C-Left>", ":vertical resize -2<CR>", o)
Keymap("n", "<C-Right>", ":vertical resize +2<CR>", o)

-- removes highlighting after escaping vim search
Keymap("n", "<Esc>", "<Esc>:noh<CR>", o)

-- skip folded regions
Keymap("n", "k", "gj")
Keymap("n", "l", "gk")

Keymap("n", "<leader>o", "O<ESC>o")

o.desc = "change language"
--_both keymaps works, first for insert in diff language, second for change language when you already in insert mode, i prefer second
--Keymap({ "n", "x" }, "<leader>ll", "i_<C-^>")
Keymap("i", "<C-l>", "<C-^>", o)

o.desc = "open in file explorer"
Keymap("n", "<leader><leader>e", ":!start .<CR>", o)

-- stringify that stroke and below, DISABLED in test
Keymap("n", "J", "mzJ`z")

-- stay same place when cursor move between pages
Keymap("n", "<C-d>", "<C-d>zz")
Keymap("n", "<C-u>", "<C-u>zz")

-- search with cursor in middle
Keymap("n", "n", "nzzzv")
Keymap("n", "N", "Nzzzv")

-- exit terminal mode
Keymap("t", "<Esc><Esc>", "<C-\\><C-n>")

o.desc = "replace word inside file"

-- search and replace word im on
Keymap("n", "<leader><leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], o)
