local lspconfig = require("lspconfig")

lspconfig.clangd.setup({})
lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
