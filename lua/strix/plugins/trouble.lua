local M = {}

function M.setup(c, config)
  return {
    TroubleCount       = { fg = c.teal, bg = c.surface0 },
    TroubleNormal      = { fg = c.subtext1, bg = c.base },
    TroubleNormalNC    = { fg = c.subtext1, bg = c.base },
    TroubleText        = { fg = c.text },
    TroubleSignWarning = { fg = c.yellow },
    TroubleSignError   = { fg = c.red },
    TroubleSignInformation = { fg = c.sky },
    TroubleSignHint    = { fg = c.teal },
  }
end

return M
