-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    typescriptReserved {base.CouleurAqua},
    typescriptLabel {base.CouleurAqua},
    typescriptFuncKeyword {base.CouleurAqua},
    typescriptIdentifier {base.CouleurOrange},
    typescriptBraces {base.CouleurOrange},
    typescriptEndColons {base.CouleurFg1},
    typescriptDOMObjects {base.CouleurFg1},
    typescriptAjaxMethods {base.CouleurFg1},
    typescriptLogicSymbols {base.CouleurOrange},
    typescriptDocSeeTag {base.Comment},
    typescriptDocParam {base.Comment},
    typescriptDocTags {base.Comment},
    typescriptGlobalObjects {base.CouleurFg1},
    typescriptParens {base.CouleurOrange},
    typescriptOpSymbols {base.CouleurOrange},
    typescriptHtmlElemProperties {base.CouleurFg1},
    typescriptNull {base.CouleurPurple},
    typescriptInterpolationDelimiter {base.CouleurAqua},
    typescriptArrowFunc {base.CouleurFg1},
    typescriptCharacter {base.CouleurOrange},
    typescriptUnion {base.CouleurOrange},
    typescriptDotNotation {base.CouleurOrange},
    typescriptGlobalObjectDot {typescriptDotNotation},
  }
end)

return M
