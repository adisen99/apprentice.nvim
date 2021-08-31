-- nerdtree highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
	return {
    -- nerdtree
    NERDTreeDir {base.ApprenticeAqua},
    NERDTreeDirSlash {base.ApprenticeAqua},
    NERDTreeOpenable {base.ApprenticeOrange},
    NERDTreeClosable {base.ApprenticeOrange},
    NERDTreeFile {base.ApprenticeFg1},
    NERDTreeExecFile {base.ApprenticeYellow},
    NERDTreeUp {base.ApprenticeGray},
    NERDTreeCWD {base.ApprenticeGreen},
    NERDTreeHelp {base.ApprenticeFg1},
    NERDTreeToggleOn {base.ApprenticeGreen},
	}
end)

return M
