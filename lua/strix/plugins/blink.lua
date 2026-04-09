local M = {}

function M.setup(c, config)
  return {
    BlinkCmpMenu              = { fg = c.overlay1 },
    BlinkCmpMenuBorder        = { fg = c.surface2 },
    
    BlinkCmpLabel             = { fg = c.overlay2 },
    BlinkCmpLabelDeprecated   = { fg = c.overlay0, strikethrough = true },
    BlinkCmpLabelMatch        = { fg = c.teal, bold = true },
    BlinkCmpLabelMatchFuzzy   = { fg = c.teal, bold = true },
    
    BlinkCmpGhostText         = { fg = c.surface2 },
    
    BlinkCmpDoc               = { fg = c.text },
    BlinkCmpDocBorder         = { fg = c.surface2 },
    
    BlinkCmpSignatureHelp     = { fg = c.text },
    BlinkCmpSignatureHelpBorder = { fg = c.surface2 },

    -- Blink Cmp Kinds inherently link to CmpItemKind or standard highlights, 
    -- but we enforce the base fallback here 
    BlinkCmpKind              = { fg = c.overlay1 },
  }
end

return M
