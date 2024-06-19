-- Lazy
return {
	"vague2k/huez.nvim",
	-- if you want registry related features, uncomment this
	-- import = "huez-manager.import",
	config = function()
		require("huez").setup({
			fallback = "default",
		})
		Map("n", "<leader>c", ": Huez<CR>", true)
	end,
}
