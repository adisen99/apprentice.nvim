-- telescope highlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
	return {
    -- telescope.nvim
    TelescopeSelection {base.CouleurOrangeBold},
    TelescopeSlectionCaret {base.CouleurRed},
    TelescopeMultiSelection {base.CouleurGray},
    TelescopeNormal {base.CouleurFg1},
    TelescopeBorder {TelescopeNormal},
    TelescopePromptBorder {TelescopeNormal},
    TelescopeResultsBorder {TelescopeNormal},
    TelescopePreviewBorder {TelescopeNormal},
    TelescopeMatching {base.CouleurBlue},
    TelescopePromptPrefix {base.CouleurRed},
    TelescopePrompt {TelescopeNormal},
	}
end)

return M
