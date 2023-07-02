return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "andweeb/presence.nvim",
    lazy = false,
    config = function()
      require("presence").setup({
        main_image = "file",
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        style = "moon",
        terminal_colors = true,
        styles = {
          comments = { italic = true },
        }
      })
    end
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
