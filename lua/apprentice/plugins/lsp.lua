-- lsp highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- LSP
    LspCodeLens {base.ApprenticeGray},
    -- LspDiagnosticsDefaultError {base.ApprenticeRed},
    LspDiagnosticsSignError {base.ApprenticeErrorSign},
    -- LspDiagnosticsUnderlineError {base.ApprenticeRedUnderline},
    -- LspDiagnosticsDefaultWarning {base.ApprenticeYellow},
    LspDiagnosticsSignWarning {base.ApprenticeWarningSign},
    -- LspDiagnosticsUnderlineWarning {base.ApprenticeYellowUnderline},
    -- LspDiagnosticsDefaultInformation {base.ApprenticeBlue},
    LspDiagnosticsSignInformation {base.ApprenticeBlueSign},
    -- LspDiagnosticsUnderlineInformation {base.ApprenticeBlueUnderline},
    -- LspDiagnosticsDefaultHint {base.ApprenticeAqua},
    LspDiagnosticsSignHint {base.ApprenticeAquaSign},
    LspDiagnosticsUnderlineHint {base.ApprenticeAquaUnderline},
    -- LspDiagnosticsFloatingError {base.ApprenticeRed},
    -- LspDiagnosticsFloatingWarning {base.ApprenticeOrange},
    -- LspDiagnosticsFloatingInformation {base.ApprenticeBlue},
    -- LspDiagnosticsFloatingHint {base.ApprenticeAqua},
    LspDiagnosticsVirtualTextError {base.ApprenticeError},
    LspDiagnosticsVirtualTextWarning {base.ApprenticeWarning},
    LspDiagnosticsVirtualTextInformation {base.ApprenticeBlue},
    LspDiagnosticsVirtualTextHint {base.ApprenticeAqua},
    -- LspReferenceRead {base.ApprenticeYellowBold},
    -- LspReferenceText {base.ApprenticeYellowBold},
    -- LspReferenceWrite {base.ApprenticeYellowBold},
	}
end)

return M
