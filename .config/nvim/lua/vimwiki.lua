vim.cmd [[
  let g:vimwiki_list = [{'path': '~/note/', 'ext': 'wiki', 'path_html': '~/note/html'}]
]]
vim.g.vimwiki_listsyms = ' ▁▃▆✓'

nmap('<leader>wH', ':VimwikiAll2HTML<CR>')
nmap('<leader><CR>', ':VimwikiSplitLink<CR>')
nmap('<leader><S-CR>', ':VimwikiVSplitLink<CR>')
-- Automatically update dairy links 
vim.cmd [[
augroup vimwikigroup
    autocmd!
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end
]]
