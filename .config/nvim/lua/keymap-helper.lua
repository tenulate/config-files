-- Shorten keymapping function names
local default_options = { noremap = true, silent = true }
local function keymap_generator (mode)
  local function keymap (key, operation, options)
    if options == nil then options = default_options end
    --vim.api.nvim_set_keymap(mode, key, operation, options)
    vim.keymap.set(mode, key, operation, options)
  end
  return keymap
end

map = keymap_generator('') -- all modes
imap = keymap_generator('i') -- insert mode
nmap = keymap_generator('n') -- normal mode
vmap = keymap_generator('v') -- visual mode
xmap = keymap_generator('x') -- visual block mode
tmap = keymap_generator('t') -- terminal mode
cmap = keymap_generator('c') -- command mode
