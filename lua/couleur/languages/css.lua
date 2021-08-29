-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

M = lush(function()
  return {
    cssBraces {base.CouleurBlue},
    cssFunctionName {base.CouleurYellow},
    cssIdentifier {base.CouleurOrange},
    cssClassName {base.CouleurGreen},
    cssColor {base.CouleurBlue},
    cssSelectorOp {base.CouleurBlue},
    cssSelectorOp2 {base.CouleurBlue},
    cssImportant {base.CouleurGreen},
    cssVendor {base.CouleurFg1},
    cssTextProp {base.CouleurAqua},
    cssAnimationProp {base.CouleurAqua},
    cssUIProp {base.CouleurYellow},
    cssTransformProp {base.CouleurAqua},
    cssTransitionProp {base.CouleurAqua},
    cssPrintProp {base.CouleurAqua},
    cssPositioningProp {base.CouleurYellow},
    cssBoxProp {base.CouleurAqua},
    cssFontDescriptorProp {base.CouleurAqua},
    cssFlexibleBoxProp {base.CouleurAqua},
    cssBorderOutlineProp {base.CouleurAqua},
    cssBackgroundProp {base.CouleurAqua},
    cssMarginProp {base.CouleurAqua},
    cssListProp {base.CouleurAqua},
    cssTableProp {base.CouleurAqua},
    cssFontProp {base.CouleurAqua},
    cssPaddingProp {base.CouleurAqua},
    cssDimensionProp {base.CouleurAqua},
    cssRenderProp {base.CouleurAqua},
    cssColorProp {base.CouleurAqua},
    cssGeneratedContentProp {base.CouleurAqua},
  }
end)

return M
