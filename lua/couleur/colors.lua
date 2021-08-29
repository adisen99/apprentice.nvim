local hsl = require("lush.hsl")

local M = {}

M.set = function(color_table)
  -- codeschool palette
  return {
    dark0_hard = hsl(color_table.dark0_hard),
    dark0 = hsl(color_table.dark0),
    dark0_soft = hsl(color_table.dark0_soft),
    dark1 = hsl(color_table.dark1),
    dark2 = hsl(color_table.dark2),
    dark3 = hsl(color_table.dark3),
    dark4 = hsl(color_table.dark4),
    light0_hard = hsl(color_table.light0_hard),
    light0 = hsl(color_table.light0),
    light0_soft = hsl(color_table.light0_soft),
    light1 = hsl(color_table.light1),
    light2 = hsl(color_table.light2),
    light3 = hsl(color_table.light3),
    light4 = hsl(color_table.light4),
    bright_red = hsl(color_table.bright_red),
    bright_green = hsl(color_table.bright_green),
    bright_yellow = hsl(color_table.bright_yellow),
    bright_blue = hsl(color_table.bright_blue),
    bright_purple = hsl(color_table.bright_purple),
    bright_aqua = hsl(color_table.bright_aqua),
    bright_orange = hsl(color_table.bright_orange),
    neutral_red = hsl(color_table.neutral_red),
    neutral_green = hsl(color_table.neutral_green),
    neutral_yellow = hsl(color_table.neutral_yellow),
    neutral_blue = hsl(color_table.neutral_blue),
    neutral_purple = hsl(color_table.neutral_purple),
    neutral_aqua = hsl(color_table.neutral_aqua),
    neutral_orange = hsl(color_table.neutral_orange),
    error = hsl(color_table.error),
  	faded_red = hsl(color_table.faded_red),
    faded_green = hsl(color_table.faded_green),
    faded_yellow = hsl(color_table.faded_yellow),
    faded_blue = hsl(color_table.faded_blue),
    faded_purple = hsl(color_table.faded_purple),
    faded_aqua = hsl(color_table.faded_aqua),
    faded_orange = hsl(color_table.faded_orange),
    gray = hsl(color_table.gray),
  }
end

return M
