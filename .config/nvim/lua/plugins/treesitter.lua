-- Create Abstract Syntax Tree (AST) for code
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
        ensure_installed = { 
          "lua", "javascript", "python", "c", "haskell", "html", "vim" 
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true }
    })
  end
}
