local M = {}

function M.setup(c, config)
  -- Background logic for transparency toggles
  local bg = config.transparent_background and c.none or c.base
  local float_bg = config.transparent_background and c.none or c.surface0

  local highlights = {
    -- Editor UI
    Normal       = { fg = c.text, bg = bg },
    NormalFloat  = { fg = c.text, bg = float_bg },
    FloatBorder  = { fg = c.surface2, bg = float_bg },
    ColorColumn  = { bg = c.surface0 },
    Cursor       = { fg = c.base, bg = c.teal },
    CursorLine   = { bg = c.surface0 },
    CursorLineNr = { fg = c.yellow, bold = true },
    LineNr       = { fg = c.overlay1 },
    Directory    = { fg = c.blue },
    ErrorMsg     = { fg = c.red, bold = true },
    VertSplit    = { fg = c.surface2 },
    Folded       = { fg = c.overlay2, bg = c.surface0 },
    Search       = { fg = c.none, bg = c.overlay0 }, 
    IncSearch    = { fg = c.base, bg = c.yellow },
    MatchParen   = { fg = c.peach, bold = true },
    NonText      = { fg = c.overlay0 },
    Pmenu        = { fg = c.text, bg = float_bg },
    PmenuSel     = { fg = c.base, bg = c.teal },
    PmenuSbar    = { bg = c.surface1 },
    PmenuThumb   = { bg = c.overlay0 },
    Visual       = { bg = c.surface2 },
    WarningMsg   = { fg = c.yellow },

    -- Base Syntax (fallback for all treesitter/native highlighting)
    Comment      = { fg = c.overlay2, italic = true },
    Constant     = { fg = c.peach },
    String       = { fg = c.sky },
    Character    = { fg = c.sky },
    Number       = { fg = c.lavender },
    Boolean      = { fg = c.lavender },
    Float        = { fg = c.lavender },
    Identifier   = { fg = c.text },
    Function     = { fg = c.teal },
    Statement    = { fg = c.pink },
    Conditional  = { fg = c.pink },
    Repeat       = { fg = c.pink },
    Label        = { fg = c.peach },
    Operator     = { fg = c.sky },
    Keyword      = { fg = c.pink, italic = true },
    Exception    = { fg = c.red },
    PreProc      = { fg = c.flamingo },
    Include      = { fg = c.pink },
    Define       = { fg = c.pink },
    Macro        = { fg = c.flamingo },
    Type         = { fg = c.mauve },
    StorageClass = { fg = c.mauve },
    Structure    = { fg = c.mauve },
    Typedef      = { fg = c.mauve },
    Special      = { fg = c.flamingo },
    Tag          = { fg = c.pink },
    Delimiter    = { fg = c.subtext0 },
    Debug        = { fg = c.rosewater },
    Underlined   = { underline = true },
    Bold         = { bold = true },
    Italic       = { italic = true },
    Error        = { fg = c.red },
    Todo         = { fg = c.base, bg = c.yellow, bold = true },
  }

  -- Core diagnostic highlights
  local diagnostics = {
    DiagnosticError = { fg = c.red, bg = c.red_bg },
    DiagnosticWarn  = { fg = c.yellow, bg = c.yellow_bg },
    DiagnosticInfo  = { fg = c.sky, bg = c.sky_bg },
    DiagnosticHint  = { fg = c.teal, bg = c.teal_bg },
    DiagnosticUnderlineError = { sp = c.red, underline = true },
    DiagnosticUnderlineWarn  = { sp = c.yellow, underline = true },
    DiagnosticUnderlineInfo  = { sp = c.sky, underline = true },
    DiagnosticUnderlineHint  = { sp = c.teal, underline = true },
  }
  
  -- Merge diagnostics
  highlights = vim.tbl_extend("force", highlights, diagnostics)

  -- Module/Plugin integration loader
  -- This iterates through your chosen integrations and injects their custom highlights
  for plugin, enabled in pairs(config.integrations) do
    if enabled then
      local ok, plugin_highlights = pcall(require, "strix.plugins." .. plugin)
      if ok and type(plugin_highlights.setup) == "function" then
         local injected = plugin_highlights.setup(c, config)
         highlights = vim.tbl_extend("force", highlights, injected)
      end
    end
  end

  return highlights
end

return M
