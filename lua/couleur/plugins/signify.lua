-- signify highlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
	return {
    -- vim-signify
    SignifySignAdd {base.CouleurGreenSign},
    SignifySignChange {base.CouleurAquaSign},
    SignifySignDelete {base.CouleurRedSign},
	}
end)

return M
