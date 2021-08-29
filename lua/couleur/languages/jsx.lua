-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    jsxTagName {base.CouleurAqua},
    jsxComponentName {base.CouleurGreen},
    jsxCloseString {base.CouleurFg4},
    jsxAttrib {base.CouleurYellow},
    jsxEqual {base.CouleurAqua},
  }
end)

return M
