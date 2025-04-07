noremap("<space>", "<nop>")
map('<leader>q', '<Esc>:q<CR>')

noremap('<c-s>', '<esc>:w<cr>')
inoremap('<c-s>', '<esc>:w<cr>')
nnoremap('<leader>r', '<esc>:Restart<cr>')
noremap('<c-e>', '$')
noremap('<c-a>', '^')
-- Quickly edit/reload
noremap('<leader>ev', '<silent>', ":execute 'vsplit ' . resolve('~/.config/nvim/init.lua')<CR>")

-- NERDTree
nnoremap('<c-p>', ':NERDTreeToggle<cr>')
