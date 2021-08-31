-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    purescriptModuleKeyword {base.ApprenticeAqua},
    purescriptModuleName {base.ApprenticeFg1},
    purescriptWhere {base.ApprenticeAqua},
    purescriptDelimiter {base.ApprenticeFg4},
    purescriptType {base.ApprenticeFg1},
    purescriptImportKeyword {base.ApprenticeAqua},
    purescriptHidingKeyword {base.ApprenticeAqua},
    purescriptAsKeyword {base.ApprenticeAqua},
    purescriptStructure {base.ApprenticeAqua},
    purescriptOperator {base.ApprenticeBlue},
    purescriptTypeVar {base.ApprenticeFg1},
    purescriptConstructor {base.ApprenticeFg1},
    purescriptFunction {base.ApprenticeFg1},
    purescriptConditional {base.ApprenticeOrange},
    purescriptBacktick {base.ApprenticeOrange},
  }
end)

return M
