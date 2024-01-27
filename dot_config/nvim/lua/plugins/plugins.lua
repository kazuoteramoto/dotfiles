return {
  { -- colorscheme
    "sainnhe/gruvbox-material",
    init = function()
      vim.g.gruvbox_material_background = "soft"
      vim.g.gruvbox_material_better_performance = 1
    end,
  },
  { -- colorscheme
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
  { -- git diff
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = { { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview" } },
    cmd = "DiffviewOpen",
  },
  { -- rainbow () [] {}
    "HiPhish/rainbow-delimiters.nvim",
  },
  {
    "AckslD/nvim-neoclip.lua",
    dependencies = {
      { "kkharji/sqlite.lua", module = "sqlite" },
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>y", "<cmd>Telescope neoclip<CR>", desc = "Neoclip (Yank History)" },
    },
    cmd = "Telescope neoclip",
    config = function()
      require("neoclip").setup({})
    end,
  },
  { -- code outline
    "stevearc/aerial.nvim",
    config = function()
      require("aerial").setup()
    end,
    keys = {
      {
        "<leader>ct",
        "<cmd>AerialToggle left<cr>",
        desc = "Aerial (Code Outline)",
      },
    },
  },
}
