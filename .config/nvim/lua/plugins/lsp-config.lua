return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls", -- Lua language server
					"clangd", -- C and C++
					"csharp_ls", -- C#
					"jsonls", -- JSON
					"tsserver", -- Javascript
					"html", -- HTML
					"pyright", -- Python
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			-- language servers
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })
			-- key bindings
			nmap("K", vim.lsp.buf.hover, {})
			nmap("gd", vim.lsp.buf.definition, {})
			nmap("<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
