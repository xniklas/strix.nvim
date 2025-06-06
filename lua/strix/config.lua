local M = {}

M.version = "0.1.0"

M.defaults = {
  style = "night",
  light_style = "day",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    fucntions = {},
    variables = {},
  },
}

return M
