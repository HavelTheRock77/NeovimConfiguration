return {

	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
		"folke/trouble.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		--NOTE: comments
		--TODO: comments
		--WARN: comments
		require("todo-comments").setup()

		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local transform_mod = require("telescope.actions.mt").transform_mod

		local trouble = require("trouble")
		local trouble_telescope = require("trouble.sources.telescope")

		-- or create your custom action
		local custom_actions = transform_mod({
			open_trouble_qflist = function(prompt_bufnr)
				trouble.toggle("quickfix")
			end,
		})

		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					"node_modules",
					"vendor",
				},
				-- path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
						["<C-t>"] = trouble_telescope.open,
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({})
					}
				}
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")
		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>p", "<cmd>Telescope find_files theme=dropdown<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles theme=dropdown<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fl", "<cmd>Telescope live_grep theme=dropdown<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>F", "<cmd>Telescope grep_string theme=dropdown<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope theme=dropdown<cr>", { desc = "Find todos" })
	end,
}
