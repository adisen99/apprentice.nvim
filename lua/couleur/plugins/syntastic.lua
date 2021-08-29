-- syntastic highlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
	return {
    -- syntastic
    SyntasticError {base.CouleurRedUnderline},
    SyntasticWarning {base.CouleurYellowUnderline},
    SyntasticErrorSign {base.CouleurRedSign},
    SyntasticWarningSign {base.CouleurYellowSign},
	}
end)

return M
