-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

M = lush(function()
  return {
    cssBraces {base.ApprenticeBlue},
    cssFunctionName {base.ApprenticeYellow},
    cssIdentifier {base.ApprenticeOrange},
    cssClassName {base.ApprenticeGreen},
    cssColor {base.ApprenticeBlue},
    cssSelectorOp {base.ApprenticeBlue},
    cssSelectorOp2 {base.ApprenticeBlue},
    cssImportant {base.ApprenticeGreen},
    cssVendor {base.ApprenticeFg1},
    cssTextProp {base.ApprenticeAqua},
    cssAnimationProp {base.ApprenticeAqua},
    cssUIProp {base.ApprenticeYellow},
    cssTransformProp {base.ApprenticeAqua},
    cssTransitionProp {base.ApprenticeAqua},
    cssPrintProp {base.ApprenticeAqua},
    cssPositioningProp {base.ApprenticeYellow},
    cssBoxProp {base.ApprenticeAqua},
    cssFontDescriptorProp {base.ApprenticeAqua},
    cssFlexibleBoxProp {base.ApprenticeAqua},
    cssBorderOutlineProp {base.ApprenticeAqua},
    cssBackgroundProp {base.ApprenticeAqua},
    cssMarginProp {base.ApprenticeAqua},
    cssListProp {base.ApprenticeAqua},
    cssTableProp {base.ApprenticeAqua},
    cssFontProp {base.ApprenticeAqua},
    cssPaddingProp {base.ApprenticeAqua},
    cssDimensionProp {base.ApprenticeAqua},
    cssRenderProp {base.ApprenticeAqua},
    cssColorProp {base.ApprenticeAqua},
    cssGeneratedContentProp {base.ApprenticeAqua},
  }
end)

return M
