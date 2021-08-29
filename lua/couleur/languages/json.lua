-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    jsonKeyword {base.CouleurGreen},
    jsonQuote {base.CouleurGreen},
    jsonBraces {base.CouleurFg1},
    jsonString {base.CouleurFg1},
  }
end)

return M
