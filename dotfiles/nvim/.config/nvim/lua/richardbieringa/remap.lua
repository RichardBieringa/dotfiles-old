-- map leader key
vim.g.mapleader = " "

-- netrw (network directory)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected lines (and properly indent)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- modify existing commands to center cursor
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- preserve yank register on paste
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- unbind leave visual mode
vim.keymap.set("n", "Q", "<nop>")

-- format current buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
