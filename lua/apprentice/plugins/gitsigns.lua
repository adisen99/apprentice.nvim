-- gitsigns highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- gitsigns.nvim
    GitSignsAdd {base.ApprenticeGreenSign},
    GitSignsChange {base.ApprenticeBlueSign},
    GitSignsDelete {base.ApprenticeRedSign},
    -- GitSignsCurrentLineBlame {base.NonText},
	}
end)

return M
