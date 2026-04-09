local M = {}

function M.setup(c, config)
  local bg = config.transparent_background and c.none or c.surface0

  return {
    -- Mini.Files
    MiniFilesNormal       = { fg = c.text, bg = bg },
    MiniFilesBorder       = { fg = c.surface2, bg = bg },
    MiniFilesTitle        = { fg = c.teal, bg = bg, bold = true },
    MiniFilesTitleFocused = { fg = c.base, bg = c.teal, bold = true },
    MiniFilesCursorLine   = { bg = c.surface1 },
    MiniFilesDirectory    = { fg = c.blue },
    MiniFilesFile         = { fg = c.text },
    
    -- Mini.Icons (These hook into native icons dynamically)
    MiniIconsAzure        = { fg = c.sky },
    MiniIconsBlue         = { fg = c.blue },
    MiniIconsCyan         = { fg = c.teal },
    MiniIconsGreen        = { fg = c.green },
    MiniIconsGrey         = { fg = c.text },
    MiniIconsOrange       = { fg = c.peach },
    MiniIconsPurple       = { fg = c.pink },
    MiniIconsRed          = { fg = c.red },
    MiniIconsYellow       = { fg = c.yellow },

    -- Mini.Surround / Jump / Operators
    MiniSurround          = { fg = c.base, bg = c.peach, bold = true },
    MiniJump              = { fg = c.base, bg = c.pink, bold = true },
    
    -- Mini.Statusline (If used as primary bar)
    MiniStatuslineModeNormal  = { fg = c.base, bg = c.teal, bold = true },
    MiniStatuslineModeInsert  = { fg = c.base, bg = c.sky, bold = true },
    MiniStatuslineModeVisual  = { fg = c.base, bg = c.pink, bold = true },
    MiniStatuslineModeReplace = { fg = c.base, bg = c.red, bold = true },
    MiniStatuslineModeCommand = { fg = c.base, bg = c.yellow, bold = true },
  }
end

return M
