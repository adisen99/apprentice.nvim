-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    moonSpecialOp {base.CouleurFg3},
    moonExtendedOp {base.CouleurFg3},
    moonFunction {base.CouleurFg3},
    moonObject {base.CouleurYellow},
  }
end)

return M
