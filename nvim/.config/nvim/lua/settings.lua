local cmd = vim.cmd
local o = vim.o
local wo = vim.wo
local bo = vim.bo
local g = vim.g

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

g.mapleader = ' '
