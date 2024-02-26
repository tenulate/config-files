map('<space>', '<nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- navigating panes
nmap('<C-h>', ':wincmd h<CR>')
nmap('<C-j>', ':wincmd j<CR>')
nmap('<C-k>', ':wincmd k<CR>')
nmap('<C-l>', ':wincmd l<CR>')

-- sourcing and editing vim config
nmap('gf', ':edit <cfile><CR>', {noremap = true })
nmap('<leader>ve', ':e $MYVIMRC<CR>')
nmap('<leader>vs', ':source $MYVIMRC<CR>')

-- buffer navigation
nmap('<leader>b', ':buffers<CR>', {noremap = true, silent = false})
nmap('<leader>j', ':bnext<CR>')
nmap('<leader>k', ':bprevious<CR>')
nmap('<leader>h', ':bfirst<CR>')
nmap('<leader>l', ':blast<CR>')
nmap('<leader>x', ':bdelete<CR>')

-- Easier escape
imap('<C-l>', '<esc>')
cmap('<C-l>', '<esc>')
vmap('<C-l>', '<esc>')
xmap('<C-l>', '<esc>')

-- Explore files in directory
nmap('<leader>e', ':Lexplore<CR>')

-- stay in visual mode when indenting
vmap("<", "<gv")
vmap(">", ">gv")
-- remove search highlighting
nmap('<leader>hs', ':let @/=""<CR>')

-- move text up/down
-- TODO: fix for when trying to move above/below file limits
vmap('<C-j>', ":m '>+1<CR>gv=gv")
vmap('<C-k>', ":m '<-2<CR>gv=gv")
