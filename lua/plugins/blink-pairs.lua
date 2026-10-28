return {
  'saghen/blink.pairs',
  dependencies = 'saghen/blink.lib',

  version = '*',
  -- download prebuilt binaries from github releases, must be on a versioned release
  build = function() require('blink.pairs').download():pwait(60000) end,
  config = function() require('blink.pairs').setup() end,
}
