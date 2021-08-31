-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    elixirDocString {base.Comment},
    elixirStringDelimiter {base.ApprenticeGreen},
    elixirInterpolationDelimiter {base.ApprenticeAqua},
    elixirModuleDeclaration {base.ApprenticeYellow},
  }
end)

return M
