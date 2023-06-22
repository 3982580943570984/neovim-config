local lspconfig = require("lspconfig")
local coq = require("coq")

lspconfig.clangd.setup(coq.lsp_ensure_capabilities({}))

lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
}))

vim.cmd("COQnow -s")
