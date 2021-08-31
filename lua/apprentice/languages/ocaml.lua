-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    ocamlOperator {base.ApprenticeFg1},
    ocamlKeyChar {base.ApprenticeOrange},
    ocamlArrow {base.ApprenticeOrange},
    ocamlInfixOpKeyword {base.ApprenticeRed},
    ocamlConstructor {base.ApprenticeOrange},
  }
end)

return M
