return {
  "ThePrimeagen/harpoon",
  enabled = not IsVsCode,
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
          .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
              results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
          })
          :find()
    end

    vim.keymap.set("n", "<leader>hl", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Open harpoon list" })

    vim.keymap.set("n", "<leader>hh", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Open harpoon quick menu" })

    vim.keymap.set("n", "<leader>hm", function()
      harpoon:list():append()
    end, { desc = "Mark file with harpoon" })

    vim.keymap.set("n", "<leader>hr", function()
      harpoon:list():remove()
    end, { desc = "Remove file from harpoon" })

    vim.keymap.set("n", "<leader>hf", function()
      local num = vim.fn.input("Enter file number: ")
      local file_num = tonumber(num)
      if file_num then
        harpoon:list():select(file_num)
      else
        print("Invalid number")
      end
    end, { desc = "Go to file by number" })

    vim.keymap.set("n", "<leader>hR", function()
      local num = vim.fn.input("Enter file number: ")
      local file_num = tonumber(num)
      if file_num then
        harpoon:list():removeAt(file_num)
      else
        print("Invalid number")
      end
    end, { desc = "Remove file by number" })
  end,
}
