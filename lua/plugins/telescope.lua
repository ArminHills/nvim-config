return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>pf', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
    { '<C-p>', '<cmd>Telescope git_files<cr>', desc = 'Find Git files' },
    {
      '<leader>pws',
      function()
        require('telescope.builtin').grep_string {
          search = vim.fn.expand '<cword>',
        }
      end,
      desc = 'Search word under cursor',
    },
    {
      '<leader>pWs',
      function()
        require('telescope.builtin').grep_string {
          search = vim.fn.expand '<cWORD>',
        }
      end,
      desc = 'Search WORD under cursor',
    },
    {
      '<leader>ps',
      function()
        require('telescope.builtin').grep_string {
          search = vim.fn.input 'Grep > ',
        }
      end,
      desc = 'Grep input',
    },
    { '<leader>vh', '<cmd>Telescope help_tags<cr>', desc = 'Help tags' },
  },
}
