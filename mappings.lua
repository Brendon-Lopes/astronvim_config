-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    --clear highlights
    ["<leader>i"] = { "<cmd>noh<cr>", desc = "Clear highlights" },

    -- move between buffers
    ["<A-l>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<A-h>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" },

    -- move line up or down
    ["<A-k>"] = { ":m .-2<cr>==", desc = "Move line up" },
    ["<A-j>"] = { ":m .+1<cr>==", desc = "Move line down" },
  },
  v = {
    -- indent selection without leaving visual mode
    ["<"] = { "<gv", desc = "Indent left" },
    [">"] = { ">gv", desc = "Indent right" },

    -- move selection up or down
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move selection down" },
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move selection up" },

    -- paste without yanking
    ["p"] = { '"_dP', desc = "Paste without yanking" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
