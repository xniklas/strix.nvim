local M = {}

function M.setup(c, config)
  return {
    DashboardHeader  = { fg = c.teal, bold = true },
    DashboardCenter  = { fg = c.blue },
    DashboardFooter  = { fg = c.overlay2, italic = true },
    DashboardKey     = { fg = c.pink },
    DashboardDesc    = { fg = c.text },
    DashboardIcon    = { fg = c.sky, bold = true },
    
    -- Alpha.nvim fallback equivalents
    AlphaHeader      = { fg = c.teal, bold = true },
    AlphaButtons     = { fg = c.blue },
    AlphaFooter      = { fg = c.overlay2, italic = true },
  }
end

return M
