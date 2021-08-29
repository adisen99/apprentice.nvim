-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    rustSigil {base.CouleurOrange},
    rustEscape {base.CouleurAqua},
    rustStringContinuation {base.CouleurAqua},
    rustEnum {base.CouleurAqua},
    rustStructure {base.CouleurAqua},
    rustModPathSep {base.CouleurFg2},
    rustCommentLineDoc {base.Comment},
    rustDefault {base.CouleurAqua},
  }
end)

return M
