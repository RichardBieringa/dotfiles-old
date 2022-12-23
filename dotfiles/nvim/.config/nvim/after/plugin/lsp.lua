local lsp = require("lsp-zero")

-- Preset (recommended)
-- https://github.com/VonHeikemen/lsp-zero.nvim#available-presets
lsp.preset("recommended")

-- Fix Undefined global "vim"
lsp.configure("sumneko_lua", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
})


lsp.set_preferences({
    suggest_lsp_servers = true,

    -- Instead of icons prefix diagnostics with a letter
    sign_icons = {
        error = "E",
        warn = "W",
        hint = "H",
        info = "I"
    }
})


-- Set the keymaps on attachment to buffer
lsp.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)


lsp.setup()


-- Inline language server diagnostic text (errors, warnings)
vim.diagnostic.config({
    virtual_text = true,
})
