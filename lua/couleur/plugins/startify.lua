-- startify highlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
	return {
    -- vim-startify
    StartifyBracket {base.Delimiter},
    StartifyFile {base.Identifier},
    StartifyNumber {base.Number},
    StartifyPath {base.Directory},
    StartifySlash {base.Delimiter},
    StartifySection {base.Statement},
    StartifySpecial {base.Comment},
    StartifyHeader {base.Title},
    StartifyFooter {base.Title},
    StartifyVar {StartifyPath},
    StartifySelect {base.Title},
	}
end)

return M
