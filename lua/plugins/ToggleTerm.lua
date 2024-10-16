
return {
	-- Toggle Term
	"akinsho/toggleterm.nvim",
	tag = "*",
	config = function()
		local toggleterm = require("toggleterm")
		toggleterm.setup({
			size = 20,
			open_mapping = [[<c-\>]],
			hide_numbers = true,
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "float",
			close_on_exit = true,
			shell = vim.o.shell,
			autochdir = true,
			float_opts = {
				border = "curved",
				winblend = 0,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
			},
		})

		function _G.set_terminal_keymaps()
			local opts = { noremap = true }
			vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<c-\><c-n>]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<c-\><c-n>]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<c-\><c-n><c-W>h]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<c-\><c-n><c-W>j]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<c-\><c-n><c-W>k]], opts)
			vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<c-\><c-n><c-W>l]], opts)
		end

		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

		local Terminal = require("toggleterm.terminal").Terminal
		local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

		function _LAZYGIT_TOGGLE()
			lazygit:toggle()
		end

		vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", { noremap = true, silent = true })

		local node = Terminal:new({ cmd = "node", hidden = true })

		function _NODE_TOGGLE()
			node:toggle()
		end
		vim.api.nvim_set_keymap("n", "<leader>nd", "<cmd>lua _NODE_TOGGLE()<CR>", { noremap = true, silent = true })


		local python = Terminal:new({ cmd = "python3", hidden = true })

		function _PYTHON_TOGGLE()
			python:toggle()
		end
		vim.api.nvim_set_keymap("n", "<leader>py", "<cmd>lua _PYTHON_TOGGLE()<CR>", { noremap = true, silent = true })

	end,
}
