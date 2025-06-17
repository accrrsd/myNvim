local vscode = require("vscode")
vim.notify = vscode.notify

-- general
require("general.config.falldowncommands")
require("general.config.keymaps")
require("general.config.options")
require("general.config.customcommands")

-- vscodeNeovim
require("vscodeNeovim.config.customcommands")
require("vscodeNeovim.config.options")
require("vscodeNeovim.config.keymaps")
require("vscodeNeovim.config.lazy")

require("langmapper").automapping({ global = true, buffer = true })
