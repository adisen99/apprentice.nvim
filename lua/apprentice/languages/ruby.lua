-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    rubyStringDelimiter {base.ApprenticeGreen},
    rubyInterpolationDelimiter {base.ApprenticeAqua},
  }
end)

return M
