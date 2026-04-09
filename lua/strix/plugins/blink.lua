local M = {}

function M.setup(c, config)
  local float_bg = config.transparent_background and c.none or c.surface0

  return {
    BlinkCmpMenu              = { fg = c.text, bg = float_bg },
    BlinkCmpMenuBorder        = { fg = c.surface2, bg = float_bg },
    
    BlinkCmpLabel             = { fg = c.overlay2 },
    BlinkCmpLabelDeprecated   = { fg = c.overlay0, strikethrough = true },
    BlinkCmpLabelMatch        = { fg = c.teal, bold = true },
    BlinkCmpLabelMatchFuzzy   = { fg = c.teal, bold = true },
    
    BlinkCmpGhostText         = { fg = c.surface2 },
    
    BlinkCmpDoc               = { fg = c.text, bg = float_bg },
    BlinkCmpDocBorder         = { fg = c.surface2, bg = float_bg },
    
    BlinkCmpSignatureHelp     = { fg = c.text, bg = float_bg },
    BlinkCmpSignatureHelpBorder = { fg = c.surface2, bg = float_bg },

    -- Blink Cmp Kinds inherently link to CmpItemKind or standard highlights, 
    -- but we enforce the base fallback here 
    BlinkCmpKind              = { fg = c.overlay1 },
  }
end

return M
