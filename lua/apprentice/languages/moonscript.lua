-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    moonSpecialOp {base.ApprenticeFg3},
    moonExtendedOp {base.ApprenticeFg3},
    moonFunction {base.ApprenticeFg3},
    moonObject {base.ApprenticeYellow},
  }
end)

return M
