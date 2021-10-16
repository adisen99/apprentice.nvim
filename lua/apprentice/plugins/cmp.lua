-- nvim-cmp highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- nvim-cmp
    CmpItemKind {base.ApprenticeAqua},
    CmpItemAbbrMatch {base.ApprenticeFg1},
    CmpItemAbbr {base.ApprenticeFg4},
    CmpItemMenu {base.ApprenticeBlue}
	}
end)

return M
