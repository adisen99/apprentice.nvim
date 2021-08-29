-- coc highlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
	return {
    -- coc.nvim
    CocErrorSign {base.CouleurRedSign},
    CocWarningSign {base.CouleurOrangeSign},
    CocInfoSign {base.CouleurBlueSign},
    CocHintSign {base.CouleurAquaSign},
    CocErrorFloat {base.CouleurRed},
    CocWarningFloat {base.CouleurOrange},
    CocInfoFloat {base.CouleurBlue},
    CocHintFloat {base.CouleurAqua},
    CocDiagnosticsError {base.CouleurRed},
    CocDiagnosticsWarning {base.CouleurOrange},
    CocDiagnosticsInfo {base.CouleurBlue},
    CocDiagnosticsHint {base.CouleurAqua},
    CocSelectedText {base.CouleurRed},
    CocCodeLens {base.CouleurGray},
    CocErrorHighlight {base.CouleurRedUnderline},
    CocWarningHighlight {base.CouleurOrangeUnderline},
    CocInfoHighlight {base.CouleurBlueUnderline},
    CocHintHighlight {base.CouleurAquaUnderline},
	}
end)

return M
