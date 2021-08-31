-- coc highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- coc.nvim
    CocErrorSign {base.ApprenticeRedSign},
    CocWarningSign {base.ApprenticeOrangeSign},
    CocInfoSign {base.ApprenticeBlueSign},
    CocHintSign {base.ApprenticeAquaSign},
    CocErrorFloat {base.ApprenticeRed},
    CocWarningFloat {base.ApprenticeOrange},
    CocInfoFloat {base.ApprenticeBlue},
    CocHintFloat {base.ApprenticeAqua},
    CocDiagnosticsError {base.ApprenticeRed},
    CocDiagnosticsWarning {base.ApprenticeOrange},
    CocDiagnosticsInfo {base.ApprenticeBlue},
    CocDiagnosticsHint {base.ApprenticeAqua},
    CocSelectedText {base.ApprenticeRed},
    CocCodeLens {base.ApprenticeGray},
    CocErrorHighlight {base.ApprenticeRedUnderline},
    CocWarningHighlight {base.ApprenticeOrangeUnderline},
    CocInfoHighlight {base.ApprenticeBlueUnderline},
    CocHintHighlight {base.ApprenticeAquaUnderline},
	}
end)

return M
