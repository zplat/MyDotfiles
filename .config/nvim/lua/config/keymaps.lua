-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Movement of lines up and down
vim.keymap.set("n", "<A-J>", ":m .+1<CR>==") -- move line up(n)
vim.keymap.set("n", "<A-K>", ":m .-2<CR>==") -- move line down(n)
vim.keymap.set("v", "<A-J>", ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<A-K>", ":m '<-2<CR>gv=gv") -- move line down(v)
