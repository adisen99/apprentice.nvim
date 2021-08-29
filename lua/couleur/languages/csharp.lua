-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    csBraces {base.CouleurFg1},
    csEndColon {base.CouleurFg1},
    csLogicSymbols {base.CouleurFg1},
    csParens {base.CouleurFg3},
    csOpSymbols {base.CouleurFg3},
    csInterpolationDelimiter {base.CouleurFg3},
    csInterpolationAlignDel {base.CouleurAquaBold},
    csInterpolationFormat {base.CouleurAqua},
    csInterpolationFormatDel {base.CouleurAquaBold},
  }
end)

return M
