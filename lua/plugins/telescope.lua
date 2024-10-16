return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"andrew-george/telescope-themes",
		},
		config = function()
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })

			vim.keymap.set("n", "<leader>th", ":Telescope themes<CR>",
				{ noremap = true, silent = true, desc = "Theme Switcher" }
			)
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
   end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					layout_config = {
						vertical = { width = 1 },
					},
				},
				pickers = {
					find_files = {
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					file_browser = {
						hijack_netrw = true,
						theme = "dropdown",
					},
				},
			})
			telescope.load_extension("ui-select")
			telescope.load_extension("file_browser")
	    telescope.load_extension('lazygit')
      telescope.load_extension("themes")
		end,
	},
}
