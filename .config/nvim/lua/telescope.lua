local builtin = require("telescope.builtin")
--vim.keymap.set('n', '<C-p>', builtin.find_files, {})

nmap('<C-p>', builtin.find_files, {})
nmap('<leader>fg', builtin.live_grep, {})
