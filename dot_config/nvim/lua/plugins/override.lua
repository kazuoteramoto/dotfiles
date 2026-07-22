return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_fix", "ruff_format" },
        lua = { "stylua" },
        json = { "jq" },
        javascript = { "prettier" },
        sql = { "sqruff" },
        markdown = { "markdownlint-cli2" },
        openscad = { "scadformat" },
      },
      formatters = { scadformat = { command = "scadformat" } },
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
      inlay_hints = { enabled = false },
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
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      checkbox = { enabled = false },
      latex = { enabled = false },
      code = { border = "thin" },
    },
  },
}
