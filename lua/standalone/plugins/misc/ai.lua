return {
  -- use for autocomplete
  {
    "Exafunction/codeium.nvim",
    -- event = { "BufReadPre", "BufNewFile" },
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        enable_cmp_source = true,
        virtual_text = {
          enabled = true,
          manual = false,
          filetypes = {
            markdown = false,
            text = false,
          },
          default_filetype_enabled = true,
          idle_delay = 70,
          virtual_text_priority = 65535,
          map_keys = true,
          accept_fallback = nil,
          key_bindings = {
            accept = "<Tab>",
            accept_word = false,
            accept_line = false,
            claer = false,
            -- M is alt key
            next = "<M-]>",
            prev = "<M-[>",
          },
        },
      })
    end,
  },

  -- use differnet AI for chatting and code changes, not autocomplete. CODECOMPANION
  -- {
  -- 	"olimorris/codecompanion.nvim",
  -- 	dependencies = {
  -- 		"nvim-lua/plenary.nvim",
  -- 		"nvim-treesitter/nvim-treesitter",
  -- 		"hrsh7th/nvim-cmp",
  -- 		"nvim-telescope/telescope.nvim",
  -- 		{ "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } }, -- markdown preview
  -- 		{ "stevearc/dressing.nvim", opts = {} },
  -- 	},
  -- 	config = function()
  -- 		require("codecompanion").setup({
  -- 			strategies = {
  -- 				chat = {
  -- 					adapter = "ollama",
  -- 				},
  -- 			},
  -- 			adapters = {
  -- 				qwc = function()
  -- 					return require("codecompanion.adapters").extend("ollama", {
  -- 						name = "qwc",
  -- 						schema = {
  -- 							model = {
  -- 								default = "qwc:latest",
  -- 							},
  -- 							num_ctx = {
  -- 								default = 16384,
  -- 							},
  -- 							num_predict = {
  -- 								default = -1,
  -- 							},
  -- 						},
  -- 						env = {
  -- 							url = "http://localhost:11434",
  -- 							-- api_key = "OLLAMA_API_KEY", --optional for authenicated remote
  -- 						},
  -- 						headers = {
  -- 							["Content-Type"] = "application/json",
  -- 							["Authorization"] = "Bearer ${api_key}",
  -- 						},
  -- 						parameters = {
  -- 							sync = true,
  -- 						},
  -- 					})
  -- 				end,
  -- 			},
  -- 			display = {
  -- 				chat = {
  -- 					render_headers = false, -- because i use render-markdown
  -- 				},
  -- 			},
  -- 			opts = {
  -- 				language = "English",
  -- 			},
  -- 		})
  -- 	end,
  -- },
}
