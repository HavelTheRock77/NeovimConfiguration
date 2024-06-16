---@diagnostic disable: missing-fields
return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			local mason = require("mason")
			local mason_lspconfig = require("mason-lspconfig")

			mason.setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})

			mason_lspconfig.setup({
				ensure_installed = {
					"tsserver",
					"html",
					"cssls",
					"tailwindcss",
					"lua_ls",
					"emmet_ls",
					"phpactor",
				},
			})
		end,
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup()

			require("mason-null-ls").setup({
				ensure_installed = {
					"stylua",
					"phpcbf",
				},
				handlers = {
					function() end,
					stylua = function()
						null_ls.register(null_ls.builtins.formatting.stylua)
					end,
					phpcbf = function()
						null_ls.register(null_ls.builtins.formatting.phpcbf)
					end,
				},
			}) -- require your null-ls config here (example below)
		end,
		Map("n", "<C-g>", vim.lsp.buf.format),
	},
}
