-- fuzzy find over files
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ -- If encountering errors, see telescope-fzf-native README for install instructions
				"nvim-telescope/telescope-fzf-native.nvim",

				-- `build` is used to run some command when the plugin is installed/updated.
				-- This is only run then, not every time Neovim starts up.
				build = "make",

				-- `cond` is a condition used to determine whether this plugin should be
				-- installed and loaded.
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },
		},
		config = function()
			local builtin = require("telescope.builtin")

			nmap("<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
			nmap("<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
			nmap("<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
			nmap("<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
			nmap("<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
			nmap("<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
			nmap("<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
			nmap("<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
			nmap("<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
			nmap("<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

			-- Slightly advanced example of overriding default behavior and theme
			nmap("<leader>/", function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "[/] Fuzzily search in current buffer" })

			-- Also possible to pass additional configuration options.
			--  See `:help telescope.builtin.live_grep()` for information about particular keys
			nmap("<leader>s/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "[S]earch [/] in Open Files" })

			-- search through neovim config file
			nmap("<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[S]earch [N]eovim files" })

      -- change colorscheme
			nmap("<leader>wc", function()
				vim.cmd("Telescope colorscheme")
			end, { desc = "[W]orkspace [C]olour scheme" })

		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
