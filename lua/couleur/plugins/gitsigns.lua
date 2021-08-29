-- gitsigns highlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
	return {
    -- gitsigns.nvim
    GitSignsAdd {base.CouleurGreenSign},
    GitSignsChange {base.CouleurBlueSign},
    GitSignsDelete {base.CouleurRedSign},
    -- GitSignsCurrentLineBlame {base.NonText},
	}
end)

return M
