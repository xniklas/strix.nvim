local M = {}

local function hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return {
    r = tonumber(hex:sub(1, 2), 16),
    g = tonumber(hex:sub(3, 4), 16),
    b = tonumber(hex:sub(5, 6), 16),
  }
end

local function rgb_to_hex(rgb)
  return string.format("#%02x%02x%02x", math.floor(rgb.r), math.floor(rgb.g), math.floor(rgb.b))
end

function M.blend(color1, color2, factor)
  local rgb1 = hex_to_rgb(color1)
  local rgb2 = hex_to_rgb(color2)
  
  local blended = {
    r = rgb1.r * (1 - factor) + rgb2.r * factor,
    g = rgb1.g * (1 - factor) + rgb2.g * factor,
    b = rgb1.b * (1 - factor) + rgb2.b * factor,
  }
  
  return rgb_to_hex(blended)
end

function M.lighten(color, factor)
  return M.blend(color, "#FFFFFF", factor)
end

function M.darken(color, factor)
  return M.blend(color, "#000000", factor)
end

function M.alpha_blend(color, bg, alpha)
  return M.blend(bg, color, alpha)
end

local function tbl_deep_extend(behavior, ...)
  if vim and vim.tbl_deep_extend then
    return vim.tbl_deep_extend(behavior, ...)
  end
  local ret = {}
  for _, tbl in ipairs({...}) do
    for k, v in pairs(tbl) do
      ret[k] = v
    end
  end
  return ret
end

local function expand_palette(base_colors)
  local expanded = tbl_deep_extend("force", {}, base_colors)
  
  expanded.bg_darker = M.darken(base_colors.bg, 0.3)
  expanded.bg_lighter = M.lighten(base_colors.bg, 0.1)
  expanded.bg_subtle = M.blend(base_colors.bg, base_colors.fg, 0.05)
  
  expanded.fg_subtle = M.blend(base_colors.fg, base_colors.bg, 0.2)
  expanded.fg_muted = M.blend(base_colors.fg, base_colors.bg, 0.4)
  
  expanded.blue_dim = M.darken(base_colors.blue, 0.2)
  expanded.blue_bright = M.lighten(base_colors.blue, 0.2)
  
  expanded.green_dim = M.darken(base_colors.green, 0.2)
  expanded.green_bright = M.lighten(base_colors.green, 0.2)
  
  expanded.red_dim = M.darken(base_colors.red, 0.2)
  expanded.red_bright = M.lighten(base_colors.red, 0.2)
  
  expanded.yellow_dim = M.darken(base_colors.yellow, 0.2)
  expanded.yellow_bright = M.lighten(base_colors.yellow, 0.2)
  
  expanded.purple_dim = M.darken(base_colors.purple, 0.2)
  expanded.purple_bright = M.lighten(base_colors.purple, 0.2)
  
  expanded.cyan_dim = M.darken(base_colors.cyan, 0.2)
  expanded.cyan_bright = M.lighten(base_colors.cyan, 0.2)
  
  expanded.orange_dim = M.darken(base_colors.orange, 0.2)
  expanded.orange_bright = M.lighten(base_colors.orange, 0.2)
  
  return expanded
end

function M.get_colors(style)
  local base_colors
  
  if style == "day" then
    base_colors = require("strix.colors.day")
  else
    base_colors = require("strix.colors.night")
  end
  
  return expand_palette(base_colors)
end

function M.set_terminal_colors(colors)
  vim.g.terminal_color_0 = colors.terminal_black or colors.bg_dark
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_7 = colors.fg
  vim.g.terminal_color_8 = colors.fg_gutter
  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_13 = colors.magenta
  vim.g.terminal_color_14 = colors.cyan
  vim.g.terminal_color_15 = colors.fg
end

return M