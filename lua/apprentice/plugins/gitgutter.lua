-- gitgutter highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- git-gutter
    GitGutterAdd {base.ApprenticeGreenSign},
    GitGutterChange {base.ApprenticeAquaSign},
    GitGutterDelete {base.ApprenticeRedSign},
    GitGutterChangeDelete {base.ApprenticeAquaSign},
	}
end)

return M
