return {
  "skwee357/nvim-prose",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    return require("nvim-prose").setup({
      wpm = 200.0,
      filetypes = { "markdown", "asciidoc", "text" },
      placeholders = {
        words = "words",
        minutes = "min",
      },
    })
  end,
}
