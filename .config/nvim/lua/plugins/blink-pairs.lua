return {
  'saghen/blink.pairs',
  version = '*', -- (recommended) only required with prebuilt binaries

  -- download prebuilt binaries from github releases
  dependencies = 'saghen/blink.download',

  --- @module 'blink.pairs'
  --- @type blink.pairs.Config

  init = function()
    local hl = vim.api.nvim_set_hl
    hl(0, "BlinkPairsOrange", { fg = "#D19A66" })
    hl(0, "BlinkPairsPurple", { fg = "#C678DD" })
    hl(0, "BlinkPairsBlue",   { fg = "#61AFEF" })
    hl(0, "BlinkPairsUnmatched", { fg = "#FF0000", underline = true })
    hl(0, "BlinkPairsMatchParen", { bg = "#3E4452", bold = true })
  end,

  opts = {
    mappings = {
      -- you can call require("blink.pairs.mappings").enable()
      -- and require("blink.pairs.mappings").disable()
      -- to enable/disable mappings at runtime
      enabled = true,
      cmdline = true,
      -- or disable with `vim.g.pairs = false` (global) and `vim.b.pairs = false` (per-buffer)
      -- and/or with `vim.g.blink_pairs = false` and `vim.b.blink_pairs = false`
      disabled_filetypes = {},
      wrap = {
        -- move closing pair via motion
        ['<C-b>'] = 'motion',
        -- move opening pair via motion
        ['<C-S-b>'] = 'motion_reverse',
      },
    },
  },
  highlights = {
      enabled = true,
      -- requires require('vim._extui').enable({}), otherwise has no effect
      cmdline = true,
      -- set to { 'BlinkPairs' } to disable rainbow highlighting
      groups = { 'BlinkPairsOrange', 'BlinkPairsPurple', 'BlinkPairsBlue' },
      unmatched_group = 'BlinkPairsUnmatched',

      -- highlights matching pairs under the cursor
      matchparen = {
        enabled = true,
        -- known issue where typing won't update matchparen highlight, disabled by default
        cmdline = false,
        -- also include pairs not on top of the cursor, but surrounding the cursor
        include_surrounding = false,
        group = 'BlinkPairsMatchParen',
        priority = 250,
      },
    },
}
