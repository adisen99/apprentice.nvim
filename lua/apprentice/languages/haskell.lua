-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    haskellType {base.ApprenticeBlue},
    haskellIdentifier {base.ApprenticeAqua},
    haskellSeparator {base.ApprenticeFg4},
    haskellDelimiter {base.ApprenticeOrange},
    haskellOperators {base.ApprenticePurple},
    haskellBacktick {base.ApprenticeOrange},
    haskellStatement {base.ApprenticePurple},
    haskellConditional {base.ApprenticePurple},
    haskellLet {base.ApprenticeRed},
    haskellDefault {base.ApprenticeRed},
    haskellWhere {base.ApprenticeRed},
    haskellBottom {base.ApprenticeRedBold},
    haskellImportKeywords {base.ApprenticePurpleBold},
    haskellDeclKeyword {base.ApprenticeOrange},
    haskellDecl {base.ApprenticeOrange},
    haskellDeriving {base.ApprenticePurple},
    haskellAssocType {base.ApprenticeAqua},
    haskellNumber {base.ApprenticeAqua},
    haskellPragma {base.ApprenticeRedBold},
    haskellTH {base.ApprenticeAquaBold},
    haskellForeignKeywords {base.ApprenticeGreen},
    haskellKeyword {base.ApprenticeRed},
    haskellFloat {base.ApprenticeAqua},
    haskellInfix {base.ApprenticePurple},
    haskellQuote {base.ApprenticeGreenBold},
    haskellShebang {base.ApprenticeYellowBold},
    haskellLiquid {base.ApprenticePurpleBold},
    haskellQuasiQuoted {base.ApprenticeBlueBold},
    haskellRecursiveDo {base.ApprenticePurple},
    haskellQuotedType {base.ApprenticeRed},
    haskellPreProc {base.ApprenticeFg4},
    haskellTypeRoles {base.ApprenticeRedBold},
    haskellTypeForall {base.ApprenticeRed},
    haskellPatternKeyword {base.ApprenticeBlue},
  }
end)

return M
