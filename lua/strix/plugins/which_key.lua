local M = {}

function M.setup(c, config)
  local bg = config.transparent_background and c.none or c.surface0

  return {
    WhichKey          = { fg = c.sky },
    WhichKeyGroup     = { fg = c.teal },
    WhichKeyDesc      = { fg = c.pink },
    WhichKeySeparator = { fg = c.overlay0 },
    WhichKeyFloat     = { bg = bg },
    WhichKeyBorder    = { fg = c.surface2, bg = bg },
    WhichKeyValue     = { fg = c.overlay2 },
  }
end

return M
