-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    scalaNameDefinition {base.ApprenticeFg1},
    scalaCaseFollowing {base.ApprenticeFg1},
    scalaCapitalWord {base.ApprenticeFg1},
    scalaTypeExtension {base.ApprenticeFg1},
    scalaKeyword {base.ApprenticeRed},
    scalaKeywordModifier {base.ApprenticeRed},
    scalaSpecial {base.ApprenticeAqua},
    scalaOperator {base.ApprenticeFg1},
    scalaTypeDeclaration {base.ApprenticeYellow},
    scalaTypeTypePostDeclaration {base.ApprenticeYellow},
    scalaInstanceDeclaration {base.ApprenticeFg1},
    scalaInterpolation {base.ApprenticeAqua},
  }
end)

return M
