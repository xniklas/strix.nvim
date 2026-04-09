local M = {}

function M.setup(c, config)
  -- Uses the exact same spatial isolation as telescope:
  local prompt_bg = config.transparent_background and c.none or c.surface0
  local results_bg = config.transparent_background and c.none or c.mantle

  return {
    FzfLuaNormal        = { fg = c.text, bg = results_bg },
    FzfLuaBorder        = { fg = c.overlay0, bg = results_bg },
    
    FzfLuaTitle         = { fg = c.base, bg = c.teal, bold = true },
    FzfLuaPreviewTitle  = { fg = c.base, bg = c.sky, bold = true },
    
    FzfLuaFzfNormal     = { fg = c.text, bg = results_bg },
    FzfLuaFzfCursorLine = { fg = c.none, bg = c.surface2 },
    FzfLuaFzfMatch      = { fg = c.yellow, bold = true },
    FzfLuaFzfPrompt     = { fg = c.pink, bg = prompt_bg, bold = true },
    
    FzfLuaCursor        = { fg = c.teal, bg = c.surface2 },
    FzfLuaSearch        = { fg = c.yellow, bg = c.surface2 },
    
    FzfLuaHeaderBind    = { fg = c.flamingo },
    FzfLuaHeaderText    = { fg = c.sky },
    FzfLuaPath          = { fg = c.sky },
    FzfLuaBufName       = { fg = c.text },
    FzfLuaBufNr         = { fg = c.teal },
    FzfLuaBufFlagCur    = { fg = c.peach },
    FzfLuaBufFlagAlt    = { fg = c.blue },
  }
end

return M
