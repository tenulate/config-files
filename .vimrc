syntax on
" Don't play sound on error
set noerrorbells

" Show line numbers
set number
set relativenumber

" Tab width = 4
set tabstop=4 softtabstop=4
" Replace tabs with spaces
set expandtab
" Indent 4 chars when using ">>"
set shiftwidth=4
set smartindent

" Don't wrap long text, let it run off screen
set nowrap

" Ignore case when searching (eg. with "/", ":g", ":s")
set smartcase

" Do not create bunch of .swp files
set noswapfile
set undodir=~/.vim/undo
set undofile

" Show search results while typing
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Don't reach for <escape> while in insert mode
inoremap <C-;> <Esc>

"------------------------------ 
" Leader keys
"------------------------------ 
" Set leader key
let mapleader = " "

" Navigate splits
" wincmd = Ctrl-W
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

" Undo tree plugin
nnoremap <Leader>u :UndotreeShow<CR>

" Highlight search results
set hlsearch
" Toggle search highlighting
noremap <Leader>hs :set hlsearch! hlsearch?<CR>

" Toggle sync vertical scroll
noremap <Leader>vs :set scrollbind! scrollbind?<CR>

" Concentration mode
nnoremap <Leader>c :Goyo<CR>


"------------------------------ 
" Plugins
"------------------------------ 
" 'Plug' plugins manager
call plug#begin('~/.vim/plugged')
    " Colour scheme"
    Plug 'morhetz/gruvbox'
    " Integrate with git
    Plug 'tpope/vim-fugitive'
    " Fuzzy file search
    Plug 'ctrlpvim/ctrlp.vim'
    " Search documents
    Plug 'jremmen/vim-ripgrep'
    " Display tree branch of edits in current session
    Plug 'mbbill/undotree'
    " View mark down documents rendered in web browser
    Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
    " Fish syntax highlighting
    Plug 'dag/vim-fish'
    " Distraction free writing
    Plug 'junegunn/goyo.vim'
call plug#end()

colorscheme gruvbox
set background=dark

" Rip Grep
" don't display .gitignore and .git in search results
if executable('rg')
    let g:rg_derive_root='true'
endif

" CtrlP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_winsize = 25

" Markdown preview plugin
" https://github.com/iamcco/markdown-preview.nvim 
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 1

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'


