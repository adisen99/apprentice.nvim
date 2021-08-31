-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

-- python
M = lush(function()
  return {
    pythonBuiltin {base.ApprenticeOrange},
    pythonBuiltinObj {base.ApprenticeOrange},
    pythonBuiltinFunc {base.ApprenticeOrange},
    pythonFunction {base.ApprenticeAqua},
    pythonDecorator {base.ApprenticeRed},
    pythonInclude {base.ApprenticeBlue},
    pythonImport {base.ApprenticeBlue},
    pythonRun {base.ApprenticeBlue},
    pythonCoding {base.ApprenticeBlue},
    pythonOperator {base.ApprenticeRed},
    pythonException {base.ApprenticeRed},
    pythonExceptions {base.ApprenticePurple},
    pythonBoolean {base.ApprenticePurple},
    pythonDot {base.ApprenticeFg3},
    pythonConditional {base.ApprenticeRed},
    pythonRepeat {base.ApprenticeRed},
    pythonDottedName {base.ApprenticeGreenBold},
  }
end)

return M
