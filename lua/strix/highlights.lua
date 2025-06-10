local M = {}

function M.get_highlights(colors, config)
  local highlights = {}

  highlights.Normal = { fg = colors.fg, bg = config.transparent and "NONE" or colors.bg }
  highlights.NormalFloat = { fg = colors.fg, bg = config.transparent and "NONE" or colors.bg_dark }
  highlights.FloatBorder = { fg = colors.fg_gutter, bg = config.transparent and "NONE" or colors.bg_dark }
  highlights.FloatTitle = { fg = colors.fg, bg = config.transparent and "NONE" or colors.bg_dark }

  highlights.Cursor = { fg = colors.bg, bg = colors.fg }
  highlights.CursorLine = { bg = colors.bg_highlight }
  highlights.CursorColumn = { bg = colors.bg_highlight }
  highlights.ColorColumn = { bg = colors.bg_highlight }
  highlights.CursorLineNr = { fg = colors.yellow, style = "bold" }
  highlights.LineNr = { fg = colors.fg_gutter }
  highlights.SignColumn = { fg = colors.fg_gutter, bg = config.transparent and "NONE" or colors.bg }
  highlights.FoldColumn = { fg = colors.fg_gutter, bg = config.transparent and "NONE" or colors.bg }

  highlights.Visual = { bg = colors.bg_highlight }
  highlights.VisualNOS = { bg = colors.bg_highlight }
  highlights.Search = { fg = colors.bg, bg = colors.yellow }
  highlights.IncSearch = { fg = colors.bg, bg = colors.orange }
  highlights.CurSearch = { fg = colors.bg, bg = colors.orange }
  highlights.Substitute = { fg = colors.bg, bg = colors.red }

  highlights.Conceal = { fg = colors.fg_gutter }
  highlights.Whitespace = { fg = colors.fg_gutter }
  highlights.NonText = { fg = colors.fg_gutter }
  highlights.SpecialKey = { fg = colors.fg_gutter }
  highlights.EndOfBuffer = { fg = colors.bg }

  highlights.Pmenu = { fg = colors.fg, bg = colors.bg_dark }
  highlights.PmenuSel = { fg = colors.fg, bg = colors.bg_highlight }
  highlights.PmenuSbar = { bg = colors.bg_dark }
  highlights.PmenuThumb = { bg = colors.fg_gutter }
  highlights.WildMenu = { fg = colors.fg, bg = colors.bg_highlight }

  highlights.TabLine = { fg = colors.fg_gutter, bg = colors.bg_dark }
  highlights.TabLineFill = { bg = colors.bg_dark }
  highlights.TabLineSel = { fg = colors.fg, bg = colors.bg }

  highlights.StatusLine = { fg = colors.fg, bg = colors.bg_dark }
  highlights.StatusLineNC = { fg = colors.fg_gutter, bg = colors.bg_dark }
  highlights.WinSeparator = { fg = colors.dark3 }

  highlights.Folded = { fg = colors.blue, bg = colors.bg_darker }
  highlights.FoldColumn = { fg = colors.fg_gutter, bg = config.transparent and "NONE" or colors.bg }

  highlights.DiffAdd = { bg = colors.git.add, fg = colors.bg }
  highlights.DiffChange = { bg = colors.git.change, fg = colors.bg }
  highlights.DiffDelete = { bg = colors.git.delete, fg = colors.bg }
  highlights.DiffText = { bg = colors.blue, fg = colors.bg }

  highlights.SpellBad = { sp = colors.red, style = "undercurl" }
  highlights.SpellCap = { sp = colors.yellow, style = "undercurl" }
  highlights.SpellLocal = { sp = colors.cyan, style = "undercurl" }
  highlights.SpellRare = { sp = colors.purple, style = "undercurl" }

  highlights.Question = { fg = colors.blue }
  highlights.ErrorMsg = { fg = colors.red }
  highlights.WarningMsg = { fg = colors.yellow }
  highlights.MoreMsg = { fg = colors.blue }
  highlights.ModeMsg = { fg = colors.fg, style = "bold" }

  highlights.Title = { fg = colors.blue, style = "bold" }
  highlights.Directory = { fg = colors.blue }

  highlights.MatchParen = { fg = colors.orange, style = "bold" }

  local italic_comments = config.styles.comments.italic and "italic" or "NONE"
  local italic_keywords = config.styles.keywords.italic and "italic" or "NONE"

  highlights.Comment = { fg = colors.comment, style = italic_comments }
  highlights.Todo = { fg = colors.bg, bg = colors.yellow, style = "bold" }
  highlights.Note = { fg = colors.bg, bg = colors.blue, style = "bold" }

  highlights.Constant = { fg = colors.orange }
  highlights.String = { fg = colors.green }
  highlights.Character = { fg = colors.green }
  highlights.Number = { fg = colors.orange }
  highlights.Boolean = { fg = colors.orange }
  highlights.Float = { fg = colors.orange }

  highlights.Identifier = { fg = colors.red, style = config.styles.variables.style or "NONE" }
  highlights.Function = { fg = colors.blue, style = config.styles.functions.style or "NONE" }

  highlights.Statement = { fg = colors.magenta, style = italic_keywords }
  highlights.Conditional = { fg = colors.magenta, style = italic_keywords }
  highlights.Repeat = { fg = colors.magenta, style = italic_keywords }
  highlights.Label = { fg = colors.magenta, style = italic_keywords }
  highlights.Operator = { fg = colors.purple }
  highlights.Keyword = { fg = colors.purple, style = italic_keywords }
  highlights.Exception = { fg = colors.magenta, style = italic_keywords }

  highlights.PreProc = { fg = colors.cyan }
  highlights.Include = { fg = colors.cyan }
  highlights.Define = { fg = colors.cyan }
  highlights.Macro = { fg = colors.cyan }
  highlights.PreCondit = { fg = colors.cyan }

  highlights.Type = { fg = colors.yellow }
  highlights.StorageClass = { fg = colors.yellow }
  highlights.Structure = { fg = colors.yellow }
  highlights.Typedef = { fg = colors.yellow }

  highlights.Special = { fg = colors.blue }
  highlights.SpecialChar = { fg = colors.purple }
  highlights.Tag = { fg = colors.red }
  highlights.Delimiter = { fg = colors.red1 }
  highlights.SpecialComment = { fg = colors.purple }
  highlights.Debug = { fg = colors.orange }

  highlights.Underlined = { fg = colors.blue, style = "underline" }
  highlights.Ignore = { fg = colors.fg_gutter }
  highlights.Error = { fg = colors.red }

  highlights.Added = { fg = colors.git.add }
  highlights.Changed = { fg = colors.git.change }
  highlights.Removed = { fg = colors.git.delete }

  -- Missing UI Groups
  highlights.lCursor = { fg = colors.bg, bg = colors.fg }
  highlights.CursorIM = { fg = colors.bg, bg = colors.fg }
  highlights.LineNrAbove = { fg = colors.fg_gutter }
  highlights.LineNrBelow = { fg = colors.fg_gutter }
  highlights.MsgArea = { fg = colors.fg, bg = config.transparent and "NONE" or colors.bg }
  highlights.NormalNC = { fg = colors.fg_dark, bg = config.transparent and "NONE" or colors.bg }
  highlights.NormalSB = { fg = colors.fg, bg = colors.bg_dark }
  highlights.PmenuMatch = { fg = colors.blue, bg = colors.bg_dark }
  highlights.PmenuMatchSel = { fg = colors.blue, bg = require("strix.colors").blend(colors.bg, colors.blue, 0.15) }
  highlights.QuickFixLine = { bg = require("strix.colors").blend(colors.bg, colors.blue, 0.1) }
  highlights.SignColumnSB = { fg = colors.fg_gutter, bg = colors.bg_dark }
  highlights.VertSplit = { fg = colors.dark3 }
  highlights.WinBar = { fg = colors.fg }
  highlights.WinBarNC = { fg = colors.fg_gutter }

  -- Missing Text/Syntax Groups
  highlights.Bold = { style = "bold" }
  highlights.Italic = { style = "italic" }

  -- LSP Groups
  highlights.LspReferenceText = { bg = require("strix.colors").blend(colors.bg, colors.blue, 0.1) }
  highlights.LspReferenceRead = { bg = require("strix.colors").blend(colors.bg, colors.green, 0.1) }
  highlights.LspReferenceWrite = { bg = require("strix.colors").blend(colors.bg, colors.orange, 0.1) }
  highlights.LspSignatureActiveParameter = { fg = colors.yellow, style = "bold" }
  highlights.LspCodeLens = { fg = colors.comment }
  highlights.LspInlayHint = { fg = colors.purple, bg = require("strix.colors").blend(colors.bg, colors.purple, 0.1) }
  highlights.LspInfoBorder = { fg = colors.fg_gutter }

  -- Diagnostic Groups
  highlights.DiagnosticError = { fg = colors.red }
  highlights.DiagnosticWarn = { fg = colors.yellow }
  highlights.DiagnosticInfo = { fg = colors.blue }
  highlights.DiagnosticHint = { fg = colors.cyan }
  highlights.DiagnosticUnnecessary = { fg = colors.fg_gutter }
  highlights.DiagnosticVirtualTextError =
    { fg = colors.red, bg = require("strix.colors").blend(colors.bg, colors.red, 0.1) }
  highlights.DiagnosticVirtualTextWarn =
    { fg = colors.yellow, bg = require("strix.colors").blend(colors.bg, colors.yellow, 0.1) }
  highlights.DiagnosticVirtualTextInfo =
    { fg = colors.blue, bg = require("strix.colors").blend(colors.bg, colors.blue, 0.1) }
  highlights.DiagnosticVirtualTextHint =
    { fg = colors.cyan, bg = require("strix.colors").blend(colors.bg, colors.cyan, 0.1) }
  highlights.DiagnosticUnderlineError = { sp = colors.red, style = "undercurl" }
  highlights.DiagnosticUnderlineWarn = { sp = colors.yellow, style = "undercurl" }
  highlights.DiagnosticUnderlineInfo = { sp = colors.blue, style = "undercurl" }
  highlights.DiagnosticUnderlineHint = { sp = colors.cyan, style = "undercurl" }

  -- Health Groups
  highlights.healthError = { fg = colors.red }
  highlights.healthSuccess = { fg = colors.green }
  highlights.healthWarning = { fg = colors.yellow }

  -- Git Diff Groups
  highlights.diffAdded = { fg = colors.git.add }
  highlights.diffRemoved = { fg = colors.git.delete }
  highlights.diffChanged = { fg = colors.git.change }
  highlights.diffOldFile = { fg = colors.red }
  highlights.diffNewFile = { fg = colors.green }
  highlights.diffFile = { fg = colors.blue }
  highlights.diffLine = { fg = colors.purple }
  highlights.diffIndexLine = { fg = colors.cyan }

  -- Debug Groups
  highlights.debugBreakpoint = { fg = colors.red, bg = require("strix.colors").blend(colors.bg, colors.red, 0.15) }
  highlights.debugPC = { fg = colors.bg, bg = colors.blue }

  -- Help Groups
  highlights.helpCommand = { fg = colors.blue }
  highlights.helpExample = { fg = colors.green }

  -- HTML Groups
  highlights.htmlH1 = { fg = colors.red, style = "bold" }
  highlights.htmlH2 = { fg = colors.orange, style = "bold" }

  -- QuickFix Groups
  highlights.qfFileName = { fg = colors.blue }
  highlights.qfLineNr = { fg = colors.yellow }

  -- Misc Groups
  highlights.dosIniLabel = { fg = colors.purple }

  -- Treesitter Groups
  local treesitter_highlights = require("strix.treesitter").get_highlights(colors, config)
  for group, opts in pairs(treesitter_highlights) do
    highlights[group] = opts
  end

  -- Semantic Token Groups
  local semantic_highlights = require("strix.semantic_tokens").get_highlights(colors, config)
  for group, opts in pairs(semantic_highlights) do
    highlights[group] = opts
  end

  -- Render Markdown Groups
  local render_markdown_highlights = require("strix.render_markdown").get_highlights(colors, config)
  for group, opts in pairs(render_markdown_highlights) do
    highlights[group] = opts
  end

  -- Snacks.nvim Plugin Groups
  local snacks_highlights = require("strix.snacks").get_highlights(colors, config)
  for group, opts in pairs(snacks_highlights) do
    highlights[group] = opts
  end

  -- LSP Kinds Groups
  local kinds_highlights = require("strix.kinds").get_highlights(colors, config)
  for group, opts in pairs(kinds_highlights) do
    highlights[group] = opts
  end

  -- Blink Completion Groups
  local blink_highlights = require("strix.blink").get_highlights(colors, config)
  for group, opts in pairs(blink_highlights) do
    highlights[group] = opts
  end

  return highlights
end

return M
