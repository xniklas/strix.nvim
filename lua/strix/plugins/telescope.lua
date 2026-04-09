local M = {}

function M.setup(c, config)
  -- Separate prompt vs results layer background colors
  local prompt_bg = config.transparent_background and c.none or c.surface0
  local results_bg = config.transparent_background and c.none or c.mantle

  return {
    TelescopeBorder         = { fg = c.overlay0, bg = results_bg },
    TelescopePromptBorder   = { fg = c.teal, bg = prompt_bg },
    TelescopeResultsBorder  = { fg = c.overlay0, bg = results_bg },
    TelescopePreviewBorder  = { fg = c.overlay0, bg = results_bg },
    
    TelescopeNormal         = { fg = c.text, bg = results_bg },
    TelescopePromptNormal   = { fg = c.text, bg = prompt_bg },
    TelescopeResultsNormal  = { fg = c.subtext1, bg = results_bg },
    TelescopePreviewNormal  = { fg = c.text, bg = results_bg },
    
    TelescopePromptPrefix   = { fg = c.pink, bg = prompt_bg, bold = true },
    TelescopePromptTitle    = { fg = c.base, bg = c.teal, bold = true },
    TelescopePreviewTitle   = { fg = c.base, bg = c.sky, bold = true },
    TelescopeResultsTitle   = { fg = c.base, bg = c.overlay2, bold = true },

    TelescopeSelection      = { fg = c.none, bg = c.surface2 },
    TelescopeSelectionCaret = { fg = c.teal },
    TelescopeMatching       = { fg = c.yellow, bold = true },
  }
end

return M
