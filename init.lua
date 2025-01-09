require("config.customcommands")
require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.falldowncommands")

vim.cmd("colorscheme onedark")
vim.cmd("highlight! link FloatBorder Normal")
vim.cmd("highlight! link NormalFloat Normal")
vim.cmd("highlight! link Pmenu Normal")

require("langmapper").automapping({ global = true, buffer = true })
