require("config.variables")
require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.customcommands")

if not IsVsCode then
	require("onedark").load()
end

-- Добавить это все в гит, но прежде локально скопировать изменения.
-- Найти или написать плагин, который отобразит недавние папки (уже существует recent files)
-- В теории переписать конфиги плагинов, добавив ленивую загрузку и переделав config в opts, где это возможно.
