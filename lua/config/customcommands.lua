-- setup nvim config path for command
local vim_config_path
if vim.fn.has("win16") > 0 or vim.fn.has("win32") > 0 or vim.fn.has("win64") > 0 then
	vim_config_path = "~\\AppData\\Local\\nvim\\init.lua"
else
	vim_config_path = "~/.config/nvim/init.lua"
end

-- setup wezterm config path for command
local wezterm_config_path
if vim.fn.has("win16") > 0 or vim.fn.has("win32") > 0 or vim.fn.has("win64") > 0 then
	wezterm_config_path = "~\\.config\\wezterm\\wezterm.lua"
else
end

vim.api.nvim_create_user_command("Config", function()
	vim.cmd("cd " .. vim.fn.fnamemodify(vim_config_path, ":h"))
	vim.cmd("edit " .. vim_config_path)
	vim.cmd("Telescope find_files")
end, {})

vim.api.nvim_create_user_command("WezConfig", function()
	if not wezterm_config_path then
		return
	end
	vim.cmd("cd " .. vim.fn.fnamemodify(wezterm_config_path, ":h"))
	vim.cmd("edit " .. wezterm_config_path)
end, {})

vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- format on save
if not IsVsCode then
	vim.api.nvim_create_autocmd("LspAttach", {
		group = vim.api.nvim_create_augroup("lsp", { clear = true }),
		callback = function(args)
			-- 2
			vim.api.nvim_create_autocmd("BufWritePre", {
				-- 3
				buffer = args.buf,
				callback = function()
					-- 4 + 5
					vim.lsp.buf.format({ async = false, id = args.data.client_id })
				end,
			})
		end,
	})
end
