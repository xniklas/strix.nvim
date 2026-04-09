local M = {}

function M.setup(c, config)
  local bg = config.transparent_background and c.none or c.crust
  local tab_bg = c.mantle
  local active_bg = c.base

  return {
    BufferLineFill               = { bg = bg },
    BufferLineBackground         = { fg = c.overlay1, bg = tab_bg },
    
    BufferLineBufferSelected     = { fg = c.text, bg = active_bg, bold = true },
    BufferLineBufferVisible      = { fg = c.subtext1, bg = tab_bg },
    
    BufferLineCloseButton        = { fg = c.overlay1, bg = tab_bg },
    BufferLineCloseButtonVisible = { fg = c.overlay1, bg = tab_bg },
    BufferLineCloseButtonSelected= { fg = c.red, bg = active_bg },
    
    BufferLineNumbers            = { fg = c.overlay1, bg = tab_bg },
    BufferLineNumbersVisible     = { fg = c.overlay1, bg = tab_bg },
    BufferLineNumbersSelected    = { fg = c.teal, bg = active_bg, italic = true },
    
    BufferLineSeparator          = { fg = bg, bg = tab_bg },
    BufferLineSeparatorVisible   = { fg = bg, bg = tab_bg },
    BufferLineSeparatorSelected  = { fg = bg, bg = active_bg },
    
    BufferLineIndicatorSelected  = { fg = c.teal, bg = active_bg },
    BufferLineModified           = { fg = c.yellow, bg = tab_bg },
    BufferLineModifiedVisible    = { fg = c.yellow, bg = tab_bg },
    BufferLineModifiedSelected   = { fg = c.peach, bg = active_bg },
  }
end

return M
