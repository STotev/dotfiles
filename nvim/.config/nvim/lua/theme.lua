local cmd = vim.cmd
local o = vim.o
local wo = vim.wo
local bo = vim.bo
local g = vim.g

cmd [[syntax enable]]
o.background = "dark"
o.termguicolors = true
g.gruvbox_contrast_dark="hard"
cmd [[colorscheme gruvbox]]

g.airline_theme="ayu_dark"
