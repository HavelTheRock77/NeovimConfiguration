return {
	"adalessa/laravel.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"tpope/vim-dotenv",
		"MunifTanjim/nui.nvim",
		"nvimtools/none-ls.nvim",
		"nvim-telescope/telescope.nvim",
		"rcarriga/nvim-notify",
	},
	cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
	keys = {
		{ "<leader>ar", ":Laravel artisan<cr>" },
		{ "<leader>ro", ":Laravel routes<cr>" },
	},
	config = true,
}
