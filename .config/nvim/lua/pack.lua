local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
           "git",
           "clone",
           "--depth",
           "1",
           "https://github.com/savq/paq-nvim.git",
           install_path,
      })
end
  
vim.api.nvim_command("packadd paq-nvim")

require 'paq' {
    -- cmp plugins
    -- package manager, Paq manages itself 
     "savq/paq-nvim";
     -- for other applications
     "nvim-lua/plenary.nvim";
    -- cmp plugins
     "hrsh7th/nvim-cmp"; -- The completion plugin
     "hrsh7th/cmp-buffer"; -- buffer completions
     "hrsh7th/cmp-path"; -- path completions
     "hrsh7th/cmp-cmdline"; -- cmdline completions
     "saadparwaiz1/cmp_luasnip"; -- snippet completions
     "hrsh7th/cmp-nvim-lsp";       
    -- Auto pair { ( [ ' "
     "windwp/nvim-autopairs";
     
     -- snippets
     "L3MON4D3/LuaSnip"; --snippet engine
     "rafamadriz/friendly-snippets"; -- a bunch of snippets to use
    -- LSP
     "neovim/nvim-lspconfig";
     "williamboman/nvim-lsp-installer";
     "jose-elias-alvarez/null-ls.nvim";
    -- Treesitter
     { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" };
    -- treesitter
     "nvim-telescope/telescope.nvim";
    -- colorscheme
     "joshdick/onedark.vim";
     "Mofiqul/dracula.nvim";
     "arcticicestudio/nord-vim";
    -- zk notes
     "mickael-menu/zk-nvim";
    -- Comments
     "numToStr/Comment.nvim";
    -- Git support
    "lewis6991/gitsigns.nvim";
    -- vim surround
    "machakann/vim-sandwich";
}

require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

require('Comment').setup()
