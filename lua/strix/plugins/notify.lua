local M = {}

function M.setup(c, config)
  local bg = config.transparent_background and c.none or c.surface0

  return {
    NotifyERRORBorder = { fg = c.red, bg = bg },
    NotifyWARNBorder  = { fg = c.yellow, bg = bg },
    NotifyINFOBorder  = { fg = c.sky, bg = bg },
    NotifyDEBUGBorder = { fg = c.subtext0, bg = bg },
    NotifyTRACEBorder = { fg = c.overlay2, bg = bg },

    NotifyERRORIcon   = { fg = c.red },
    NotifyWARNIcon    = { fg = c.yellow },
    NotifyINFOIcon    = { fg = c.sky },
    NotifyDEBUGIcon   = { fg = c.subtext0 },
    NotifyTRACEIcon   = { fg = c.overlay2 },

    NotifyERRORTitle  = { fg = c.red, bold = true },
    NotifyWARNTitle   = { fg = c.yellow, bold = true },
    NotifyINFOTitle   = { fg = c.sky, bold = true },
    NotifyDEBUGTitle  = { fg = c.subtext0, bold = true },
    NotifyTRACETitle  = { fg = c.overlay2, bold = true },

    NotifyERRORBody   = { fg = c.text, bg = bg },
    NotifyWARNBody    = { fg = c.text, bg = bg },
    NotifyINFOBody    = { fg = c.text, bg = bg },
    NotifyDEBUGBody   = { fg = c.text, bg = bg },
    NotifyTRACEBody   = { fg = c.text, bg = bg },
  }
end

return M
