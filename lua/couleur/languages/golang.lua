-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

-- golang
M = lush(function()
  return {
    goDirective {base.CouleurAqua},
    goConstants {base.CouleurPurple},
    goDeclaration {base.CouleurRed},
    goDeclType {base.CouleurBlue},
    goBuiltins {base.CouleurOrange},
  }
end)

return M
