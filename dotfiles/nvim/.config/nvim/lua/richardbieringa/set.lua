-- line numbers + relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- whitespace settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- automatic indenting on new lines
vim.opt.smartindent = true

-- no line wrapping
vim.opt.wrap = false

-- no backups (swap files)
vim.opt.swapfile = false vim.opt.backup = false

-- enables long running undos
vim.opt.undodir = "~/.vim/undodir"
vim.opt.undofile =true

-- do not highlight previous search matches
vim.opt.hlsearch = false

-- incremental search
vim.opt.incsearch = true

-- 24 bit colors
vim.opt.termguicolors = true

-- min number of lines to keep above and below cursor
vim.opt.scrolloff = 8

-- always draw signs (e.g. LSP diag)
vim.opt.signcolumn = "yes"

vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
