--[[ Basic setup --]]
vim.g.python3_host_prog = "C:\\Python311\\python.exe"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = false
vim.opt.foldmethod = "indent"
vim.opt.wrap = false
vim.opt.swapfile = false

require("core.manager")
require("core.mappings")

--[[ Plugins setup --]]

-- require("plugins.coq")

require("plugins.autopair")
require("plugins.bufferline")
require("plugins.coc")
require("plugins.comment")
require("plugins.dashboard")
require("plugins.indent")
require("plugins.mason")
require("plugins.nullls")
require("plugins.lsp")
require("plugins.lualine")
require("plugins.nvimtree")
require("plugins.presence")
require("plugins.telescope")
require("plugins.theme")
require("plugins.treesitter")
require("plugins.ufo")
