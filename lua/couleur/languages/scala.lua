-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    scalaNameDefinition {base.CouleurFg1},
    scalaCaseFollowing {base.CouleurFg1},
    scalaCapitalWord {base.CouleurFg1},
    scalaTypeExtension {base.CouleurFg1},
    scalaKeyword {base.CouleurRed},
    scalaKeywordModifier {base.CouleurRed},
    scalaSpecial {base.CouleurAqua},
    scalaOperator {base.CouleurFg1},
    scalaTypeDeclaration {base.CouleurYellow},
    scalaTypeTypePostDeclaration {base.CouleurYellow},
    scalaInstanceDeclaration {base.CouleurFg1},
    scalaInterpolation {base.CouleurAqua},
  }
end)

return M
