vim.g.mapleader = " "

function Map(mode, lhs, rhs, is_noremap)
	vim.keymap.set(mode, lhs, rhs, { noremap = is_noremap, silent = true })
end

Map("n", "<leader>w", ":silent! w<CR>")
Map("n", "<leader>W", ":wq<CR>")
Map("n", "<leader>Q", ":q<CR>")
Map("n", "<leader>/", ":sp<CR>")
Map("n", "<leader>\\", ":vs<CR>")
Map("n", "<leader>l", ":bn<CR>")
Map("n", "<leader>h", ":bp<CR>")
Map("n", "<leader>q", ":bd<CR>")
Map("n", "<up>", "<nop>", true)
Map("n", "<down>", "<nop>", true)
Map("n", "<left>", "<nop>", true)
Map("n", "<right>", "<nop>", true)
Map("n", "<left>", ":vertical resize +5<CR>", true)
Map("n", "<right>", ":vertical resize -5<CR>", true)
Map("n", "<up>", ":resize -5<CR>", true)
Map("n", "<down>", ":resize +5<CR>", true)
Map("n", "<A-j>", ":m .+1<CR>==", true)
Map("v", "<A-j>", ":m '>+1<CR>gv=gv", true)
Map("v", "<A-k>", ":m '<-2<CR>gv=gv", true)
Map("n", "<A-k>", ":m .-2<CR>==", true)
Map("n", "<A-v>", "<c-v>", true)
Map("v", ">", ">gv")
Map("v", "<", "<gv")
Map( { "n", "v" }, "<ScrollWheelUp>", "10<C-y>")
Map( { "n", "v" }, "<ScrollWheelDown>", "10<C-e>")
