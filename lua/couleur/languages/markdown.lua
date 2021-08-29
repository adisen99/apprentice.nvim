-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")
local styles = require("couleur.settings").styles

local M = {}

M = lush(function()
  return {
    markdownItalic {fg = base.CouleurFg3.fg.hex, gui = styles.italic_strings},
    markdownH1 {base.CouleurAquaBold},
    markdownH2 {base.CouleurRedBold},
    markdownH3 {base.CouleurPurpleBold},
    markdownH4 {markdownH3},
    --[[ markdownH5 {base.CouleurYellow},
    markdownH6 {markdownH5}, ]]
    markdownCode {base.CouleurGreen},
    markdownCodeBlock {base.CouleurGreen},
    markdownCodeDelimiter {base.CouleurGreen},
    markdownBlockquote {base.CouleurGray},
    markdownListMarker {base.CouleurGray},
    markdownOrderedListMarker {base.CouleurGray},
    markdownRule {base.CouleurGray},
    markdownHeadingRule {base.CouleurGray},
    markdownUrlDelimiter {base.CouleurFg3},
    markdownLinkDelimiter {base.CouleurFg3},
    markdownLinkTextDelimiter {base.CouleurFg3},
    markdownHeadingDelimiter {base.CouleurOrange},
    markdownUrl {base.CouleurPurple},
    markdownUrlTitleDelimiter {base.CouleurAqua},
    markdownLinkText {fg = base.CouleurGray.fg.hex, gui = styles.underline},
    markdownIdDeclaration {markdownLinkText},
  }
end)

return M
