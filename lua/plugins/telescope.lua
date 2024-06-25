local builtin = require("telescope.builtin")
-- ctrl p - find file
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
-- \fg - find file by text
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
