return {
  -- set vim options here (vim.<first_key>.<second_key> =  value)
  opt = {
    -- Treesitter based folding
    foldenable = false,
    foldexpr = "nvim_treesitter#foldexpr()",
    foldmethod = "expr",
    -- Shows whitepace characters
    list = true,
    listchars = { tab = " ", extends = "⟩", precedes = "⟨", trail = "·", eol = "﬋" },
    showbreak = "﬌ ",
    -- whitespace settings
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,
  },
}
