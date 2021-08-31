-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {objcTypeModifier {base.ApprenticeRed}, objcDirective {base.ApprenticeBlue}}
end)

return M
