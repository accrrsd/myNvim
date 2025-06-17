-- analogue for no next line comment
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

-- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.timeoutlen = 200