-- Mapping data with "desc" stored directly by vim.keymap.set().
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["J"] = { "mzJ`z", "join line", opts = {} },
    ["<C-u>"] = { "<C-u>zz", "scroll up", opts = {} },
    ["<C-d>"] = { "<C-d>zz", "scroll down", opts = {} },
  },
  v = {
    ["K"] = { ":m '<-2<CR>gv=gv", "move selected text up", opts = {} },
    ["J"] = { ":m '>+1<CR>gv=gv", "move selected text down", opts = {} },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
