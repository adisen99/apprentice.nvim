-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    coffeeExtendedOp {base.ApprenticeFg3},
    coffeeSpecialOp {base.ApprenticeFg3},
    coffeeCurly {base.ApprenticeOrange},
    coffeeParen {base.ApprenticeFg3},
    coffeeBracket {base.ApprenticeOrange},
  }
end)

return M
