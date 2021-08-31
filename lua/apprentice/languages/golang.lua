-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

-- golang
M = lush(function()
  return {
    goDirective {base.ApprenticeAqua},
    goConstants {base.ApprenticePurple},
    goDeclaration {base.ApprenticeRed},
    goDeclType {base.ApprenticeBlue},
    goBuiltins {base.ApprenticeOrange},
  }
end)

return M
