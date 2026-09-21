return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'mason-org/mason.nvim', config = true },
    'mason-org/mason-lspconfig.nvim',
  },
  config = function()
    local servers = { "lua_ls", "basedpyright", "ruff", "clangd", "ts_ls" }

    require("mason").setup()
    require("mason-lspconfig").setup({ ensure_installed = servers })

    vim.lsp.config('basedpyright', { settings = { basedpyright = { analysis = { typeCheckingMode = "standard" } } } })
    vim.lsp.config('ruff', { on_attach = function(c) c.server_capabilities.hoverProvider = false end })

    vim.lsp.enable(servers)

    vim.diagnostic.config({
      virtual_text = false,
      underline = true,
      severity_sort = true,
      float = { border = "rounded", source = "always" },
    })

    vim.keymap.set('n', 'gl', vim.diagnostic.open_float)
  end
}
