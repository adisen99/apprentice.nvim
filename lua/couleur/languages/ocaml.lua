-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    ocamlOperator {base.CouleurFg1},
    ocamlKeyChar {base.CouleurOrange},
    ocamlArrow {base.CouleurOrange},
    ocamlInfixOpKeyword {base.CouleurRed},
    ocamlConstructor {base.CouleurOrange},
  }
end)

return M
