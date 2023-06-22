local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{ "nvim-treesitter/nvim-treesitter" },
	{ "neovim/nvim-lspconfig" },
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
	},

	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{ "lewis6991/gitsigns.nvim" },
	{ "SirVer/ultisnips" },
	{ "quangnguyen30192/cmp-nvim-ultisnips" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{ "ms-jpq/coq_nvim", branch = "coq" },
	{ "ms-jpq/coq.artifacts", branch = "artifacts" },
	{ "ms-jpq/coq.thirdparty", branch = "3p" },

	{ "glepnir/dashboard-nvim", event = "VimEnter", dependencies = { { "nvim-tree/nvim-web-devicons" } } },
	{ "akinsho/bufferline.nvim", version = "*", dependencies = { { "nvim-tree/nvim-web-devicons" } } },

	{ "kaicataldo/material.vim" },

	{ "jose-elias-alvarez/null-ls.nvim" },

	{ "nvim-lualine/lualine.nvim", dependencies = {
		"nvim-tree/nvim-web-devicons",
	} },

	{ "NvChad/nvim-colorizer.lua" },
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "windwp/nvim-autopairs", event = "InsertEnter" },
	{ "numToStr/Comment.nvim" },
	{ "akinsho/toggleterm.nvim", version = "*", config = true },

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	},
	{ "kevinhwang91/nvim-ufo", dependencies = { {
		"kevinhwang91/promise-async",
	} } },

	{ "neoclide/coc.nvim", branch = "release" },
})
