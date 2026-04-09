local M = {}

function M.setup(c, config)
  return {
    IlluminatedWordText  = { bg = c.surface2 },
    IlluminatedWordRead  = { bg = c.surface2 },
    IlluminatedWordWrite = { bg = c.surface2 },
  }
end

return M
