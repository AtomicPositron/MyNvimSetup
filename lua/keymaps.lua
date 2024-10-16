local keymaps = vim.keymap
local opts = { noremap = true, silent = true }

keymaps.set("n", "<Leader>w", ":update<Return>", opts)
keymaps.set("n", "<Leader>wa", ":wa<Return>", opts)
keymaps.set("n", "<Leader>q", ":quit<Return>", opts)
keymaps.set("n", "<Leader>qa", ":qa<Return>", opts)

keymaps.set("n", "<Leader>sv", ":split<Return>", opts)
keymaps.set("n", "<Leader>sb", ":vsplit<Return>", opts)
keymaps.set("n", "<Leader>x", ":close<Return>", opts)

keymaps.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
  end , opts)
