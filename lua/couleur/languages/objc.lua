-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {objcTypeModifier {base.CouleurRed}, objcDirective {base.CouleurBlue}}
end)

return M
