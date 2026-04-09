local M = {}

function M.setup(c, config)
  return {
    IblIndent           = { fg = c.surface0 },
    IblScope            = { fg = c.overlay0 },
    IblWhitespace       = { fg = c.surface0 },
  }
end

return M
