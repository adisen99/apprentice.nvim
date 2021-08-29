-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    purescriptModuleKeyword {base.CouleurAqua},
    purescriptModuleName {base.CouleurFg1},
    purescriptWhere {base.CouleurAqua},
    purescriptDelimiter {base.CouleurFg4},
    purescriptType {base.CouleurFg1},
    purescriptImportKeyword {base.CouleurAqua},
    purescriptHidingKeyword {base.CouleurAqua},
    purescriptAsKeyword {base.CouleurAqua},
    purescriptStructure {base.CouleurAqua},
    purescriptOperator {base.CouleurBlue},
    purescriptTypeVar {base.CouleurFg1},
    purescriptConstructor {base.CouleurFg1},
    purescriptFunction {base.CouleurFg1},
    purescriptConditional {base.CouleurOrange},
    purescriptBacktick {base.CouleurOrange},
  }
end)

return M
