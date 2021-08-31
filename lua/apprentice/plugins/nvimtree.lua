-- nvimtree highlights
local lush = require("lush")
local base = require("apprentice.base")
local colors = require("apprentice.colors")

local M = {}

M = lush(function()
	return {
		-- nvimtree
    NvimTreeImageFile     {base.ApprenticeBlue},
    NvimTreeGitDirty      {fg = colors.neutral_orange},
    NvimTreeGitDeleted    {fg = colors.red},
    NvimTreeGitStaged     {base.ApprenticeGreen},
    NvimTreeGitMerge      {base.ApprenticeGreen},
    NvimTreeGitRenamed    {base.ApprenticeYellow},
    NvimTreeGitNew        {base.ApprenticeYellow},
    NvimTreeIndentMarker  { fg = colors.gray },
    NvimTreeSymlink       { fg = colors.neutral_green },
    NvimTreeFolderIcon    { fg = colors.faded_blue },
    NvimTreeRootFolder    {base.fg3},
    NvimTreeExecFile      {base.ApprenticeOrange},
    NvimTreeSpecialFile   {base.ApprenticeYellow},
	}
end)

return M
