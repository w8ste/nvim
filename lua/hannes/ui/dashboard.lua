local config = {
  center = {
    {
      icon = '',
      icon_hl = 'group',
      desc = 'description',
      desc_hl = 'group',
      key = 'shortcut key in dashboard buffer not keymap !!',
      key_hl = 'group',
      action = '',
    },
  },
  footer = {},
}
require('dashboard').setup {
    theme = 'doom',
    config  = config,
}
