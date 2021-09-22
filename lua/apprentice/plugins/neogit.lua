-- neogit highlights
local lush = require("lush")
local base = require('apprentice.base')
local colors = require('apprentice.colors')

local neogitaddfg = colors.bright_green
local neogitdelfg = colors.bright_red

local neogitbg1 = colors.dark2
local neogitbg2 = colors.dark3
local neogitbg3 = colors.dark4
local neogitfg1 = colors.light3
local neogitfg2 = colors.light2

--[[ elseif vim.o.background == 'light' then
  Neogitbg1 = colors.light2
  Neogitbg2 = colors.light3
  Neogitbg3 = colors.light4
  Neogitfg1 = colors.dark2
  Neogitfg2 = colors.dark3
end ]]

local M = {}

M = lush(function()
	return {
    -- Neogit
  NeogitNotificationInfo {base.CodeschoolGreen},
  NeogitNotificationWarning {base.CodeschoolYellow},
  NeogitNotificationError {fg = colors.faded_red},
  NeogitDiffAddHighlight {bg = neogitbg2, fg = neogitaddfg},
  NeogitDiffDeleteHighlight {bg = neogitbg2, fg = neogitdelfg},
  NeogitDiffContextHighlight {bg = neogitbg1, fg = neogitfg1},
  NeogitHunkHeader {bg = neogitbg2, fg = neogitfg2},
  NeogitHunkHeaderHighlight {bg = neogitbg3, fg = neogitfg2},
	}
end)

return M
