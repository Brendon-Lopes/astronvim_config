return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- Colorschemes

  { import = "astrocommunity.colorscheme.catppuccin" },

  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  {
    "gruvbox.nvim",
    opts = {
      italic = {
        strings = true,
        comments = true,
        folds = true,
        operations = true,
      },
      transparent_mode = true,
    },
  },

  { import = "astrocommunity.colorscheme.everforest" },
  {
    "everforest",
    init = function()
      vim.g.everforest_background = "hard"
      vim.g.everforest_transparent_background = 0
    end,
  },

  { import = "astrocommunity.completion.copilot-lua-cmp" },
}
