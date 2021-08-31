-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    jsxTagName {base.ApprenticeAqua},
    jsxComponentName {base.ApprenticeGreen},
    jsxCloseString {base.ApprenticeFg4},
    jsxAttrib {base.ApprenticeYellow},
    jsxEqual {base.ApprenticeAqua},
  }
end)

return M
