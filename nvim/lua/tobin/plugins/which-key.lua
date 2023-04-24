return {
  'folke/which-key.nvim',
  event = 'BufReadPre',
  config = function()
    -- disable hints for certain operators
    local presets = require 'which-key.plugins.presets'
    presets.operators['v'] = nil
    presets.operators['c'] = nil
    presets.operators['d'] = nil
    presets.operators['y'] = nil

    local wk = require 'which-key'

    wk.setup {}
    wk.register({
      b = { name = 'Buffer' },
      f = { name = 'Telescope' },
      g = { name = 'LSP Actions' },
      t = { name = 'Trouble' },
    }, { prefix = '<leader>' })
  end,
}