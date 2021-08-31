-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    csBraces {base.ApprenticeFg1},
    csEndColon {base.ApprenticeFg1},
    csLogicSymbols {base.ApprenticeFg1},
    csParens {base.ApprenticeFg3},
    csOpSymbols {base.ApprenticeFg3},
    csInterpolationDelimiter {base.ApprenticeFg3},
    csInterpolationAlignDel {base.ApprenticeAquaBold},
    csInterpolationFormat {base.ApprenticeAqua},
    csInterpolationFormatDel {base.ApprenticeAquaBold},
  }
end)

return M
