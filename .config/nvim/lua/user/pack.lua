local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local ok, lazy = pcall(require, "lazy")
if not ok then return end

require("lazy").setup({


    {"projekt0n/github-nvim-theme", lazy = false, priority = 1000 },

    {
        "VonHeikemen/lsp-zero.nvim",
        dependencies = {
          "neovim/nvim-lspconfig", -- language server
          "williamboman/mason.nvim", -- Portable package manager 
          "williamboman/mason-lspconfig.nvim",
          "onsails/lspkind.nvim", -- adds vscode-like pictograms
        -- cmp plugins
          "hrsh7th/cmp-buffer",
          "hrsh7th/cmp-path", -- path completions 
          "saadparwaiz1/cmp_luasnip", -- snippet completions
          "hrsh7th/cmp-nvim-lsp", -- buffer completions 
          "hrsh7th/cmp-nvim-lua", -- nvim-cmp source for neovim Lua API
          "L3MON4D3/LuaSnip", --snippet engine 
          "rafamadriz/friendly-snippets", -- Snippets collection
          "hrsh7th/cmp-nvim-lsp-signature-help", -- displaying function signatures
          "hrsh7th/nvim-cmp", -- The completion plugin 
          "hrsh7th/cmp-cmdline", -- cmdline completions
        }
      },

    --telescope 
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
          "nvim-lua/plenary.nvim",
        }
      },

    "nvim-telescope/telescope-ui-select.nvim",
    
    -- auto pair { ( [ ' "
    {"windwp/nvim-autopairs", config = true, event = "InsertEnter"},

    -- treesitter 
    "nvim-treesitter/nvim-treesitter",
    
    -- comments
    { "numToStr/Comment.nvim", config = true, event = "BufEnter" },
    
    -- colorscheme
    {"joshdick/onedark.vim",},
    {"mofiqul/dracula.nvim",},
    {"arcticicestudio/nord-vim",},
    { "folke/tokyonight.nvim" },
 
    { "phaazon/hop.nvim", branch = "v2", config = true, event = "BufEnter" },

    { "lewis6991/gitsigns.nvim", config = true, event = "BufEnter" },
    
    { 
        "iamcco/markdown-preview.nvim",
        build = function() vim.fn["mkdp#util#install"]() end, 
        ft = "markdown" },

    -- vim surround
    {"machakann/vim-sandwich",},


      { 
        "glepnir/lspsaga.nvim", 
        branch = "main", 
        event = "BufRead",
      },

    -- debug
    {"mfussenegger/nvim-dap", lazy = true},
    {"rcarriga/nvim-dap-ui", lazy = true},

    -- zk notes
    {"mickael-menu/zk-nvim",},

    {
    "nvim-lualine/lualine.nvim",
    dependencies = {
       "kyazdani42/nvim-web-devicons"
     }
   },
    { "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    }
  },
  {
    "karb94/neoscroll.nvim",
    event = "BufEnter",
    enabled = false
  },

   { "lukas-reineke/indent-blankline.nvim", event = "BufEnter" },
    "David-Kunz/markid",
    "akinsho/bufferline.nvim"
})

