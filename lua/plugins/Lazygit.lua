-- nvim v0.8.0
return {
	"kdheepak/lazygit.nvim",
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	-- optional for floating window border decoration
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	-- setting the keybinding for LazyGit with 'keys' is recommended in
	-- order to load the plugin when the command is run for the first time
	config = function()
		-- nvim v0.8.0
		require("lazy").setup({
			{
				"kdheepak/lazygit.nvim",
				dependencies = {
					"nvim-telescope/telescope.nvim",
					"nvim-lua/plenary.nvim",
				},
				config = function()
					require("telescope").load_extension("lazygit")
				end,
			},
		})
	end,
}
