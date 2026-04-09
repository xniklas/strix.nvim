local M = {}

function M.setup(c, config)
  -- Push Noice panels into the deepest crust so alerts pop
  local bg = config.transparent_background and c.none or c.crust

  return {
    NoiceCmdline           = { bg = bg },
    NoiceCmdlinePopup      = { bg = bg },
    NoiceCmdlinePopupBorder= { fg = c.surface2, bg = bg },
    NoiceCmdlinePopupTitle = { fg = c.teal, bold = true },
    NoiceCmdlinePrompt     = { fg = c.pink, bold = true },
    
    NoiceCompletionItemKindDefault = { fg = c.overlay1 },
    NoiceMini                = { bg = bg },
    NoiceScrollbar           = { bg = c.surface0 },
    NoiceScrollbarThumb      = { bg = c.surface2 },
  }
end

return M
