vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("highlight Comment cterm=italic ctermfg=8")
vim.g.mapleader = " "
vim.o.number = true
vim.g.have_nerd_font = true
vim.opt.fileencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.scriptencoding = "utf-8"
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.expandtab = true
vim.opt.laststatus = 0
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.relativenumber = false
vim.opt.swapfile = false
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.mouse = ""
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.path:append({ "**" })
vim.opt.formatoptions:append({ "r" })
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
vim.api.nvim_set_hl(0, 'Comment', { italic=true })

