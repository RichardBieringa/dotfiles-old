return {
  -- You can disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },
  -- ["max397574/better-escape.nvim"] = { disable = true },

  -- You can also add new plugins here as well:
  ["kylechui/nvim-surround"] = {
    tag = "*",
    config = function() require("nvim-surround").setup() end,
  },
}
