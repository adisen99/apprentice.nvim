-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    cOperator {base.CouleurPurple},
    cppOperator {base.CouleurPurple},
    cStructure {base.CouleurOrange},

  }
end)

return M
