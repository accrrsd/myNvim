Keymap = vim.keymap.set
local o = { noremap = true, silent = true, desc = "" }

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

-- Resize with arrows
Keymap("n", "<C-Up>", ":resize -2<CR>", o)
Keymap("n", "<C-Down>", ":resize +2<CR>", o)
Keymap("n", "<C-Left>", ":vertical resize -2<CR>", o)
Keymap("n", "<C-Right>", ":vertical resize +2<CR>", o)

o.desc = "exit terminal mode"
Keymap("t", "<Esc><Esc>", "<C-\\><C-n>")

o.desc = "replace word inside file"
Keymap("n", "<leader><leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], o)

o.desc = "open in file explorer"
Keymap("n", "<leader><leader>e", ":!start .<CR>", o)

o.desc = "return to title screen"
Keymap("n", "<leader><leader>q", ":Alpha<CR>")
