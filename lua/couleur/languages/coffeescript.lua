-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    coffeeExtendedOp {base.CouleurFg3},
    coffeeSpecialOp {base.CouleurFg3},
    coffeeCurly {base.CouleurOrange},
    coffeeParen {base.CouleurFg3},
    coffeeBracket {base.CouleurOrange},
  }
end)

return M
