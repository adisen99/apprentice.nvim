-- nvim-cmp highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- nvim-cmp
    CmpItemKind {base.ApprenticeFg1}
	}
end)

return M
