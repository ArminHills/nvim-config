return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'isort', 'black' },
      rust = { 'rustfmt', lsp_format = 'fallback' },
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      typescript = { 'prettier' },
      json = { 'prettier' },
      c = { 'clang-format' },
      cpp = { 'clang-format' },
    },
    formatters = {
      ['clang-format'] = {
        prepend_args = { '-style=file', '-fallback-style=LLVM' },
      },
    },
    format_on_save = {
      timeout_ms = 1000,
      lsp_format = 'fallback',
    },
  },
}
