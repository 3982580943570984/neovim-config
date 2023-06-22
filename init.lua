-- Basic setup

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.foldmethod = "indent"

require("core.manager")
require("core.mappings")

-- Plugins setup

require("plugins.autopair")
require("plugins.bufferline")
-- require("plugins.cmp")
require("plugins.colorizer")
require("plugins.comment")
require("plugins.coq")
require("plugins.dashboard")
require("plugins.mason")
require("plugins.nullls")
require("plugins.lsp")
require("plugins.lualine")
require("plugins.nvimtree")
require("plugins.telescope")
require("plugins.theme")
require("plugins.treesitter")
require("plugins.ufo")
