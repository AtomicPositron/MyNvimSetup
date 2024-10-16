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
				ensure_installed = { "lua_ls", "clangd", "cssls", "html", "pyright", "volar", "vuels" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local vue_language_server_path = "/path/to/@vue/language-server"
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			local opts = { noremap = true, silent = true }
			local on_attach = function(client, bufnr)
				opts.buffer = bufnr

				vim.bo[opts.buffer].omnifunc = "v:lua.vim.lsp.omnifunc"
				vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
				vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			end
			capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
			local lspconfig = require("lspconfig")
			lspconfig["lua_ls"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})
			lspconfig["clangd"].setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})
			lspconfig["cssls"].setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})
			lspconfig["html"].setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})

			lspconfig["ts_ls"].setup({
				on_attach = on_attach,
				capabilities = capabilities,
				init_options = {
					plugins = {
						{
							name = "@vue/typescript-plugin",
							location = vue_language_server_path,
							languages = { "vue" },
						},
					},
				},
				filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
			})
			lspconfig["pyright"].setup({
				on_attach = on_attach,

				capabilities = capabilities,
			})
			lspconfig["volar"].setup({
				on_attach = on_attach,
				filetypes = { "vue" },
				capabilities = capabilities,
			})
			lspconfig["vuels"].setup({
				on_attach = on_attach,
				capabilities = capabilities,
			})
			lspconfig["arduino_language_server"].setup({
				on_attach = on_attach,
				capabilities = capabilities,
				filetypes = { "arduino" },
			})
			lspconfig["bashls"].setup({
				capabilities = capabilities,
				on_attach = on_attach,
			})
			local opts = { noremap = true, silent = true }

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
