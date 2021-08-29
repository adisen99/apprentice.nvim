-- gitgutter highlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
	return {
    -- git-gutter
    GitGutterAdd {base.CouleurGreenSign},
    GitGutterChange {base.CouleurAquaSign},
    GitGutterDelete {base.CouleurRedSign},
    GitGutterChangeDelete {base.CouleurAquaSign},
	}
end)

return M
