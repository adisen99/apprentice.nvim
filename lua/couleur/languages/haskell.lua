-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    haskellType {base.CouleurBlue},
    haskellIdentifier {base.CouleurAqua},
    haskellSeparator {base.CouleurFg4},
    haskellDelimiter {base.CouleurOrange},
    haskellOperators {base.CouleurPurple},
    haskellBacktick {base.CouleurOrange},
    haskellStatement {base.CouleurPurple},
    haskellConditional {base.CouleurPurple},
    haskellLet {base.CouleurRed},
    haskellDefault {base.CouleurRed},
    haskellWhere {base.CouleurRed},
    haskellBottom {base.CouleurRedBold},
    haskellImportKeywords {base.CouleurPurpleBold},
    haskellDeclKeyword {base.CouleurOrange},
    haskellDecl {base.CouleurOrange},
    haskellDeriving {base.CouleurPurple},
    haskellAssocType {base.CouleurAqua},
    haskellNumber {base.CouleurAqua},
    haskellPragma {base.CouleurRedBold},
    haskellTH {base.CouleurAquaBold},
    haskellForeignKeywords {base.CouleurGreen},
    haskellKeyword {base.CouleurRed},
    haskellFloat {base.CouleurAqua},
    haskellInfix {base.CouleurPurple},
    haskellQuote {base.CouleurGreenBold},
    haskellShebang {base.CouleurYellowBold},
    haskellLiquid {base.CouleurPurpleBold},
    haskellQuasiQuoted {base.CouleurBlueBold},
    haskellRecursiveDo {base.CouleurPurple},
    haskellQuotedType {base.CouleurRed},
    haskellPreProc {base.CouleurFg4},
    haskellTypeRoles {base.CouleurRedBold},
    haskellTypeForall {base.CouleurRed},
    haskellPatternKeyword {base.CouleurBlue},
  }
end)

return M
