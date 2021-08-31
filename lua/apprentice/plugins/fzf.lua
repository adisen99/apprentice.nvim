-- fzf highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- fzf.vim
    Fzf1 {fg = base.ApprenticeBlue.fg.hex, bg = base.ApprenticeBg1.fg.hex},
    Fzf2 {fg = base.ApprenticeOrange.fg.hex, bg = base.ApprenticeBg1.fg.hex},
    Fzf3 {fg = base.ApprenticeFg4.fg.hex, bg = base.ApprenticeBg1.fg.hex},
    ShowMarksHLl {base.ApprenticeBlueSign},
    ShowMarksHLu {base.ApprenticeBlueSign},
    ShowMarksHLo {base.ApprenticeBlueSign},
    ShowMarksHLm {base.ApprenticeBlueSign},
	}
end)

return M
