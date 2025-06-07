local M = {}

function M.get_highlights(colors, config)
  local blend = require("strix.colors").blend
  local none = config.transparent and "NONE" or nil
  local bg_float = colors.bg_dark

  local highlights = {
    -- Snacks Notifier
    SnacksNotifierDebug = { fg = colors.fg, bg = none or colors.bg },
    SnacksNotifierBorderDebug = { fg = blend(colors.comment, colors.bg, 0.4), bg = none or colors.bg },
    SnacksNotifierIconDebug = { fg = colors.comment },
    SnacksNotifierTitleDebug = { fg = colors.comment },

    SnacksNotifierError = { fg = colors.fg, bg = none or colors.bg },
    SnacksNotifierBorderError = { fg = blend(colors.red, colors.bg, 0.4), bg = none or colors.bg },
    SnacksNotifierIconError = { fg = colors.red },
    SnacksNotifierTitleError = { fg = colors.red },

    SnacksNotifierInfo = { fg = colors.fg, bg = none or colors.bg },
    SnacksNotifierBorderInfo = { fg = blend(colors.blue, colors.bg, 0.4), bg = none or colors.bg },
    SnacksNotifierIconInfo = { fg = colors.blue },
    SnacksNotifierTitleInfo = { fg = colors.blue },

    SnacksNotifierTrace = { fg = colors.fg, bg = none or colors.bg },
    SnacksNotifierBorderTrace = { fg = blend(colors.purple, colors.bg, 0.4), bg = none or colors.bg },
    SnacksNotifierIconTrace = { fg = colors.purple },
    SnacksNotifierTitleTrace = { fg = colors.purple },

    SnacksNotifierWarn = { fg = colors.fg, bg = none or colors.bg },
    SnacksNotifierBorderWarn = { fg = blend(colors.yellow, colors.bg, 0.4), bg = none or colors.bg },
    SnacksNotifierIconWarn = { fg = colors.yellow },
    SnacksNotifierTitleWarn = { fg = colors.yellow },

    -- Snacks Dashboard
    SnacksDashboardDesc = { fg = colors.cyan },
    SnacksDashboardFooter = { fg = colors.blue1 },
    SnacksDashboardHeader = { fg = colors.blue },
    SnacksDashboardIcon = { fg = colors.blue1 },
    SnacksDashboardKey = { fg = colors.orange },
    SnacksDashboardSpecial = { fg = colors.purple },
    SnacksDashboardDir = { fg = colors.dark3 },

    -- Snacks Profiler
    SnacksProfilerIconInfo = { bg = blend(colors.blue1, colors.bg, 0.3), fg = colors.blue1 },
    SnacksProfilerBadgeInfo = { bg = blend(colors.blue1, colors.bg, 0.1), fg = colors.blue1 },
    SnacksScratchKey = { fg = colors.blue1, bg = blend(colors.blue1, colors.bg, 0.3) },
    SnacksScratchDesc = { fg = colors.blue1, bg = blend(colors.blue1, colors.bg, 0.1) },
    SnacksProfilerIconTrace = { bg = blend(colors.blue, colors.bg, 0.3), fg = colors.dark3 },
    SnacksProfilerBadgeTrace = { bg = blend(colors.blue, colors.bg, 0.1), fg = colors.dark3 },

    -- Snacks Indent
    SnacksIndent = { fg = colors.dark5, nocombine = true },
    SnacksIndentScope = { fg = colors.blue1, nocombine = true },

    -- Snacks Zen
    SnacksZenIcon = { fg = colors.purple },

    -- Snacks Input
    SnacksInputIcon = { fg = colors.blue1 },
    SnacksInputBorder = { fg = colors.yellow },
    SnacksInputTitle = { fg = colors.yellow },

    -- Snacks Picker
    SnacksPickerInputBorder = { fg = colors.orange, bg = bg_float },
    SnacksPickerInputTitle = { fg = colors.orange, bg = bg_float },
    SnacksPickerBoxTitle = { fg = colors.orange, bg = bg_float },
    SnacksPickerSelected = { fg = colors.magenta2 },
    SnacksPickerToggle = { fg = colors.blue1, bg = blend(colors.blue1, colors.bg, 0.1) },
    SnacksPickerPickWinCurrent = { fg = colors.fg, bg = colors.magenta2, style = "bold" },
    SnacksPickerPickWin = { fg = colors.fg, bg = colors.bg_highlight, style = "bold" },
  }

  -- Rainbow indent colors (using color variations)
  local rainbow_colors = {
    colors.red,
    colors.orange,
    colors.yellow,
    colors.green,
    colors.cyan,
    colors.blue,
    colors.purple,
    colors.magenta,
  }
  for i, color in ipairs(rainbow_colors) do
    highlights["SnacksIndent" .. i] = { fg = color, nocombine = true }
  end

  return highlights
end

return M

