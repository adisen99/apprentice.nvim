-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    typescriptReserved {base.ApprenticeAqua},
    typescriptLabel {base.ApprenticeAqua},
    typescriptFuncKeyword {base.ApprenticeAqua},
    typescriptIdentifier {base.ApprenticeOrange},
    typescriptBraces {base.ApprenticeOrange},
    typescriptEndColons {base.ApprenticeFg1},
    typescriptDOMObjects {base.ApprenticeFg1},
    typescriptAjaxMethods {base.ApprenticeFg1},
    typescriptLogicSymbols {base.ApprenticeOrange},
    typescriptDocSeeTag {base.Comment},
    typescriptDocParam {base.Comment},
    typescriptDocTags {base.Comment},
    typescriptGlobalObjects {base.ApprenticeFg1},
    typescriptParens {base.ApprenticeOrange},
    typescriptOpSymbols {base.ApprenticeOrange},
    typescriptHtmlElemProperties {base.ApprenticeFg1},
    typescriptNull {base.ApprenticePurple},
    typescriptInterpolationDelimiter {base.ApprenticeAqua},
    typescriptArrowFunc {base.ApprenticeFg1},
    typescriptCharacter {base.ApprenticeOrange},
    typescriptUnion {base.ApprenticeOrange},
    typescriptDotNotation {base.ApprenticeOrange},
    typescriptGlobalObjectDot {typescriptDotNotation},
  }
end)

return M
