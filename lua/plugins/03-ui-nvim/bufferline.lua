return{
	'akinsho/bufferline.nvim', 
	version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function ()
		require('bufferline').setup({
			options = {
				numbers = "none",
				middle_mouse_command = nil,
				indicator_icon = "▎",
				buffer_close_icon = "❌",
				modified_icon = "🟢",
				close_icon = "",
				left_trunc_marker = "",
				right_trunc_marker = "",
				max_name_length = 30,
				max_prefix_length = 30,
				tab_size = 21,
				show_buffer_close_icons = true,
				show_close_icon = true,
				show_tab_indicators = true,
				persist_buffer_sort = true,
				separator_style = "thin",
				enforce_regular_tabs = true,
				always_show_bufferline = true,
			}
		})
	end
}
