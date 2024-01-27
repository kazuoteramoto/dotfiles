-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.background = "light"
vim.opt.textwidth = 79
vim.opt.shiftwidth = 4
vim.opt.gdefault = true
vim.opt.listchars = { tab = ">-", nbsp = "␣", trail = "·" }
vim.opt.virtualedit = "onemore"
vim.opt.colorcolumn = "+1"

vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0

vim.g.vim_json_syntax_conceal = 0
