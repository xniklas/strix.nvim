local M = {}

function M.get_highlights(colors, config)
  local highlights = {}

  -- Header highlights - using different colors for each level
  highlights.RenderMarkdownH1 = { fg = colors.red, style = "bold" }
  highlights.RenderMarkdownH2 = { fg = colors.orange, style = "bold" }
  highlights.RenderMarkdownH3 = { fg = colors.yellow, style = "bold" }
  highlights.RenderMarkdownH4 = { fg = colors.green, style = "bold" }
  highlights.RenderMarkdownH5 = { fg = colors.blue, style = "bold" }
  highlights.RenderMarkdownH6 = { fg = colors.purple, style = "bold" }

  -- Header background highlights - subtle backgrounds using blend
  highlights.RenderMarkdownH1Bg = { bg = require("strix.colors").blend(colors.bg, colors.red, 0.15) }
  highlights.RenderMarkdownH2Bg = { bg = require("strix.colors").blend(colors.bg, colors.orange, 0.15) }
  highlights.RenderMarkdownH3Bg = { bg = require("strix.colors").blend(colors.bg, colors.yellow, 0.15) }
  highlights.RenderMarkdownH4Bg = { bg = require("strix.colors").blend(colors.bg, colors.green, 0.15) }
  highlights.RenderMarkdownH5Bg = { bg = require("strix.colors").blend(colors.bg, colors.blue, 0.15) }
  highlights.RenderMarkdownH6Bg = { bg = require("strix.colors").blend(colors.bg, colors.purple, 0.15) }

  -- Code block highlights
  highlights.RenderMarkdownCode = { fg = colors.cyan, bg = colors.bg_dark }
  highlights.RenderMarkdownCodeBorder = { fg = colors.cyan }
  highlights.RenderMarkdownCodeFallback = { fg = colors.cyan, bg = colors.bg_dark }
  highlights.RenderMarkdownCodeInline = { fg = colors.cyan, bg = require("strix.colors").blend(colors.bg, colors.cyan, 0.1) }

  -- Quote highlights - using different colors for nesting levels
  highlights.RenderMarkdownQuote = { fg = colors.comment, style = "italic" }
  highlights.RenderMarkdownQuote1 = { fg = colors.blue, style = "italic" }
  highlights.RenderMarkdownQuote2 = { fg = colors.green, style = "italic" }
  highlights.RenderMarkdownQuote3 = { fg = colors.yellow, style = "italic" }
  highlights.RenderMarkdownQuote4 = { fg = colors.orange, style = "italic" }
  highlights.RenderMarkdownQuote5 = { fg = colors.red, style = "italic" }
  highlights.RenderMarkdownQuote6 = { fg = colors.purple, style = "italic" }

  -- Special highlights
  highlights.RenderMarkdownInlineHighlight = { bg = colors.bg_highlight }
  highlights.RenderMarkdownBullet = { fg = colors.blue }
  highlights.RenderMarkdownDash = { fg = colors.fg_gutter }
  highlights.RenderMarkdownSign = { fg = colors.fg_gutter }
  highlights.RenderMarkdownMath = { fg = colors.purple }
  highlights.RenderMarkdownIndent = { fg = colors.fg_gutter }
  highlights.RenderMarkdownHtmlComment = { fg = colors.comment, style = "italic" }

  -- Link highlights
  highlights.RenderMarkdownLink = { fg = colors.blue, style = "underline" }
  highlights.RenderMarkdownWikiLink = { fg = colors.cyan, style = "underline" }

  -- Checkbox highlights
  highlights.RenderMarkdownUnchecked = { fg = colors.fg_gutter }
  highlights.RenderMarkdownChecked = { fg = colors.green }
  highlights.RenderMarkdownTodo = { fg = colors.yellow, style = "bold" }

  -- Table highlights
  highlights.RenderMarkdownTableHead = { fg = colors.blue, style = "bold" }
  highlights.RenderMarkdownTableRow = { fg = colors.fg }
  highlights.RenderMarkdownTableFill = { fg = colors.fg_gutter }

  -- Callout highlights - using diagnostic colors
  highlights.RenderMarkdownSuccess = { fg = colors.green }
  highlights.RenderMarkdownInfo = { fg = colors.blue }
  highlights.RenderMarkdownHint = { fg = colors.cyan }
  highlights.RenderMarkdownWarn = { fg = colors.yellow }
  highlights.RenderMarkdownError = { fg = colors.red }

  return highlights
end

return M