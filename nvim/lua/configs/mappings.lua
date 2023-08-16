-- Para Salvar com 'Ctrl + S' nos modos: Normal, Inserção e Visual
-- Precisa adicionar a linha: stty -ixon , ao seu ~/.bashrc
--vim.cmd([[ nnoremap <C-s> :w<CR> ]])
--vim.cmd([[ inoremap <C-s> <Esc>:w<CR>l ]])
--vim.cmd([[ vnoremap <C-s> <Esc>:w<CR> ]])

-- Selecionar tudo com 'Ctrl + A'
--vim.cmd([[ map <C-a> ggVG ]])

-- BASH - Auto preenche arquivos .sh que não existirem com a SheBang
vim.cmd([[ autocmd BufNewFile *.sh :call append(0, '#!/usr/bin/zsh') ]])

local map = vim.api.nvim_set_keymap

map("n", "<D-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
map("n", "<D-s>", ":w<CR>", { noremap = true, silent = true })
map("n", "<D-z>", ":undo<CR>", { noremap = true, silent = true })
map("n", "<D-S-z>", ":redo<CR>", { noremap = true, silent = true })
map("n", "<D-w>", ":q<CR>", { noremap = true, silent = true})

