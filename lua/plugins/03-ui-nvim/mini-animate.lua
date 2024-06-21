return {
	"echasnovski/mini.animate",
	version = "*",
	config = function()
		local animate = require("mini.animate")

		animate.setup({
			scroll = {
				enabled = false
			}
		})
	end,
}
