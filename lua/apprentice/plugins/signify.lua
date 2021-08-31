-- signify highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- vim-signify
    SignifySignAdd {base.ApprenticeGreenSign},
    SignifySignChange {base.ApprenticeAquaSign},
    SignifySignDelete {base.ApprenticeRedSign},
	}
end)

return M
