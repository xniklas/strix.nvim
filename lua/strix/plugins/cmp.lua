local M = {}

function M.setup(c, config)
  return {
    CmpItemAbbr           = { fg = c.overlay2 },
    CmpItemAbbrDeprecated = { fg = c.overlay0, strikethrough = true },
    CmpItemAbbrMatch      = { fg = c.teal, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.teal, bold = true },
    CmpItemMenu           = { fg = c.overlay1 },
    
    CmpGhostText          = { fg = c.surface2 },
  }
end

return M
