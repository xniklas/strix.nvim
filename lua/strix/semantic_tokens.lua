local M = {}

function M.get_highlights(colors, config)
  local highlights = {}

  highlights["@lsp.type.boolean"] = { fg = colors.orange }
  highlights["@lsp.type.builtinType"] = { fg = colors.yellow, style = "bold" }
  highlights["@lsp.type.comment"] =
    { fg = colors.comment, style = config.styles.comments.italic and "italic" or "NONE" }
  highlights["@lsp.type.decorator"] = { fg = colors.yellow }
  highlights["@lsp.type.deriveHelper"] = { fg = colors.cyan }
  highlights["@lsp.type.enum"] = { fg = colors.yellow }
  highlights["@lsp.type.enumMember"] = { fg = colors.orange }
  highlights["@lsp.type.escapeSequence"] = { fg = colors.purple }
  highlights["@lsp.type.formatSpecifier"] = { fg = colors.cyan }
  highlights["@lsp.type.generic"] = { fg = colors.yellow }
  highlights["@lsp.type.interface"] = { fg = colors.yellow }
  highlights["@lsp.type.keyword"] = { fg = colors.purple, style = config.styles.keywords.italic and "italic" or "NONE" }
  highlights["@lsp.type.lifetime"] = { fg = colors.purple }
  highlights["@lsp.type.namespace"] = { fg = colors.yellow }
  highlights["@lsp.type.namespace.python"] = { fg = colors.yellow }
  highlights["@lsp.type.number"] = { fg = colors.orange }
  highlights["@lsp.type.operator"] = { fg = colors.purple }
  highlights["@lsp.type.parameter"] = { fg = colors.red }
  highlights["@lsp.type.property"] = { fg = colors.fg }
  highlights["@lsp.type.selfKeyword"] = { fg = colors.red, style = "bold" }
  highlights["@lsp.type.selfTypeKeyword"] = { fg = colors.red, style = "bold" }
  highlights["@lsp.type.string"] = { fg = colors.green }
  highlights["@lsp.type.typeAlias"] = { fg = colors.yellow }
  highlights["@lsp.type.unresolvedReference"] = { fg = colors.red, style = "undercurl" }
  highlights["@lsp.type.variable"] = { fg = colors.fg, style = config.styles.variables.style or "NONE" }

  highlights["@lsp.typemod.class.defaultLibrary"] = { fg = colors.yellow, style = "bold" }
  highlights["@lsp.typemod.enum.defaultLibrary"] = { fg = colors.yellow, style = "bold" }
  highlights["@lsp.typemod.enumMember.defaultLibrary"] = { fg = colors.orange, style = "bold" }
  highlights["@lsp.typemod.function.defaultLibrary"] = { fg = colors.blue, style = "bold" }
  highlights["@lsp.typemod.keyword.async"] = { fg = colors.purple, style = "bold" }
  highlights["@lsp.typemod.keyword.injected"] = { fg = colors.purple }
  highlights["@lsp.typemod.macro.defaultLibrary"] = { fg = colors.cyan, style = "bold" }
  highlights["@lsp.typemod.method.defaultLibrary"] = { fg = colors.blue, style = "bold" }
  highlights["@lsp.typemod.operator.injected"] = { fg = colors.purple }
  highlights["@lsp.typemod.string.injected"] = { fg = colors.green }
  highlights["@lsp.typemod.struct.defaultLibrary"] = { fg = colors.yellow, style = "bold" }
  highlights["@lsp.typemod.type.defaultLibrary"] = { fg = colors.yellow, style = "bold" }
  highlights["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = colors.yellow, style = "bold" }
  highlights["@lsp.typemod.variable.callable"] = { fg = colors.blue }
  highlights["@lsp.typemod.variable.defaultLibrary"] = { fg = colors.red, style = "bold" }
  highlights["@lsp.typemod.variable.injected"] = { fg = colors.fg }
  highlights["@lsp.typemod.variable.static"] = { fg = colors.orange, style = "bold" }

  return highlights
end

return M

