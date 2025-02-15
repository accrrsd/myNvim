local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  --pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 0,                         -- disable showing tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 200,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  softtabstop = 2,
  --cursorline = true,                       -- highlight the current line
  number = true,             -- set numbered lines
  relativenumber = true,     -- set relative numbered lines
  numberwidth = 2,           -- set number column width to 2 {default 4}

  signcolumn = "yes",        -- always show the sign column, otherwise it would shift the text each time
  wrap = true,               -- display lines as one long line
  linebreak = true,          -- companion to wrap, don't split words
  scrolloff = 16,            -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 16,        -- minimal number of screen columns either side of cursor if wrap is `false`
  guifont = "monospace:h17", -- the font used in graphical neovim applications
  -- whichwrap = "bs<>[]j;",                  -- which "horizontal" keys are allowed to travel to prev/next line
  --
  -- My additional settings
  --
  incsearch = true, -- search with regex
  breakindent = true,
  -- make stuff transparent
  pumblend = 0,
  winblend = 0,
  -- spell checking
  spell = true,
  spelllang = { "en_us", "ru_ru" },
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

local function escape(str)
  -- You need to escape these characters to work correctly
  local escape_chars = [[;,."|\]]
  return vim.fn.escape(str, escape_chars)
end

-- Recommended to use lua template string
local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm]]
local ru = [[ёйцукенгшщзхъфывапролджэячсмить]]
local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]

vim.opt.langmap = vim.fn.join({
  -- | `to` should be first     | `from` should be second
  escape(ru_shift)
  .. ";"
  .. escape(en_shift),
  escape(ru) .. ";" .. escape(en),
}, ",")

-- vim.opt.shortmess = "ilmnrx"                        -- flags to shorten vim messages, see :help 'shortmess'
vim.opt.shortmess:append("c")                   -- don't give |ins-completion-menu| messages
vim.opt.iskeyword:append("-")                   -- hyphenated words recognized by searches
vim.opt.formatoptions:remove({ "c", "r", "o" }) -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.

-- neovide specific
if vim.g.neovide then
  vim.g.neovide_transparency = 0.9
  vim.g.neovide_background_color = "#000000"
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0
end
