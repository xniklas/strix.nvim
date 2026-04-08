local M = {}

function M.setup(c, config)
  -- Background logic for transparency toggles
  local bg = config.transparent_background and c.none or c.base
  local float_bg = config.transparent_background and c.none or c.mantle

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
    Pmenu        = { fg = c.text, bg = c.mantle },
    PmenuSel     = { fg = c.base, bg = c.teal },
    PmenuSbar    = { bg = c.surface1 },
    PmenuThumb   = { bg = c.overlay0 },
    Visual       = { bg = c.surface2 },
    WarningMsg   = { fg = c.yellow },

    -- Base Syntax (fallback for all treesitter/native highlighting)
    Comment      = { fg = c.overlay2, italic = true },
    Constant     = { fg = c.peach },
    String       = { fg = c.green },
    Character    = { fg = c.green },
    Number       = { fg = c.peach },
    Boolean      = { fg = c.peach },
    Float        = { fg = c.peach },
    Identifier   = { fg = c.text },
    Function     = { fg = c.blue },
    Statement    = { fg = c.mauve },
    Conditional  = { fg = c.mauve },
    Repeat       = { fg = c.mauve },
    Label        = { fg = c.peach },
    Operator     = { fg = c.teal },
    Keyword      = { fg = c.mauve, italic = true },
    Exception    = { fg = c.red },
    PreProc      = { fg = c.pink },
    Include      = { fg = c.mauve },
    Define       = { fg = c.mauve },
    Macro        = { fg = c.pink },
    Type         = { fg = c.sky },
    StorageClass = { fg = c.yellow },
    Structure    = { fg = c.yellow },
    Typedef      = { fg = c.yellow },
    Special      = { fg = c.blue },
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
    DiagnosticError = { fg = c.red },
    DiagnosticWarn  = { fg = c.yellow },
    DiagnosticInfo  = { fg = c.sky },
    DiagnosticHint  = { fg = c.teal },
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
