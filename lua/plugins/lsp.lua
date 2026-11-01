return {
  { 'neovim/nvim-lspconfig', config = function()
    vim.lsp.config("ts_ls", {
      capabilities = require("blink.cmp").get_lsp_capabilities(),
      settings = {
        typescript = {
          suggest = {
            autoImports = true,
          },
          preferences = {
            includePackageJsonAutoImports = "auto",
            importModuleSpecifier = "shortest",
          },
        },
        javascript = {
          suggest = {
            autoImports = true,
          },
        },
      },
    })
    vim.lsp.enable {
      'pyright',
      'ts_ls'
    }
  end },
  { 'mason-org/mason.nvim', opts = {} },
  { 'mason-org/mason-lspconfig.nvim', opts = {
    automatic_enable = true,
  } },
}
