return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_lint", "ruff_format" },
        lua = { "stylua" },
        json = { "jq" },
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
      diagnostics = { -- make diagnostics less intrusive
        underline = false,
        virtual_text = false,
      },
      format = {
        timeout_ms = 2000,
      },
      servers = {
        pyright = {
          settings = {
            python = {
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
