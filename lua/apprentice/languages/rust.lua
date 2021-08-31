-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    rustSigil {base.ApprenticeOrange},
    rustEscape {base.ApprenticeAqua},
    rustStringContinuation {base.ApprenticeAqua},
    rustEnum {base.ApprenticeAqua},
    rustStructure {base.ApprenticeAqua},
    rustModPathSep {base.ApprenticeFg2},
    rustCommentLineDoc {base.Comment},
    rustDefault {base.ApprenticeAqua},
  }
end)

return M
