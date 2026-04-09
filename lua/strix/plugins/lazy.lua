local M = {}

function M.setup(c, config)
  local bg = config.transparent_background and c.none or c.surface0
  
  return {
    LazyNormal        = { fg = c.text, bg = bg },
    LazyButton        = { bg = c.surface1 },
    LazyButtonActive  = { bg = c.surface2, bold = true },
    LazySpecial       = { fg = c.blue },
    LazyH1            = { fg = c.teal, bg = bg, bold = true },
    LazyReasonPlugin  = { fg = c.pink },
    LazyReasonCmd     = { fg = c.green },
    LazyReasonRuntime = { fg = c.sky },
    LazyReasonSource  = { fg = c.sky },
  }
end

return M
