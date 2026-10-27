return {
  {
    'tpope/vim-fugitive',
    cmd = { 'Git', 'G' },
    keys = {
      { '<leader>gs', '<cmd>Git<cr>', desc = 'Git status' },
      { '<leader>gc', '<cmd>Git commit<cr>', desc = 'Git commit' },
    },
  },
}
