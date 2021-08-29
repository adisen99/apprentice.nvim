-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    vimNotation {base.CouleurOrange},
    vimBracket {base.CouleurOrange},
    vimMapModKey {base.CouleurOrange},
    vimFuncSID {base.CouleurFg3},
    vimSetSep {base.CouleurFg3},
    vimSep {base.CouleurFg3},
    vimContinue {base.CouleurFg3},
  }
end)

return M
