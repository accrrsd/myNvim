vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.keymap = "russian-jcukenwin"
vim.cmd("set clipboard=unnamed")

vim.wo.number = true
vim.wo.relativenumber = true

vim.api.nvim_create_user_command("Config", "edit ~/AppData/Local/nvim/init.lua", {})
