-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

-- python
M = lush(function()
  return {
    pythonBuiltin {base.CouleurOrange},
    pythonBuiltinObj {base.CouleurOrange},
    pythonBuiltinFunc {base.CouleurOrange},
    pythonFunction {base.CouleurAqua},
    pythonDecorator {base.CouleurRed},
    pythonInclude {base.CouleurBlue},
    pythonImport {base.CouleurBlue},
    pythonRun {base.CouleurBlue},
    pythonCoding {base.CouleurBlue},
    pythonOperator {base.CouleurRed},
    pythonException {base.CouleurRed},
    pythonExceptions {base.CouleurPurple},
    pythonBoolean {base.CouleurPurple},
    pythonDot {base.CouleurFg3},
    pythonConditional {base.CouleurRed},
    pythonRepeat {base.CouleurRed},
    pythonDottedName {base.CouleurGreenBold},
  }
end)

return M
