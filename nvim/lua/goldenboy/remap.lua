vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

vim.keymap.set("n","<C-u>","<C-u>zz")
vim.keymap.set("n","<C-d>","<C-d>zz")

-- move auto indent --
vim.keymap.set("v","J",":m '>+1<CR>gv=gv")
vim.keymap.set("v","K",":m '<-2<CR>gv=gv")

-- dont fill delete buffer on paster --
vim.keymap.set("x", "<leader>p", "\"_dP")

-- <leader>+y will yank to the system clipboard instead of the vim clipboard --
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- do the same for <leader>d --
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- remap exit for veticle line edit to crtl c --
vim.keymap.set("i", "<C-c>", "<Esc>")

-- easy search and replace --
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>b", ":!./build.sh<CR>")
vim.keymap.set("n", "<leader>ma", ":!make all<CR>")
vim.keymap.set("n", "<leader>mi", ":!make insert<CR>")
vim.keymap.set("i", "<C-f>", "<right>")
vim.keymap.set("i", "<C-b>", "<left>")
