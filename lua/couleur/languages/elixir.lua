-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    elixirDocString {base.Comment},
    elixirStringDelimiter {base.CouleurGreen},
    elixirInterpolationDelimiter {base.CouleurAqua},
    elixirModuleDeclaration {base.CouleurYellow},
  }
end)

return M
