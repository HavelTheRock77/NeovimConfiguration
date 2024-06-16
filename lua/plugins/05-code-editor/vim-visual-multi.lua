return {
	{
		"mg979/vim-visual-multi",
		branch = "master",
		init = function()
			vim.g.VM_maps = nil
			vim.g.VM_maps = {
				["Find Under"] = "<C-n>",
				["Find Subword Under"] = "<C-n>",
				["Select All"] = "<leader>A",
				["Add Cursor Down"] = "<C-A-j>",
				["Add Cursor Up"] = "<C-A-k>",
				["Mouse Cursor"] = "<C-LeftMouse>",
				["Mouse Word"] = "<C-RightMouse>",
				["Mouse Column"] = "<C-A-RightMouse>",
			}
		end,
	},
}
