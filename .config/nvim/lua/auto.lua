vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  desc = "Wrap text for markdown files",
  pattern = { "*.md" },
  group = vim.api.nvim_create_augroup("word-wrap", { clear = true }),
  callback = function()
    vim.cmd([[
      setlocal wrap
      setlocal linebreak
      setlocal breakindent
      setlocal showbreak = ">>> "
    ]])
  end,
  --command = "setlocal wrap",
})
