local palette = require("strix.palette")
local c = palette.colors

local strix = {}

-- NORMAL MODE: The signature Strix Teal
strix.normal = {
  a = { fg = c.base, bg = c.teal, gui = "bold" },
  b = { fg = c.text, bg = c.surface0 },
  c = { fg = c.subtext0, bg = c.base }
}

-- INSERT MODE: Frosty Sky
strix.insert = {
  a = { fg = c.base, bg = c.sky, gui = "bold" },
  b = { fg = c.text, bg = c.surface0 },
  c = { fg = c.subtext0, bg = c.base }
}

-- VISUAL MODE: Intense Pink
strix.visual = {
  a = { fg = c.base, bg = c.pink, gui = "bold" },
  b = { fg = c.text, bg = c.surface0 },
  c = { fg = c.subtext0, bg = c.base }
}

-- REPLACE MODE: Heavy Red
strix.replace = {
  a = { fg = c.base, bg = c.red, gui = "bold" },
  b = { fg = c.text, bg = c.surface0 },
  c = { fg = c.subtext0, bg = c.base }
}

-- COMMAND MODE: Warn Yellow
strix.command = {
  a = { fg = c.base, bg = c.yellow, gui = "bold" },
  b = { fg = c.text, bg = c.surface0 },
  c = { fg = c.subtext0, bg = c.base }
}

-- INACTIVE: Pushed into the deepest darks (Crust/Mantle)
strix.inactive = {
  a = { fg = c.overlay0, bg = c.mantle },
  b = { fg = c.overlay0, bg = c.crust },
  c = { fg = c.overlay0, bg = c.crust }
}

return strix
