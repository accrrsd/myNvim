require("config.variables")
require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.customcommands")
require("config.falldowncommands")

if not IsVsCode then
	vim.cmd("colorscheme onedark")
end

-- Optimize load time (check it in ready distros, like lazyVim and NvChad, LunarVim and AstroVim)
-- Разобраться с хоткеями language change key
-- Найти или написать плагин, который отобразит недавние папки (уже существует recent files)
-- В теории переписать конфиги плагинов, добавив ленивую загрузку и переделав config в opts, где это возможно.
