local options = {
	-- use system clipboard
    clipboard = "unnamedplus",

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

    -- removes backup/swap files
    swapfile = false,
    backup = false,

    -- enables long running undos
    undodir = os.getenv("HOME") .. "/.vim/undodir",
    undofile = true,

    -- search settings
    hlsearch = false,
    incsearch = true,

    -- 24 bit colors
    termguicolors = true,

    -- scrolling settings
    scrolloff = 8,
    sidescrolloff = 8,

    -- updatetime (CursorHold event)
    updatetime = 50,

    -- always draw signs (e.g. LSP diag)
    signcolumn = "yes",

    -- more space for command line messages
    cmdheight = 2,

    -- enables mouse in all modes
    mouse = "a",

    -- disables showing vim mode
    showmode = false,

    -- always show tabs (collections of windows)
    showtabline = 2,

    -- split position
    splitbelow = false,
    splitright = true,

    -- enables a better completion experience
    completeopt = "menuone,noselect",

    -- show whitespace
    list = true,
    listchars = "tab:> ,trail:-,nbsp:+,eol:↴",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end


