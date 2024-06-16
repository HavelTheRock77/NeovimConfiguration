return{
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require('oil').setup({
			default_file_explorer = false
		})
		Map("n", "<leader>o", ":Oil <CR>", true)
	end
}