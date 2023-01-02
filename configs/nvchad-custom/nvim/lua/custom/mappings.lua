-- custom mappings
-- https://nvchad.com/config/Mappings

-- default map arguments (see :h :map-arguments)
local map_args = { noremap = true, silent = true }

local M = {}

-- disable default keymaps
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-s>"] = ""
--   }
-- }


-- delete to text and don't overwrite (blackhole register)
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])


-- additional key mappings
-- ["keys"] = {"action", "icon  mapping description", opts = {}},
M.general = {
    n = {
        ["Q"] = { "<nop>", "unbind leave visual mode", opts = {} },
        ["<leader>d"] = { '"_d', "delete text (blackhole register)", opts = {} },
        ["J"] = { "mzJ`z", "join line", opts = {} },
        ["<C-u>"] = { "<C-u>zz", "scroll up", opts = {} },
        ["<C-d>"] = { "<C-d>zz", "scroll down", opts = {} },
        ["n"] = { "nzzzv", "repeat n times", opts = {} },
        ["N"] = { "Nzzzv", "repeat n times", opts = {} },
    },
    i = {
        ["jk"] = { "<ESC>", "exit insert mode", opts = { nowait = true } },
    },
    v = {
        ["<"] = { "<gv", "de-indent selected text", opts = {} },
        [">"] = { ">gv", "indent selected text", opts = {} },
        ["K"] = { ":m '<-2<CR>gv=gv", "move selected text up", opts = {} },
        ["J"] = { ":m '>+1<CR>gv=gv", "move selected text down", opts = {} },
        ["p"] = { '"_dP', "paste over text", opts = {} },
    },
}

return M
