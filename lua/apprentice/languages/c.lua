-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    cOperator {base.ApprenticePurple},
    cppOperator {base.ApprenticePurple},
    cStructure {base.ApprenticeOrange},

  }
end)

return M
