vim.g.mapleader = " "

-- Nvim Tree
vim.keymap.set('n', "<leader>fn", ":NvimTreeOpen<CR>")
vim.keymap.set('n', "<leader>fc", ":NvimTreeClose<CR>")
vim.keymap.set('n', "<leader>fr", ":NvimTreeRefresh<CR>")
vim.keymap.set('n', "<leader>fo", ":NvimTreeFocus<CR>")

-- Tab Mappings
--
vim.keymap.set('n', "<leader>ta", vim.cmd.tabnew)
vim.keymap.set('n', "<leader>tn", vim.cmd.tabnext)
vim.keymap.set('n', "<leader>to", vim.cmd.tabonly)
vim.keymap.set('n', "<leader>tp", vim.cmd.tabprevious)
vim.keymap.set('n', "<leader>tc", vim.cmd.tabclose)
vim.keymap.set('n', "<leader>tmp", ":-tabmove<CR>")
vim.keymap.set('n', "<leader>tmn", ":+tabmove<CR>")
vim.keymap.set('n', "<leader>qa", ":CodeActionMenu<CR>")
--
vim.keymap.set('n', "<leader>so", ":so<CR>")
--
