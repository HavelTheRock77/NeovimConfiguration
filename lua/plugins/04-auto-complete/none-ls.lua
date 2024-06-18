return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.phpcbf,
				null_ls.builtins.formatting.prettier,
			},
		})
		Map("n", "<C-p>", vim.lsp.buf.format, true)
	end,
}
