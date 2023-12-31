vim.opt.list = true
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup({
	show_end_of_line = true,
	buftype_exclude = { "terminal" },
	filetype_exclude = { "dashboard" },
})
