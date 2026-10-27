return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        variant = 'moon',
        styles = {
          transparency = true,
        },
        highlight_groups = {
          FloatBorder = { fg = 'muted', bg = 'surface' },
          NormalFloat = { bg = 'surface' },
        },
      }

      vim.cmd.colorscheme 'rose-pine'
    end,
  },
}
