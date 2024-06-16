
require('settings')
require('keymaps')
require('autocommands')
require('lazy-config')

require("lazy").setup({
	{ 
		"catppuccin/nvim", name = "catppuccin", priority = 1000 
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {}
		end,
	}
})

vim.cmd.colorscheme('catppuccin')
