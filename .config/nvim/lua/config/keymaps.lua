-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Movement of lines up and down
vim.keymap.set("n", "<A-J>", ":m .+1<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-K>", ":m .-2<CR>==") -- move line down(n)
vim.keymap.set("v", "<A-J>", ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<A-K>", ":m '<-2<CR>gv=gv") -- move line down(v)

vim.keymap.set("n", "<leader>tp", ":FloatermPrev ") -- Floaterm previous screen(n)
vim.keymap.set("n", "<leader>tt", ":FloatermToggle ") -- Floaterm toggle screen(n)
vim.keymap.set("n", "<leader>th", ":FloatermHide ") -- Floaterm hide all screens(n)
vim.keymap.set("n", "<leader>tf", ":FloatermNext ") -- Floaterm next screen(n)
vim.keymap.set("n", "<leader>tn", ":FloatermNew ") -- Floaterm new screen(n)
