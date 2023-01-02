-- to install additional plugins
return {
    -- enables injecting LSP diagnostics and code actions
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require "custom.plugins.null-ls"
        end,
    },
}
