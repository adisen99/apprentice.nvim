-- lsp highlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
	return {
    -- LSP
    LspCodeLens {base.CouleurGray},
    -- LspDiagnosticsDefaultError {base.CouleurRed},
    LspDiagnosticsSignError {base.CouleurErrorSign},
    -- LspDiagnosticsUnderlineError {base.CouleurRedUnderline},
    -- LspDiagnosticsDefaultWarning {base.CouleurYellow},
    LspDiagnosticsSignWarning {base.CouleurWarningSign},
    -- LspDiagnosticsUnderlineWarning {base.CouleurYellowUnderline},
    -- LspDiagnosticsDefaultInformation {base.CouleurBlue},
    LspDiagnosticsSignInformation {base.CouleurBlueSign},
    -- LspDiagnosticsUnderlineInformation {base.CouleurBlueUnderline},
    -- LspDiagnosticsDefaultHint {base.CouleurAqua},
    LspDiagnosticsSignHint {base.CouleurAquaSign},
    LspDiagnosticsUnderlineHint {base.CouleurAquaUnderline},
    -- LspDiagnosticsFloatingError {base.CouleurRed},
    -- LspDiagnosticsFloatingWarning {base.CouleurOrange},
    -- LspDiagnosticsFloatingInformation {base.CouleurBlue},
    -- LspDiagnosticsFloatingHint {base.CouleurAqua},
    LspDiagnosticsVirtualTextError {base.CouleurError},
    LspDiagnosticsVirtualTextWarning {base.CouleurWarning},
    LspDiagnosticsVirtualTextInformation {base.CouleurBlue},
    LspDiagnosticsVirtualTextHint {base.CouleurAqua},
    -- LspReferenceRead {base.CouleurYellowBold},
    -- LspReferenceText {base.CouleurYellowBold},
    -- LspReferenceWrite {base.CouleurYellowBold},
	}
end)

return M
