local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	--[[
	{ "ms-jpq/coq_nvim", branch = "coq", event = "InsertEnter" },
	{ "ms-jpq/coq.artifacts", branch = "artifacts", event = "InsertEnter" },
	{ "ms-jpq/coq.thirdparty", branch = "3p", event = "InsertEnter" },
	]]

	{ "nvim-treesitter/nvim-treesitter", event = "VeryLazy" },
	{ "williamboman/mason.nvim", build = ":MasonUpdate", event = "VeryLazy" },
	{ "neovim/nvim-lspconfig" },
	{ "neoclide/coc.nvim", branch = "release", event = "VeryLazy" },
	{ "jose-elias-alvarez/null-ls.nvim", event = "VeryLazy" },
	{ "lewis6991/gitsigns.nvim", event = "VeryLazy" },
	{ "lukas-reineke/indent-blankline.nvim", event = "VeryLazy" },
	{ "windwp/nvim-autopairs", event = "InsertEnter" },
	{ "numToStr/Comment.nvim", event = "VeryLazy" },
	{ "kevinhwang91/nvim-ufo", dependencies = { "kevinhwang91/promise-async" } },
	{ "andweeb/presence.nvim", event = "VeryLazy" },
	{ "kaicataldo/material.vim", event = "VeryLazy" },
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		event = "VeryLazy",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		event = "VeryLazy",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
})
