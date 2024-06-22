return{
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local oil = require('oil')
		oil.setup({
			default_file_explorer = false
		})
		Map("n", "<leader>o", oil.toggle_float, true)
	end
}
