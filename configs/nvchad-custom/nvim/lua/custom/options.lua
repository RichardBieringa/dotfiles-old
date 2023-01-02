-- Personal settings 
-- Overwrites options set by nvchad

local options = {
    -- line numbers + relative line numbers
    number = true,
    relativenumber = true,

    -- whitespace settings
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,

    -- case insensitive searching UNLESS /C or capital in search
    ignorecase = true,
    smartcase = true,

    -- automatic indenting on new lines
    smartindent = true,

    -- disables line wrapping
    wrap = false,

    -- search settings
    hlsearch = false,
    incsearch = true,

    -- scrolling settings
    scrolloff = 8,
    sidescrolloff = 8,

    -- removes backup/swap files
    -- swapfile = false,
    -- backup = false,

    -- enables long running undos
    -- undodir = os.getenv("HOME") .. "/.vim/undodir",
    -- undofile = true,

}

for k, v in pairs(options) do
    vim.opt[k] = v
end

