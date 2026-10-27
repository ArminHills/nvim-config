return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'rose-pine',
      globalstatus = true,
      component_separators = { left = '│', right = '│' },
      section_separators = { left = '', right = '' },
      fmt = string.lower,
    },
    sections = {
      lualine_a = {
        'mode',
        'mode',
        fmt = function(str) return str:sub(1, 1) end,
      },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = {
        { 'filename', path = 1, file_status = true },
      },
      lualine_x = { 'encoding', 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
  },
  config = function()
    local p = require 'rose-pine.palette'
    require('lualine').setup {
      options = {
        theme = {
          normal = {
            a = { fg = p.base, bg = p.iris, gui = 'bold' },
            b = { fg = p.text, bg = p.surface },
            c = { fg = p.subtle, bg = p.base },
          },
          insert = {
            a = { fg = p.base, bg = p.foam, gui = 'bold' },
          },
          visual = {
            a = { fg = p.base, bg = p.rose, gui = 'bold' },
          },
          replace = {
            a = { fg = p.base, bg = p.love, gui = 'bold' },
          },
          command = {
            a = { fg = p.base, bg = p.gold, gui = 'bold' },
          },
          inactive = {
            a = { fg = p.muted, bg = p.base },
            b = { fg = p.muted, bg = p.base },
            c = { fg = p.subtle, bg = p.base },
          },
        },
      },
    }
  end,
}
