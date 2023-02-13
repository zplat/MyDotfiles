return {

  -- add folding range to capabilities
  {
    "neovim/nvim-lspconfig",
    opts = {
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      },
    },
  },
  -- markdown preview
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = { "markdown" },
    dependencies = {
      {
        "iamcco/markdown-preview.nvim",
        build = "cd app && npm install",
        ft = { "markdown" },
      },
    },
  },
  -- zettelkasten with markdown
  {
    "mickael-menu/zk-nvim",

    config = function()
      require("zk").setup({
        -- can be "telescope", "fzf" or "select" (`vim.ui.select`)
        -- it's recommended to use "telescope" or "fzf"
        picker = "select",

        lsp = {
          -- `config` is passed to `vim.lsp.start_client(config)`
          config = {
            cmd = { "zk", "lsp" },
            name = "zk",
            -- on_attach = ...
            -- etc, see `:h vim.lsp.start_client()`
          },

          -- automatically attach buffers in a zk notebook that match the given filetypes
          auto_attach = {
            enabled = true,
            filetypes = { "markdown" },
          },
        },
      })
    end,
  },
}
