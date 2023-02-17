return {
  -- neodev
  {
    "folke/neodev.nvim",
    opts = {
      library = {
        plugins = { "neotest", "nvim-dap-ui" },
        types = true,
      },
    },
  },

  -- tools
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {},
    },
  },
  -- lsp servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      ---@type lspconfig.options
      servers = {},
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "BufReadPre",
    dependencies = { "mason.nvim" },
    config = function()
      local nls = require("null-ls")
      nls.setup({
        sources = {
          -- code formatter for lua
          nls.builtins.formatting.stylua,
          -- fast python linter written in rust
          nls.builtins.diagnostics.ruff.with({ extra_args = { "--max-line-length=180" } }),
        },
      })
    end,
  },
}
