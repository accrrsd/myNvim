return {
  "Djancyp/better-comments.nvim",
  enabled = not IsVsCode,
  config = function()
    require("better-comment").Setup({
      tags = {
        {
          name = "!",
          fg = "#FF2D00",
          bg = "",
        },
        {
          name = "?",
          fg = "#3498DB",
          bg = "",
        },
        {

          name = "todo",
          fg = "#FF8C00",

        },
        bg = "",
      },
    })
  end,
}
