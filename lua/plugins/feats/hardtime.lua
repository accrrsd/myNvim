return {
  "m4xshen/hardtime.nvim",
  event = "BufRead",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    disabled_filetypes = { "qf", "netrw", "neo-tree", "neo-tree-popup", "lazy", "mason", "oil", "Alpha" },
  },
}
