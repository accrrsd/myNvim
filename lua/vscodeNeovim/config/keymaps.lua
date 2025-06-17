local vscode = require("vscode")
Keymap = vim.keymap.set
local o = { noremap = true, silent = true, desc = "" }

o.desc = "previous tab"
Keymap("n", "<M-u>", function() vscode.action("workbench.action.previousEditor") end, o)
o.desc = "next tab"
Keymap("n", "<M-p>", function() vscode.action("workbench.action.nextEditor") end, o)

o.desc = "close current tab"
Keymap("n", "<leader>bc", function() vscode.action("workbench.action.closeActiveEditor") end, o)
o.desc = "force close current tab"
Keymap("n", "<leader>bd", function() vscode.action("workbench.action.revertAndCloseActiveEditor") end, o)

o.desc = "prev suggestion"
Keymap("i", "<M-k>", function() vscode.action("selectNextSuggestion") end, o)
o.desc = "next suggestion"
Keymap("i", "<M-l>", function() vscode.action("selectPrevSuggestion") end, o)

o.desc = "comment line"
Keymap("n", "gc", function() vscode.action("editor.action.commentLine") end, o)

-- o.desc = "comment line"
-- Keymap("n", "gcc", function() vscode.action("editor.action.commentLine") end, o)
-- o.desc = "comment selected"
-- Keymap("v", "gc", function() vscode.action("editor.action.commentLine") end, o)

o.desc = "toggle side bar"
Keymap("n", "<leader>e", function() vscode.action("workbench.action.toggleSidebarVisibility") end, o)

o.desc = "search file"
Keymap("n", "<leader>ff", function() vscode.action("workbench.action.files.openFile") end, o)



-- todo добавить shift k аналог и alt down up для выбора предлагаемого текста.