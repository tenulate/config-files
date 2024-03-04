-- Allow command line tools to behave like an LSP (used for linters/formatters)
return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        --null_ls.builtins.formatting.autopep8,
        --null_ls.builtins.formatting.prettierd,
        --null_ls.builtins.diagnostics.pyflakes,
        --null_ls.builtins.diagnostics.eslint_d,
        --null_ls.builtins.completion.spell,
      },
    })

    nmap("<leader>f", vim.lsp.buf.format, {}) end,
}
