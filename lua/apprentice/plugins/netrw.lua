-- netrw highlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    -- netrw
    netrwDir {base.ApprenticeAqua},
    netrwClassify {base.ApprenticeAqua},
    netrwLink {base.ApprenticeGray},
    netrwSymLink {base.ApprenticeFg1},
    netrwExe {base.ApprenticeYellow},
    netrwComment {base.ApprenticeGray},
    netrwList {base.ApprenticeBlue},
    netrwHelpCmd {base.ApprenticeAqua},
    netrwCmdSep {base.ApprenticeFg3},
    netrwVersion {base.ApprenticeGreen},
	}
end)

return M
