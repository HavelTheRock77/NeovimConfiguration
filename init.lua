require("settings")
require("keymaps")
require("autocommands")
require("lazy-config")

require("lazy").setup({
	spec = {
		{ import = "plugins.01-colorschemes" },
		{ import = "plugins.02-file-explorer" },
		{ import = "plugins.03-ui-nvim" },
		{ import = "plugins.04-auto-complete" },
		{ import = "plugins.05-code-editor" },
		{ import = "plugins.06-git-integration" },
	},
})
