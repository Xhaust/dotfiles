return {
  'neovim/nvim-lspconfig',
  dependencies = {
      { 'mason-org/mason.nvim', config = true },
    'mason-org/mason-lspconfig.nvim',
    {
      'folke/lazydev.nvim',
      ft = 'lua',
      opts = {
        library = {
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
        },
      },
     }
 },
  config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
	ensure_installed = {"lua_ls", "pyright", "clangd", "ts_ls"}
      })
  end
}
