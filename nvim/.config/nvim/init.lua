-- vim: set path+=./lua:

local cmd = vim.cmd
local o = vim.o
local wo = vim.wo
local bo = vim.bo

require('utils')


-- Plugins
require "paq" {
	'savq/paq-nvim';
	'ghifarit55/tokyonight-vim';
	'gruvbox-community/gruvbox';
	'ayu-theme/ayu-vim';
}

cmd 'syntax enable'
o.background = "dark"
o.termguicolors = true
vim.g.gruvbox_contrast_dark="hard"
cmd "colorscheme gruvbox"

wo.foldenable = false

wo.number = true
wo.relativenumber = true
bo.tabstop=4
o.shiftwidth=4
o.softtabstop=4
o.expandtab = true
o.smarttab = true
-- set mouse=a
o.scrolloff=8
o.ruler = true
o.hlsearch = false
o.showmatch = true

cmd [[cabbrev ps PaqSync]]

vim.g.mapleader = ' '
map('<leader>q', '<Esc>:q<CR>')

noremap('<c-s>', '<esc>:w<cr>')
inoremap('<c-s>', '<esc>:w<cr>')
nnoremap('<leader>r', ':so ~/.config/nvim/init.lua<CR>')
noremap('<c-e>', '$')
noremap('<c-a>', '^')
