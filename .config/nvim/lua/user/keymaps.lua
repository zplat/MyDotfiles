local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
--keymap("", "<Space>", " ", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Rehize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

keymap("n", "<leader>;", "<cmd>qa!<CR>", opts)
keymap("n", "<leader>]", "<cmd>q!<CR>", opts)
keymap("n", "<leader>w", "<cmd>w<CR>", opts)

-- Telescope
keymap('n', '<leader>ff', '<cmd>lua require"telescope.builtin".find_files(require("telescope.themes").get_dropdown({ previewer = false, hidden = true, file_ignore_patterns = {".git", "vendor", "node_modules"} }))<cr>', opts)
keymap('n', '<leader>fb', '<cmd>Telescope git_branches<cr>', opts)
keymap('n', '<leader>fs', '<cmd>Telescope git_status<cr>', opts)

-- hop
keymap('', 'f', '<cmd>HopChar1CurrentLine<cr>', opts)
keymap('', 'F', '<cmd>HopChar2CurrentLine<cr>', opts)
keymap('', '<leader>al', '<cmd>HopChar2<cr>', opts)
keymap('', '<leader>aw', '<cmd>HopWord<cr>', opts)
keymap('', '<leader>aa', '<cmd>HopChar1<cr>', opts)

-- dap debug
keymap('n', '<F5>', ":lua require'dap'.continue()<cr>", opts)
keymap('n', '<F10>', ":lua require'dap'.step_over()<cr>", opts)
keymap('n', '<F11>', ":lua require'dap'.step_into()<cr>", opts)
keymap('n', '<F12>', ":lua require'dap'.step_out()<cr>", opts)
keymap('n', '<leader>b', ":lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap('n', '<leader>B', ":lua require'dap'.set_breakpont(vim.fn.input('Breakpoint condition: '))<cr>", opts)
keymap('n', '<leader>lp', ":lua require'dap'.set_breakpont(nil, nil, vim.fn.input(Log point message: '))<cr>", opts)
keymap('n', '<leader>dr', ":lua require'dap'.repl.open()<cr>", opts)

