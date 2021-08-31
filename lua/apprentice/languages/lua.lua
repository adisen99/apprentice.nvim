-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    luaIn {base.ApprenticeRed},
    luaFunction {base.ApprenticeAqua},
    luaTable {base.ApprenticeOrange},
  }
end)

return M
