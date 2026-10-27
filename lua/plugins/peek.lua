return {
  'toppair/peek.nvim',
  event = { 'VeryLazy' },
  build = 'deno task --quiet build:fast',
  config = function()
    require('peek').setup()
    vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
    vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    vim.keymap.set('n', '<leader>md', function() require('peek').open() end, { desc = 'Peek Markdown' })
    vim.keymap.set('n', '<leader>mc', function() require('peek').close() end, { desc = 'Close Peek' })
  end,
}
