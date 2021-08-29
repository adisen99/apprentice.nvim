-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    rubyStringDelimiter {base.CouleurGreen},
    rubyInterpolationDelimiter {base.CouleurAqua},
  }
end)

return M
