local M = {}

function M.get_highlights(colors, config)
  local blend = require("strix.colors").blend
  local none = config.transparent and "NONE" or nil
  local bg_float = colors.bg_dark
  
  local highlights = {
    -- Blink completion menu
    BlinkCmpDoc = { fg = colors.fg, bg = bg_float },
    BlinkCmpDocBorder = { fg = colors.fg_gutter, bg = bg_float },
    BlinkCmpGhostText = { fg = colors.comment },
    BlinkCmpLabel = { fg = colors.fg },
    BlinkCmpLabelDeprecated = { fg = colors.fg_gutter, style = "strikethrough" },
    BlinkCmpLabelMatch = { fg = colors.blue, style = "bold" },
    BlinkCmpMenu = { fg = colors.fg, bg = bg_float },
    BlinkCmpMenuBorder = { fg = colors.fg_gutter, bg = bg_float },
    BlinkCmpSignatureHelp = { fg = colors.fg, bg = bg_float },
    BlinkCmpSignatureHelpBorder = { fg = colors.fg_gutter, bg = bg_float },
    
    -- AI provider kinds
    BlinkCmpKindCodeium = { fg = colors.green, bg = blend(colors.green, colors.bg, 0.1) },
    BlinkCmpKindCopilot = { fg = colors.orange, bg = blend(colors.orange, colors.bg, 0.1) },
    BlinkCmpKindSupermaven = { fg = colors.purple, bg = blend(colors.purple, colors.bg, 0.1) },
    BlinkCmpKindTabNine = { fg = colors.blue, bg = blend(colors.blue, colors.bg, 0.1) },
    BlinkCmpKindDefault = { fg = colors.fg_gutter },
  }
  
  -- Add all LSP kinds with BlinkCmpKind prefix using the kinds module
  local kinds_module = require("strix.kinds")
  highlights = kinds_module.kinds(highlights, "BlinkCmpKind%s", colors)
  
  return highlights
end

return M