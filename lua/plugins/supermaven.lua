return {
  'supermaven-inc/supermaven-nvim',
  config = function()
    require('supermaven-nvim').setup {}
    vim.keymap.set({ 'n', 'i' }, '<leader>sp', '<Cmd>SupermavenToggle<Cr>')
  end,
}
