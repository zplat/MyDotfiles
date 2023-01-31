local o = vim.opt

local options = {
  -----------------------------------------------------------
  -- General
  -----------------------------------------------------------
  mouse = 'a', -- enable mouse support
  clipboard = 'unnamedplus', -- copy/paste to system clipboard
  showtabline = 2, -- always show tabs
  pumheight = 10, -- pop up menu height
  conceallevel = 0, -- so that `` is visible in markdown files
  fileencoding = "utf-8", -- the encoding written to a file
  showmode = false, -- we don't need to see things like -- INSERT -- anymore
  spelllang = "en", -- spell checker languages

  -----------------------------------------------------------
  -- Neovim UI
  -----------------------------------------------------------

  number = true, -- show line number
  relativenumber = true, -- set relative numbered lines
  -- colorcolumn = '80',         -- line length marker at 80 columns
  smartcase = true, -- ignore lowercase for the whole pattern
  linebreak = true, -- wrap on word boundary
  ignorecase = true, -- ignore case letters when search
  foldmethod = 'marker', -- enable folding (default 'foldmarker')
  splitright = true, -- vertical split to the right
  splitbelow = true, -- orizontal split to the bottom
  showmatch = true, -- highlight matching parenthesis
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  wrap = false, -- display lines as one long line
  numberwidth = 4, -- set number column width to 2 {default 4}
  cursorline = true, -- highlight the current line
  scrolloff = 8, -- is one of my fav
  sidescrolloff = 8,

  -----------------------------------------------------------
  -- Memory, CPU
  -----------------------------------------------------------
  lazyredraw = true, -- faster scrolling
  swapfile = false, -- don't use swapfile
  history = 100, -- remember n lines in history
  hidden = true, -- enable background buffers
  synmaxcol = 240, -- max column for syntax highlight
  backup = false, -- creates a backup file
  cmdheight = 2, -- more space in the neovim command line for displaying messages
  timeoutlen = 500, -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true, -- enable persistent undo
  updatetime = 300, -- faster completion (4000ms default)
  writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

  shm = "c", --avoid all the hit-enter prompts caused by file messages

  -----------------------------------------------------------
  -- Colorscheme
  -----------------------------------------------------------
  termguicolors = true, -- enable 24-bit RGB colors
  --  guifont = "monospace:h17",    -- the font used in graphical neovim applications

  -----------------------------------------------------------
  -- Tabs, indent
  -----------------------------------------------------------
  expandtab = true, -- use spaces instead of tabs
  shiftwidth = 4, -- shift 4 spaces when tab
  tabstop = 4, -- 1 tab == 4 spaces
  smartindent = true, -- autoindent new lines

  -----------------------------------------------------------
  -- Autocompletion
  -----------------------------------------------------------
  -- insert mode completion options
  completeopt = 'menuone,noselect',
  hlsearch = true, -- highlight all matches on previous search pattern

  -----------------------------------------------------------
  -- Terminal
  -----------------------------------------------------------

  -----------------------------------------------------------
  -- Startup
  -----------------------------------------------------------
  -- disable nvim intro
  -- shortmess:append "sI",

}

--avoid all the hit-enter prompts caused by file messages
--vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  o[k] = v
end

-- move to the previous/next line after reaching first/last character in the line.
--vim.cmd "set whichwrap+=<,>,[,],h,l"
o.whichwrap:append {
  ['<'] = true,
  ['>'] = true,
  ['['] = true,
  [']'] = true,
  h = true,
  l = true,
}
-- allows the user to denote what should or should not be treated as part of a word.
--vim.cmd [[set iskeyword+=-]]
--o.iskeyword:append("-","[","]")
o.iskeyword:append{
    ['-'] = true,
    [']'] = true,
    ['['] = true,
}

