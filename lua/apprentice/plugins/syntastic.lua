-- syntastic highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- syntastic
    SyntasticError {base.ApprenticeRedUnderline},
    SyntasticWarning {base.ApprenticeYellowUnderline},
    SyntasticErrorSign {base.ApprenticeRedSign},
    SyntasticWarningSign {base.ApprenticeYellowSign},
	}
end)

return M
