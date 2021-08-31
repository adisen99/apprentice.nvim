-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    vimNotation {base.ApprenticeOrange},
    vimBracket {base.ApprenticeOrange},
    vimMapModKey {base.ApprenticeOrange},
    vimFuncSID {base.ApprenticeFg3},
    vimSetSep {base.ApprenticeFg3},
    vimSep {base.ApprenticeFg3},
    vimContinue {base.ApprenticeFg3},
  }
end)

return M
