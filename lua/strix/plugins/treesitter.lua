local M = {}

function M.setup(c, config)
  return {
    -- Identifiers
    ["@variable"]            = { fg = c.text },
    ["@variable.builtin"]    = { fg = c.cyan, italic = true },
    ["@variable.parameter"]  = { fg = c.flamingo },
    ["@variable.member"]     = { fg = c.sky },
    
    -- Constants
    ["@constant"]            = { fg = c.peach },
    ["@constant.builtin"]    = { fg = c.peach, bold = true },
    ["@constant.macro"]      = { fg = c.pink },
    
    -- Modules / Invocations
    ["@module"]              = { fg = c.mauve },
    ["@module.builtin"]      = { fg = c.mauve, italic = true },
    ["@label"]               = { fg = c.blue },

    -- Literals
    ["@string"]              = { fg = c.green },
    ["@string.documentation"]= { fg = c.green, italic = true },
    ["@string.regexp"]       = { fg = c.sky },
    ["@string.escape"]       = { fg = c.teal },
    ["@character"]           = { fg = c.green },
    ["@character.special"]   = { fg = c.teal },
    ["@boolean"]             = { fg = c.peach, bold = true },
    ["@number"]              = { fg = c.peach },
    ["@number.float"]        = { fg = c.peach },

    -- Types
    ["@type"]                = { fg = c.sky },
    ["@type.builtin"]        = { fg = c.sky, italic = true },
    ["@type.definition"]     = { fg = c.sky },
    ["@attribute"]           = { fg = c.yellow },
    ["@property"]            = { fg = c.sky },

    -- Functions
    ["@function"]            = { fg = c.blue },
    ["@function.builtin"]    = { fg = c.blue },
    ["@function.macro"]      = { fg = c.pink },
    ["@function.method"]     = { fg = c.blue },
    ["@constructor"]         = { fg = c.blue },

    -- Keywords
    ["@keyword"]             = { fg = c.mauve, italic = true },
    ["@keyword.coroutine"]   = { fg = c.mauve, italic = true },
    ["@keyword.function"]    = { fg = c.mauve, italic = true },
    ["@keyword.operator"]    = { fg = c.teal },
    ["@keyword.import"]      = { fg = c.mauve },
    ["@keyword.type"]        = { fg = c.mauve },
    ["@keyword.modifier"]    = { fg = c.mauve, italic = true },
    ["@keyword.repeat"]      = { fg = c.mauve, italic = true },
    ["@keyword.return"]      = { fg = c.mauve, italic = true },
    ["@keyword.debug"]       = { fg = c.red, italic = true },
    ["@keyword.exception"]   = { fg = c.red, italic = true },

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = c.subtext0 },
    ["@punctuation.bracket"]   = { fg = c.subtext0 },
    ["@punctuation.special"]   = { fg = c.teal },

    -- Comments & Notes
    ["@comment"]             = { fg = c.overlay2, italic = true },
    ["@comment.documentation"] = { fg = c.overlay2, italic = true },
    ["@comment.error"]       = { fg = c.base, bg = c.red, bold = true },
    ["@comment.warning"]     = { fg = c.base, bg = c.yellow, bold = true },
    ["@comment.todo"]        = { fg = c.base, bg = c.yellow, bold = true },
    ["@comment.note"]        = { fg = c.base, bg = c.sky, bold = true },

    -- Markup (Markdown, HTML)
    ["@markup.strong"]       = { bold = true },
    ["@markup.italic"]       = { italic = true },
    ["@markup.strikethrough"]= { strikethrough = true },
    ["@markup.underline"]    = { underline = true },
    ["@markup.heading"]      = { fg = c.blue, bold = true },
    ["@markup.math"]         = { fg = c.sky },
    ["@markup.environment"]  = { fg = c.pink },
    ["@markup.link"]         = { fg = c.sapphire },
    ["@markup.link.label"]   = { fg = c.blue },
    ["@markup.link.url"]     = { fg = c.teal, underline = true },
    ["@markup.raw"]          = { fg = c.green },
    ["@markup.list"]         = { fg = c.blue },

    -- Tags (HTML / JSX)
    ["@tag"]                 = { fg = c.pink },
    ["@tag.attribute"]       = { fg = c.yellow },
    ["@tag.delimiter"]       = { fg = c.subtext0 },
  }
end

return M
