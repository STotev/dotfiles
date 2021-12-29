-- vim: set path+=./lua:
  
local cmd = vim.cmd
local o = vim.o
local wo = vim.wo
local bo = vim.bo

require('utils')
require('plugins')
require('lspconf')

cmd [[syntax enable]]
o.background = "dark"
o.termguicolors = true
vim.g.gruvbox_contrast_dark="hard"
cmd [[colorscheme gruvbox]]

vim.g.airline_theme="ayu_dark"

o.virtualedit = "onemore,block"
wo.breakindent = true
wo.foldenable = false
o.showmode = false
wo.number = true
wo.relativenumber = true
bo.tabstop=4
o.shiftwidth=4
o.softtabstop=4
o.expandtab = true
o.smarttab = true
o.mouse= "a"
o.scrolloff=8
o.ruler = true
o.hlsearch = false
o.showmatch = true
bo.bomb = false
o.autochdir = true
o.completeopt = 'menuone,noinsert,noselect'
o.clipboard = 'unnamedplus'
o.hidden = true
o.confirm = true

cmd [[cabbrev ps PaqSync]]

vim.g.mapleader = ' '
map('<leader>q', '<Esc>:q<CR>')

noremap('<c-s>', '<esc>:w<cr>')
inoremap('<c-s>', '<esc>:w<cr>')
nnoremap('<leader>r', ':so ~/.config/nvim/init.lua<CR>')
noremap('<c-e>', '$')
noremap('<c-a>', '^')
-- Quickly edit/reload
noremap('<leader>ev', '<silent>', ":execute 'vsplit ' . resolve('~/.config/nvim/init.lua')<CR>")

-- NERDTree
nnoremap('<c-p>', ':NERDTreeToggle<cr>')
