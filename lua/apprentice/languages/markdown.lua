-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")
local styles = require("apprentice.settings").styles

local M = {}

M = lush(function()
  return {
    markdownItalic {fg = base.ApprenticeFg3.fg.hex, gui = styles.italic_strings},
    markdownH1 {base.ApprenticeAquaBold},
    markdownH2 {base.ApprenticeRedBold},
    markdownH3 {base.ApprenticePurpleBold},
    markdownH4 {markdownH3},
    --[[ markdownH5 {base.ApprenticeYellow},
    markdownH6 {markdownH5}, ]]
    markdownCode {base.ApprenticeGreen},
    markdownCodeBlock {base.ApprenticeGreen},
    markdownCodeDelimiter {base.ApprenticeGreen},
    markdownBlockquote {base.ApprenticeGray},
    markdownListMarker {base.ApprenticeGray},
    markdownOrderedListMarker {base.ApprenticeGray},
    markdownRule {base.ApprenticeGray},
    markdownHeadingRule {base.ApprenticeGray},
    markdownUrlDelimiter {base.ApprenticeFg3},
    markdownLinkDelimiter {base.ApprenticeFg3},
    markdownLinkTextDelimiter {base.ApprenticeFg3},
    markdownHeadingDelimiter {base.ApprenticeOrange},
    markdownUrl {base.ApprenticePurple},
    markdownUrlTitleDelimiter {base.ApprenticeAqua},
    markdownLinkText {fg = base.ApprenticeGray.fg.hex, gui = styles.underline},
    markdownIdDeclaration {markdownLinkText},
  }
end)

return M
