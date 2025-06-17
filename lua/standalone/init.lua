-- general
require("general.config.falldowncommands")
require("general.config.keymaps")
require("general.config.options")
require("general.config.customcommands")

-- standalone
require("standalone.config.customcommands")
require("standalone.config.options")
require("standalone.config.keymaps")
require("standalone.config.lazy")
require("standalone.config.falldowncommands")

vim.cmd("colorscheme onedark")
vim.cmd("highlight! link FloatBorder Normal")
vim.cmd("highlight! link NormalFloat Normal")
vim.cmd("highlight! link Pmenu Normal")

require("langmapper").automapping({ global = true, buffer = true })
