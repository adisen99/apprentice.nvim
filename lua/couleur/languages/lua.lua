-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    luaIn {base.CouleurRed},
    luaFunction {base.CouleurAqua},
    luaTable {base.CouleurOrange},
  }
end)

return M
