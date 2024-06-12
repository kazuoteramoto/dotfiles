return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_fix", "ruff_format" },
        lua = { "stylua" },
        json = { "jq" },
        javascript = { { "prettierd", "prettier" } },
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        enabled = true,
        view = "cmdline",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      diagnostics = {
        underline = true,
        virtual_text = true,
      },
      format = {
        timeout_ms = 2000,
      },
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                typeCheckingMode = "off", -- improve performance
                diagnosticMode = "openFilesOnly", -- improve performance
              },
            },
          },
        },
      },
    },
  },
  { -- reduce notify verbosity
    "rcarriga/nvim-notify",
    opts = {
      level = "WARN",
    },
  },
}
