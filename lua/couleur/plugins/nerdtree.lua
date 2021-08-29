-- nerdtree highlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
	return {
    -- nerdtree
    NERDTreeDir {base.CouleurAqua},
    NERDTreeDirSlash {base.CouleurAqua},
    NERDTreeOpenable {base.CouleurOrange},
    NERDTreeClosable {base.CouleurOrange},
    NERDTreeFile {base.CouleurFg1},
    NERDTreeExecFile {base.CouleurYellow},
    NERDTreeUp {base.CouleurGray},
    NERDTreeCWD {base.CouleurGreen},
    NERDTreeHelp {base.CouleurFg1},
    NERDTreeToggleOn {base.CouleurGreen},
	}
end)

return M
