local options = {
  fileencoding = "utf-8",
  splitright = true,
  splitbelow = true,
  colorcolumn = '80',
  expandtab = true,
  autoindent = true,
  shiftwidth = 2,
  tabstop = 2,
  softtabstop = 2,
  numberwidth = 4,
  relativenumber = true,
  number = true,
  ignorecase = true,
  smartcase = true,
  incsearch = true,
  hidden = true,
  backup = false,
  writebackup = false,
  wrap = false,
  cursorline = true,
  cursorcolumn = true,
  termguicolors = true,
  signcolumn = 'yes',
  completeopt = {'menuone', 'noinsert', 'noselect'},
  mouse = 'a',
  updatetime = 750,
  cmdheight = 1,
  scrolloff = 8,
  sidescrolloff = 8,
  shortmess = vim.opt.shortmess:append 'c',
  diffopt = vim.opt.diffopt:append 'vertical',
  guicursor = vim.opt.guicursor:append 'i:block-blinkwait20-blinkon400-blinkoff200',
}

vim.g.netrw_banner = 0
vim.g.markdown_fenced_languages = {'javascript', 'js=javascript', 'json=javascript'}
vim.cmd [[filetype plugin on]]

for k, v in pairs(options) do
  vim.opt[k] = v
end
