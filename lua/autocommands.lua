

local augroup = vim.api.nvim_create_augroup('AutoSaveGroup', {})

vim.api.nvim_clear_autocmds({ group = augroup })

vim.api.nvim_create_autocmd('BufLeave', {
	group = augroup,
	pattern = '*',
	callback = function()
		if vim.bo.modified then
			vim.cmd([[ silent! write ]])
		end
	end
})
