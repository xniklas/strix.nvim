local M = {}

function M.get_highlights(colors, config)
  local highlights = {}
  
  -- LSP symbol kind and completion kind highlights
  local kinds = {
    Array = { fg = colors.yellow },
    Boolean = { fg = colors.orange },
    Class = { fg = colors.yellow },
    Color = { fg = colors.purple },
    Constant = { fg = colors.orange },
    Constructor = { fg = colors.blue },
    Enum = { fg = colors.yellow },
    EnumMember = { fg = colors.cyan },
    Event = { fg = colors.purple },
    Field = { fg = colors.red },
    File = { fg = colors.fg },
    Folder = { fg = colors.blue },
    Function = { fg = colors.blue },
    Interface = { fg = colors.yellow },
    Key = { fg = colors.red },
    Keyword = { fg = colors.purple },
    Method = { fg = colors.blue },
    Module = { fg = colors.cyan },
    Namespace = { fg = colors.cyan },
    Null = { fg = colors.orange },
    Number = { fg = colors.orange },
    Object = { fg = colors.orange },
    Operator = { fg = colors.purple },
    Package = { fg = colors.cyan },
    Property = { fg = colors.red },
    Reference = { fg = colors.blue },
    Snippet = { fg = colors.green },
    String = { fg = colors.green },
    Struct = { fg = colors.yellow },
    Unit = { fg = colors.yellow },
    Text = { fg = colors.fg },
    TypeParameter = { fg = colors.yellow },
    Variable = { fg = colors.red },
    Value = { fg = colors.green },
  }
  
  -- Add LspKind* highlights
  for kind, opts in pairs(kinds) do
    highlights["LspKind" .. kind] = opts
  end
  
  return highlights
end

-- Helper function for other plugins to use kinds with custom patterns
function M.kinds(hl, pattern, colors)
  hl = hl or {}
  
  local kinds = {
    Array = colors.yellow,
    Boolean = colors.orange,
    Class = colors.yellow,
    Color = colors.purple,
    Constant = colors.orange,
    Constructor = colors.blue,
    Enum = colors.yellow,
    EnumMember = colors.cyan,
    Event = colors.purple,
    Field = colors.red,
    File = colors.fg,
    Folder = colors.blue,
    Function = colors.blue,
    Interface = colors.yellow,
    Key = colors.red,
    Keyword = colors.purple,
    Method = colors.blue,
    Module = colors.cyan,
    Namespace = colors.cyan,
    Null = colors.orange,
    Number = colors.orange,
    Object = colors.orange,
    Operator = colors.purple,
    Package = colors.cyan,
    Property = colors.red,
    Reference = colors.blue,
    Snippet = colors.green,
    String = colors.green,
    Struct = colors.yellow,
    Unit = colors.yellow,
    Text = colors.fg,
    TypeParameter = colors.yellow,
    Variable = colors.red,
    Value = colors.green,
  }
  
  for kind, color in pairs(kinds) do
    local base = "LspKind" .. kind
    if pattern then
      hl[pattern:format(kind)] = { fg = color }
    else
      hl[base] = { fg = color }
    end
  end
  
  return hl
end

return M