local M = {}

function M.setup(c, config)
  local sidebar_bg = config.transparent_background and c.none or c.mantle

  return {
    NeoTreeNormal         = { fg = c.subtext1, bg = sidebar_bg },
    NeoTreeNormalNC       = { fg = c.subtext1, bg = sidebar_bg },
    NeoTreeEndOfBuffer    = { fg = sidebar_bg, bg = sidebar_bg },
    NeoTreeCursorLine     = { bg = c.surface0 },
    
    NeoTreeDirectoryIcon  = { fg = c.blue },
    NeoTreeDirectoryName  = { fg = c.text },
    NeoTreeFileName       = { fg = c.subtext1 },
    NeoTreeRootName       = { fg = c.teal, bold = true },
    
    NeoTreeGitAdded       = { fg = c.green },
    NeoTreeGitConflict    = { fg = c.red, bold = true, italic = true },
    NeoTreeGitDeleted     = { fg = c.red },
    NeoTreeGitIgnored     = { fg = c.overlay0 },
    NeoTreeGitModified    = { fg = c.yellow },
    NeoTreeGitUntracked   = { fg = c.pink },
    
    NeoTreeIndentMarker   = { fg = c.surface2 },
    NeoTreeExpander       = { fg = c.overlay1 },
  }
end

return M
