return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
  lazy = false,

  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
  },

  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
  },
}

