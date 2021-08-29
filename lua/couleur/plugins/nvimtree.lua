-- nvimtree highlights
local lush = require("lush")
local base = require("couleur.base")
local colors = require("couleur.colors")

local M = {}

M = lush(function()
	return {
		-- nvimtree
    NvimTreeImageFile     {base.CouleurBlue},
    NvimTreeGitDirty      {fg = colors.neutral_orange},
    NvimTreeGitDeleted    {fg = colors.red},
    NvimTreeGitStaged     {base.CouleurGreen},
    NvimTreeGitMerge      {base.CouleurGreen},
    NvimTreeGitRenamed    {base.CouleurYellow},
    NvimTreeGitNew        {base.CouleurYellow},
    NvimTreeIndentMarker  { fg = colors.gray },
    NvimTreeSymlink       { fg = colors.neutral_green },
    NvimTreeFolderIcon    { fg = colors.faded_blue },
    NvimTreeRootFolder    {base.fg3},
    NvimTreeExecFile      {base.CouleurOrange},
    NvimTreeSpecialFile   {base.CouleurYellow},
	}
end)

return M
