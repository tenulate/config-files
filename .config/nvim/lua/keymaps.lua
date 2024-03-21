map("<space>", "<nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- navigating panes
-- see tmux.lua plugin
-- nmap("<C-h>", ":wincmd h<CR>")
-- nmap("<C-j>", ":wincmd j<CR>")
-- nmap("<C-k>", ":wincmd k<CR>")
-- nmap("<C-l>", ":wincmd l<CR>")

-- sourcing and editing vim config
nmap("gf", ":edit <cfile><CR>", { noremap = true })
nmap("<leader>ve", ":e $MYVIMRC<CR>")
nmap("<leader>vs", ":source $MYVIMRC<CR>")

-- buffer navigation
-- buffers listed using neo-tree
--nmap("<leader>b", ":buffers<CR>", { noremap = true, silent = false })
nmap("<leader>j", ":bnext<CR>")
nmap("<leader>k", ":bprevious<CR>")
nmap("<leader>h", ":bfirst<CR>")
nmap("<leader>l", ":blast<CR>")
nmap("<leader>x", ":bdelete<CR>")

-- Easier escape
vim.keymap.set({'i', 'c', 'v', 'x'}, '<C-[>', "<esc>", { noremap = true, silent = true })

-- Explore files in directory
-- (replaced with neotree)
--nmap('<leader>e', ':Lexplore<CR>')

-- stay in visual mode when indenting
vmap("<", "<gv")
vmap(">", ">gv")
-- remove search highlighting
--nmap("<leader>/", ':let @/=""<CR>')
nmap('<Esc>', '<cmd>nohlsearch<CR>')

-- move text up/down
-- TODO: fix for when trying to move above/below file limits
vmap("<C-j>", ":m '>+1<CR>gv=gv")
vmap("<C-k>", ":m '<-2<CR>gv=gv")
