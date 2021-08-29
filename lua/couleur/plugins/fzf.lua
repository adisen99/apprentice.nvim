-- fzf highlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
	return {
    -- fzf.vim
    Fzf1 {fg = base.CouleurBlue.fg.hex, bg = base.CouleurBg1.fg.hex},
    Fzf2 {fg = base.CouleurOrange.fg.hex, bg = base.CouleurBg1.fg.hex},
    Fzf3 {fg = base.CouleurFg4.fg.hex, bg = base.CouleurBg1.fg.hex},
    ShowMarksHLl {base.CouleurBlueSign},
    ShowMarksHLu {base.CouleurBlueSign},
    ShowMarksHLo {base.CouleurBlueSign},
    ShowMarksHLm {base.CouleurBlueSign},
	}
end)

return M
