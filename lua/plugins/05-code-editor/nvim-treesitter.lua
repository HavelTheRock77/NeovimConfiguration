return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"html",
					"php",
					"css",
					"javascript",
					"typescript",
					"tsx",
					"lua",
					"json",
					"git_config",
					"git_rebase",
					"vue",
					"sql",
					"scss",
					"svelte",
					"vim",
					"markdown_inline",
					"bash",
				}, -- one of "all" or a list of languages
				modules = {},
				sync_install = true,
				auto_install = true,
				ignore_install = {},
				highlight = {
					enable = true, -- false will disable the whole extension
					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = true,
				},
				playground = {
					enable = true,
					disable = {},
					updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
					persist_queries = false, -- Whether the query persists across vim sessions
				},
				refactor = {
					highlight_definitions = { enable = true },
				},
			})
			local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
			parser_config.blade = {
				install_info = {
					url = "https://github.com/EmranMR/tree-sitter-blade",
					files = { "src/parser.c" },
					branch = "main",
				},
				filetype = "blade",
			}

			vim.filetype.add({
				pattern = {
					[".*%.blade%.php"] = "blade",
				},
			})

			vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
				pattern = { "*.norg" },
				command = "set conceallevel=3",
			})
		end,
	},
}
