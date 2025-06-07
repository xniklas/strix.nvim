local M = {}

function M.get_highlights(colors, config)
  local highlights = {}

  highlights["@annotation"] = { fg = colors.yellow }
  highlights["@attribute"] = { fg = colors.cyan }
  highlights["@boolean"] = { fg = colors.orange }
  highlights["@character"] = { fg = colors.green }
  highlights["@character.printf"] = { fg = colors.cyan }
  highlights["@character.special"] = { fg = colors.purple }

  highlights["@comment"] = { fg = colors.comment, style = config.styles.comments.italic and "italic" or "NONE" }
  highlights["@comment.error"] = { fg = colors.red, style = "bold" }
  highlights["@comment.hint"] = { fg = colors.cyan }
  highlights["@comment.info"] = { fg = colors.blue }
  highlights["@comment.note"] = { fg = colors.purple }
  highlights["@comment.todo"] = { fg = colors.bg, bg = colors.yellow, style = "bold" }
  highlights["@comment.warning"] = { fg = colors.yellow, style = "bold" }

  highlights["@constant"] = { fg = colors.orange }
  highlights["@constant.builtin"] = { fg = colors.orange, style = "bold" }
  highlights["@constant.macro"] = { fg = colors.cyan }
  highlights["@constructor"] = { fg = colors.blue }
  highlights["@constructor.tsx"] = { fg = colors.blue }

  highlights["@diff.delta"] = { fg = colors.git.change }
  highlights["@diff.minus"] = { fg = colors.git.delete }
  highlights["@diff.plus"] = { fg = colors.git.add }

  highlights["@function"] = { fg = colors.blue, style = config.styles.functions.style or "NONE" }
  highlights["@function.builtin"] = { fg = colors.blue1, style = "bold" }
  highlights["@function.call"] = { fg = colors.blue }
  highlights["@function.macro"] = { fg = colors.cyan }
  highlights["@function.method"] = { fg = colors.green }
  highlights["@function.method.call"] = { fg = colors.green }

  local italic_keywords = config.styles.keywords.italic and "italic" or "NONE"
  highlights["@keyword"] = { fg = colors.purple }
  highlights["@keyword.conditional"] = { fg = colors.magenta, style = italic_keywords }
  highlights["@keyword.coroutine"] = { fg = colors.purple, style = italic_keywords }
  highlights["@keyword.debug"] = { fg = colors.red, style = italic_keywords }
  highlights["@keyword.directive"] = { fg = colors.cyan, style = italic_keywords }
  highlights["@keyword.directive.define"] = { fg = colors.cyan, style = italic_keywords }
  highlights["@keyword.exception"] = { fg = colors.magenta2, style = italic_keywords }
  highlights["@keyword.function"] = { fg = colors.purple }
  highlights["@keyword.import"] = { fg = colors.cyan, style = italic_keywords }
  highlights["@keyword.operator"] = { fg = colors.purple, style = italic_keywords }
  highlights["@keyword.repeat"] = { fg = colors.magenta }
  highlights["@keyword.return"] = { fg = colors.magenta2 }
  highlights["@keyword.storage"] = { fg = colors.yellow, style = italic_keywords }

  highlights["@label"] = { fg = colors.magenta }

  highlights["@markup"] = { fg = colors.fg }
  highlights["@markup.emphasis"] = { fg = colors.fg, style = "italic" }
  highlights["@markup.environment"] = { fg = colors.purple }
  highlights["@markup.environment.name"] = { fg = colors.blue }
  highlights["@markup.heading"] = { fg = colors.blue, style = "bold" }
  highlights["@markup.italic"] = { fg = colors.fg, style = "italic" }
  highlights["@markup.link"] = { fg = colors.cyan, style = "underline" }
  highlights["@markup.link.label"] = { fg = colors.blue }
  highlights["@markup.link.label.symbol"] = { fg = colors.purple }
  highlights["@markup.link.url"] = { fg = colors.cyan, style = "underline" }
  highlights["@markup.list"] = { fg = colors.purple }
  highlights["@markup.list.checked"] = { fg = colors.green }
  highlights["@markup.list.markdown"] = { fg = colors.purple }
  highlights["@markup.list.unchecked"] = { fg = colors.red }
  highlights["@markup.math"] = { fg = colors.blue }
  highlights["@markup.raw"] = { fg = colors.green }
  highlights["@markup.raw.markdown_inline"] = { fg = colors.green }
  highlights["@markup.strikethrough"] = { fg = colors.fg_gutter, style = "strikethrough" }
  highlights["@markup.strong"] = { fg = colors.fg, style = "bold" }
  highlights["@markup.underline"] = { fg = colors.fg, style = "underline" }

  highlights["@module"] = { fg = colors.yellow }
  highlights["@module.builtin"] = { fg = colors.yellow, style = "bold" }
  highlights["@namespace.builtin"] = { fg = colors.yellow, style = "bold" }

  highlights["@none"] = {}

  highlights["@number"] = { fg = colors.orange }
  highlights["@number.float"] = { fg = colors.orange }

  highlights["@operator"] = { fg = colors.purple }

  highlights["@property"] = { fg = colors.fg }

  highlights["@punctuation.bracket"] = { fg = colors.yellow }
  highlights["@punctuation.delimiter"] = { fg = colors.red1 }
  highlights["@punctuation.special"] = { fg = colors.purple }
  highlights["@punctuation.special.markdown"] = { fg = colors.purple }

  highlights["@string"] = { fg = colors.green }
  highlights["@string.documentation"] = { fg = colors.green, style = "italic" }
  highlights["@string.escape"] = { fg = colors.purple }
  highlights["@string.regexp"] = { fg = colors.cyan }

  highlights["@tag"] = { fg = colors.red }
  highlights["@tag.attribute"] = { fg = colors.orange }
  highlights["@tag.delimiter"] = { fg = colors.fg_dark }
  highlights["@tag.delimiter.tsx"] = { fg = colors.fg_dark }
  highlights["@tag.tsx"] = { fg = colors.red }
  highlights["@tag.builtin.tsx"] = { fg = colors.red, style = "bold" }
  highlights["@tag.javascript"] = { fg = colors.red }

  highlights["@type"] = { fg = colors.yellow }
  highlights["@type.builtin"] = { fg = colors.magenta2, style = "bold" }
  highlights["@type.definition"] = { fg = colors.yellow }
  highlights["@type.qualifier"] = { fg = colors.purple }

  highlights["@variable"] = { fg = colors.fg_dark, style = config.styles.variables.style or "NONE" }
  highlights["@variable.builtin"] = { fg = colors.red, style = "bold" }
  highlights["@variable.member"] = { fg = colors.fg }
  highlights["@variable.parameter"] = { fg = colors.red }
  highlights["@variable.parameter.builtin"] = { fg = colors.red, style = "bold" }

  return highlights
end

return M
