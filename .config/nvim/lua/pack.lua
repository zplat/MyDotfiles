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
     "williamboman/mason.nvim";
     "williamboman/mason-lspconfig.nvim";
     "neovim/nvim-lspconfig";

    -- Linter and formatter
     "jose-elias-alvarez/null-ls.nvim";

    -- Treesitter
     "nvim-treesitter/nvim-treesitter";

    -- Telescope
     "nvim-telescope/telescope.nvim";

    -- colorscheme
     "joshdick/onedark.vim";
     "Mofiqul/dracula.nvim";
     "arcticicestudio/nord-vim";
     "folke/tokyonight.nvim";

    -- zk notes
     "mickael-menu/zk-nvim";

    -- Comments
     "numToStr/Comment.nvim";

    -- Git support
    "lewis6991/gitsigns.nvim";

    -- vim surround
    "machakann/vim-sandwich";

    -- Keybinding
    "folke/which-key.nvim";

    -- debug
    "mfussenegger/nvim-dap";
    --"leoluz/nvim-dap-go";
    "rcarriga/nvim-dap-ui";
    --"theHamsta/nvim-dap-virtual-text";
    --"nvim-telescope/telscope-dap.nvim";
    --"ravenxrz/DAPInstall.nvim"
    
    -- markdown preview
}

require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

--require('Comment').setup()

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
