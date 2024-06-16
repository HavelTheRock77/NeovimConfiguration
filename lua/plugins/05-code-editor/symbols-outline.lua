return {
	"simrat39/symbols-outline.nvim",
	config = function()
		require("symbols-outline").setup()
		Map("n", "<leader>s", ":SymbolsOutline<CR>", true)
	end,
}
