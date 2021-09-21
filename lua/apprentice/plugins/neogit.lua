-- buftabline highlights
local lush = require("lush")
local base = require('codeschool.base')

local M = {}

M = lush(function()
	return {
    -- Neogit
  NeogitNotificationInfo {base.CodeschoolGreen},
  NeogitNotificationWarning {base.CodeschoolYellow},
  NeogitNotificationError {base.CodeschoolRed},
  NeogitDiffAddHighlight {base.CodeschoolGreenSign},
  NeogitDiffDeleteHighlight {base.CodeschoolRedSign},
  NeogitDiffContextHighlight {base.CodeschoolFg3},
  NeogitHunkHeader {base.CodeschoolFg1},
  NeogitHunkHeaderHighlight {base.CodeschoolFg1},
	}
end)

return M
