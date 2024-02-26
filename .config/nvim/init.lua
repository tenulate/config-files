require 'utils'
require 'options'
require 'keymaps'
require 'plugins'
require 'colourscheme'
require 'vimwiki'

require 'lspconfig'.pyright.setup{}
require 'lspconfig'.tsserver.setup{}
require 'lspconfig'.sumneko_lua.setup{}
require 'lspconfig'.hls.setup{}
require 'lsp'
