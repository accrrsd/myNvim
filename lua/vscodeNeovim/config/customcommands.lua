local vim_config_path = vim.fn.stdpath("config")

vim.api.nvim_create_user_command("Config", function()
  vim.cmd("edit " .. vim_config_path)
end, {})
