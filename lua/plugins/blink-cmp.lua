return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets',
    {
      'L3MON4D3/LuaSnip',
      version = 'v2.*',
      build = 'make install_jsregexp',
    },
  },
  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    -- C-y: accept
    keymap = { preset = 'default' },

    appearance = {
      nerd_font_variant = 'normal', --mono/normal
    },
    signature = { enabled = true },

    -- (Default) Only show the documentation popup when manually triggered
    completion = { documentation = { auto_show = false } },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    snippets = { preset = 'luasnip' },
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = 'prefer_rust_with_warning' },
    completion = {
      accept = { auto_brackets = { enabled = true } },
      list = { selection = { preselect = false, auto_insert = true } },
      menu = {
        draw = {
          gap = 2,
          components = {
            kind_icon = {
              text = function(ctx)
                if require('blink.cmp.sources.lsp.hacks.tailwind').get_hex_color(ctx.item) then return '󱓻' end
                return ctx.kind_icon .. ctx.icon_gap
              end,
            },
          },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
      },
    },
  },
  opts_extend = { 'sources.default' },
}
