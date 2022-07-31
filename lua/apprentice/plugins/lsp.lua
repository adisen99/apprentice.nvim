-- lsp highlights
local lush = require("lush")
local base = require("apprentice.base")
local colors = require("apprentice.colors")
local utils = require("apprentice.utils")
local styles = require("apprentice.settings").styles

local M = {}

local hls_lspreference = utils.get_color_from_var(vim.g.apprentice_hls_lspreference, base.yellow,
                                               colors)

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
    LspReferenceRead {bg = colors.dark0, fg = hls_lspreference},
    LspReferenceText {bg = colors.dark0, fg = hls_lspreference},
    LspReferenceWrite {bg = colors.dark0, fg = hls_lspreference},
	}
end)

return M
