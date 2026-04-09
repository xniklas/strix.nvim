local M = {}

function M.setup(c, config)
  local sidebar_bg = config.transparent_background and c.none or c.mantle

  return {
    NvimTreeNormal          = { fg = c.subtext1, bg = sidebar_bg },
    NvimTreeNormalNC        = { fg = c.subtext1, bg = sidebar_bg },
    NvimTreeEndOfBuffer     = { fg = sidebar_bg, bg = sidebar_bg },
    NvimTreeCursorLine      = { bg = c.surface0 },
    
    NvimTreeSymlink         = { fg = c.sky },
    NvimTreeFolderName      = { fg = c.text },
    NvimTreeRootFolder      = { fg = c.teal, bold = true },
    NvimTreeFolderIcon      = { fg = c.blue },
    NvimTreeEmptyFolderName = { fg = c.overlay2 },
    NvimTreeOpenedFolderName= { fg = c.teal, italic = true },
    
    NvimTreeGitDirty        = { fg = c.yellow },
    NvimTreeGitNew          = { fg = c.pink },
    NvimTreeGitDeleted      = { fg = c.red },
    NvimTreeGitIgnored      = { fg = c.overlay0 },
    
    NvimTreeIndentMarker    = { fg = c.surface2 },
    NvimTreeImageFile       = { fg = c.text },
    NvimTreeExecFile        = { fg = c.green, bold = true },
    NvimTreeSpecialFile     = { fg = c.peach, underline = true },
  }
end

return M
