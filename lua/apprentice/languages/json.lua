-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    jsonKeyword {base.ApprenticeGreen},
    jsonQuote {base.ApprenticeGreen},
    jsonBraces {base.ApprenticeFg1},
    jsonString {base.ApprenticeFg1},
  }
end)

return M
