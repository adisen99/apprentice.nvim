-- neogit highlights
local lush = require("lush")
local base = require('apprentice.base')
local colors = require('apprentice.colors')

local neogitaddfg = colors.bright_green
local neogitdelfg = colors.bright_red

if vim.o.background == 'dark' then
  Neogitbg1 = colors.dark2
  Neogitbg2 = colors.dark3
  Neogitbg3 = colors.dark4
  Neogitfg1 = colors.light3
  Neogitfg2 = colors.light2
elseif vim.o.background == 'light' then
  Neogitbg1 = colors.light2
  Neogitbg2 = colors.light3
  Neogitbg3 = colors.light4
  Neogitfg1 = colors.dark2
  Neogitfg2 = colors.dark3
end

local M = {}

M = lush(function()
	return {
    -- Neogit
  NeogitNotificationInfo {base.CodeschoolGreen},
  NeogitNotificationWarning {base.CodeschoolYellow},
  NeogitNotificationError {fg = colors.faded_red},
  NeogitDiffAddHighlight {bg = Neogitbg2, fg = neogitaddfg},
  NeogitDiffDeleteHighlight {bg = Neogitbg2, fg = neogitdelfg},
  NeogitDiffContextHighlight {bg = Neogitbg1, fg = Neogitfg1},
  NeogitHunkHeader {bg = Neogitbg2, fg = Neogitfg2},
  NeogitHunkHeaderHighlight {bg = Neogitbg3, fg = Neogitfg2},
	}
end)

return M
