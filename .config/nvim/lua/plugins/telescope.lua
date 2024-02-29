-- fuzzy find over files
return {
  "nvim-telescope/telescope.nvim",
  tag = '0.1.5',
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    nmap("<C-p>", builtin.find_files, {})
    nmap("<leader>fg", builtin.live_grep, {})
  end
}
