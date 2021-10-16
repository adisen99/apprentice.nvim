-- nvim-cmp highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- nvim-cmp
    CmpItemKind {base.ApprenticeAqua},
    -- CmpItemAbbrMatch {base.ApprenticeAquaBold},
    -- CmpItemAbbr {base.ApprenticeFg1},
    CmpItemMenu {base.ApprenticeBlue}
	}
end)

return M
