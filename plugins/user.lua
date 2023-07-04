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

  {
    "antoinemadec/FixCursorHold.nvim",
  },
  {
    "haydenmeade/neotest-jest",
  },
  {
    "nvim-neotest/neotest",
    lazy = false,
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-jest")({
            jestCommand = "npm test --",
            env = { CI = true },
            cwd = function()
              return vim.fn.getcwd()
            end,
          })
        }
      })
    end,
  },
}
