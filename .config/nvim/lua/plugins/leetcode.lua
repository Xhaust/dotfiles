return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {
      picker = {
        provider = "snacks-picker"
      },
      storage = {
        home = vim.fn.expand("~/projects/myrepos/leetcode-solutions"),
      }
    }
}
