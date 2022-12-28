-- custom key mappings
-- see :h vim.keymap.set

-- modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- default map arguments (see :h :map-arguments)
local map_args = { noremap = true, silent = true }


-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", map_args)


-- NORMAL MODE
-- window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", map_args)
vim.keymap.set("n", "<C-j>", "<C-w>j", map_args)
vim.keymap.set("n", "<C-k>", "<C-w>k", map_args)
vim.keymap.set("n", "<C-l>", "<C-w>l", map_args)

-- buffer navigation
vim.keymap.set("n", "<S-h>", ":bprev<CR>", map_args)
vim.keymap.set("n", "<S-l>", ":bnext<CR>", map_args)

-- modify existing commands to center cursor
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete to text and don't overwrite (blackhole register)
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- unbind leave visual mode
vim.keymap.set("n", "Q", "<nop>")


-- VISUAL MODE
-- stay in indent mode
vim.keymap.set("v", "<", "<gv", map_args)
vim.keymap.set("v", ">", ">gv", map_args)

-- move selected lines (and properly indent)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", map_args)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", map_args)

-- preserve yank register on paste
vim.keymap.set("v", "p", '"_dP', map_args)


-- INSERT MODE
-- fast normal mode
vim.keymap.set("i", "jk", "<ESC>", map_args)
