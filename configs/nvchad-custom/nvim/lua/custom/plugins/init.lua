local overrides = require "custom.plugins.overrides"

-- to install additional plugins
return {
    -- Override plugin definition options
    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end,
    },

    -- overrde plugin configs
    ["nvim-treesitter/nvim-treesitter"] = {
        override_options = overrides.treesitter,
    },

    ["williamboman/mason.nvim"] = {
        override_options = overrides.mason,
    },

    ["kyazdani42/nvim-tree.lua"] = {
        override_options = overrides.nvimtree,
    },

    -- enables injecting LSP diagnostics and code actions
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require "custom.plugins.null-ls"
        end,
    },
}
