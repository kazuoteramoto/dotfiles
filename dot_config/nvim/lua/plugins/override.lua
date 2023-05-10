return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local null_ls = require("null-ls")
      return {
        sources = {
          null_ls.builtins.diagnostics.ruff,
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.isort,
          null_ls.builtins.formatting.yapf,
          null_ls.builtins.formatting.jq,
          null_ls.builtins.completion.spell,
        },
      }
    end,
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
  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
  ]]

      dashboard.section.header.val = vim.split(logo, "\n")
      return dashboard
    end,
  },
  { -- reduce notify verbosity
    "rcarriga/nvim-notify",
    opts = {
      level = "WARN",
    },
  },
}
