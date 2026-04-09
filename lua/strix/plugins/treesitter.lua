local M = {}

function M.setup(c, config)
  return {
    -- Identifiers
    ["@variable"]            = { fg = c.text },
    ["@variable.builtin"]    = { fg = c.teal, italic = true },
    ["@variable.parameter"]  = { fg = c.flamingo },
    ["@variable.member"]     = { fg = c.blue },
    
    -- Constants
    ["@constant"]            = { fg = c.peach },
    ["@constant.builtin"]    = { fg = c.peach, bold = true },
    ["@constant.macro"]      = { fg = c.flamingo },
    
    -- Modules / Invocations
    ["@module"]              = { fg = c.text },
    ["@module.builtin"]      = { fg = c.text, italic = true },
    ["@label"]               = { fg = c.blue },

    -- Literals
    ["@string"]              = { fg = c.sky },
    ["@string.documentation"]= { fg = c.sky, italic = true },
    ["@string.regexp"]       = { fg = c.pink },
    ["@string.escape"]       = { fg = c.flamingo },
    ["@character"]           = { fg = c.sky },
    ["@character.special"]   = { fg = c.flamingo },
    ["@boolean"]             = { fg = c.lavender, bold = true },
    ["@number"]              = { fg = c.lavender },
    ["@number.float"]        = { fg = c.lavender },

    -- Types
    ["@type"]                = { fg = c.mauve },
    ["@type.builtin"]        = { fg = c.mauve, italic = true },
    ["@type.definition"]     = { fg = c.mauve },
    ["@attribute"]           = { fg = c.peach },
    ["@property"]            = { fg = c.blue },

    -- Functions
    ["@function"]            = { fg = c.teal },
    ["@function.builtin"]    = { fg = c.teal },
    ["@function.macro"]      = { fg = c.flamingo },
    ["@function.method"]     = { fg = c.teal },
    ["@constructor"]         = { fg = c.teal },

    -- Keywords
    ["@keyword"]             = { fg = c.pink, italic = true },
    ["@keyword.coroutine"]   = { fg = c.pink, italic = true },
    ["@keyword.function"]    = { fg = c.pink, italic = true },
    ["@keyword.operator"]    = { fg = c.sky },
    ["@keyword.import"]      = { fg = c.pink },
    ["@keyword.type"]        = { fg = c.pink },
    ["@keyword.modifier"]    = { fg = c.pink, italic = true },
    ["@keyword.repeat"]      = { fg = c.pink, italic = true },
    ["@keyword.return"]      = { fg = c.pink, italic = true },
    ["@keyword.debug"]       = { fg = c.red, italic = true },
    ["@keyword.exception"]   = { fg = c.red, italic = true },

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = c.subtext0 },
    ["@punctuation.bracket"]   = { fg = c.subtext0 },
    ["@punctuation.special"]   = { fg = c.sky },

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
