let g:vimwiki_list = [{'path': '~/note/', 'path_html': '~/note/html'}]
let g:vimwiki_listsyms = ' ▁▃▆✓'

nnoremap <leader>wH :VimwikiAll2HTML<CR>
nnoremap <leader><CR> :VimwikiSplitLink<CR>
nnoremap <leader><S-CR> :VimwikiVSplitLink<CR>
augroup vimwikigroup
    autocmd!
    " automatically update dairy links
    autocmd BufRead,BufNewFile diary.mdox VimwikiDiaryGenerateLinks
augroup end
