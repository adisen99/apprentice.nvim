-- telescope highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- telescope.nvim
    TelescopeSelection {base.ApprenticeOrangeBold},
    TelescopeSlectionCaret {base.ApprenticeRed},
    TelescopeMultiSelection {base.ApprenticeGray},
    TelescopeNormal {base.ApprenticeFg1},
    TelescopeBorder {TelescopeNormal},
    TelescopePromptBorder {TelescopeNormal},
    TelescopeResultsBorder {TelescopeNormal},
    TelescopePreviewBorder {TelescopeNormal},
    TelescopeMatching {base.ApprenticeBlue},
    TelescopePromptPrefix {base.ApprenticeRed},
    TelescopePrompt {TelescopeNormal},
	}
end)

return M
