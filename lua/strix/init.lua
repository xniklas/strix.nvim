local colors = require("strix.colors")
local config = require("strix.config")

local M = {}

local function set_highlight(group, opts)
  -- Skip empty highlight groups like @none
  if not opts or (not opts.fg and not opts.bg and not opts.sp and not opts.style) then
    return
  end

  local cmd = "highlight " .. group
  if opts.fg then
    cmd = cmd .. " guifg=" .. opts.fg
  end
  if opts.bg then
    cmd = cmd .. " guibg=" .. opts.bg
  end
  if opts.sp then
    cmd = cmd .. " guisp=" .. opts.sp
  end
  if opts.style then
    cmd = cmd .. " gui=" .. opts.style
  end
  vim.cmd(cmd)
end

local function set_highlights(highlights)
  for group, opts in pairs(highlights) do
    set_highlight(group, opts)
  end
end

local function tbl_deep_extend(behavior, ...)
  if vim and vim.tbl_deep_extend then
    return vim.tbl_deep_extend(behavior, ...)
  end
  local ret = {}
  for _, tbl in ipairs({ ... }) do
    for k, v in pairs(tbl) do
      if type(v) == "table" and type(ret[k]) == "table" then
        ret[k] = tbl_deep_extend(behavior, ret[k], v)
      else
        ret[k] = v
      end
    end
  end
  return ret
end

function M.load(opts)
  opts = tbl_deep_extend("force", config.defaults, opts or {})

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = "strix"

  local palette = colors.get_colors(opts.style)
  local highlights = require("strix.highlights").get_highlights(palette, opts)

  set_highlights(highlights)

  if opts.terminal_colors then
    colors.set_terminal_colors(palette)
  end
end

return M
