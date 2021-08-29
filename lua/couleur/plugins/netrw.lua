-- netrw highlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    -- netrw
    netrwDir {base.CouleurAqua},
    netrwClassify {base.CouleurAqua},
    netrwLink {base.CouleurGray},
    netrwSymLink {base.CouleurFg1},
    netrwExe {base.CouleurYellow},
    netrwComment {base.CouleurGray},
    netrwList {base.CouleurBlue},
    netrwHelpCmd {base.CouleurAqua},
    netrwCmdSep {base.CouleurFg3},
    netrwVersion {base.CouleurGreen},
	}
end)

return M
