local M = {}

function M.setup(c, config)
  -- Uses the subtle pre-mixed diagnostic backgrounds for line highlights
  local green_bg = "#152E22"

  return {
    GitSignsAdd          = { fg = c.green },
    GitSignsChange       = { fg = c.yellow },
    GitSignsDelete       = { fg = c.red },
    GitSignsAddNr        = { fg = c.green },
    GitSignsChangeNr     = { fg = c.yellow },
    GitSignsDeleteNr     = { fg = c.red },
    GitSignsAddLn        = { bg = green_bg },
    GitSignsChangeLn     = { bg = c.yellow_bg },
    GitSignsDeleteLn     = { bg = c.red_bg },
    GitSignsCurrentLineBlame = { fg = c.surface2 },
  }
end

return M
