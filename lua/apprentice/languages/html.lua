-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")
local styles = require("apprentice.settings").styles
local table_concat = table.concat

local M = {}

M = lush(function()
  return {
    htmlTag {base.ApprenticeAquaBold},
    htmlEndTag {base.ApprenticeAquaBold},
    htmlTagName {base.ApprenticeBlue},
    htmlArg {base.ApprenticeOrange},
    htmlScriptTag {base.ApprenticePurple},
    htmlTagN {base.ApprenticeFg1},
    htmlSpecialTagName {base.ApprenticeBlue},
    htmlSpecialChar {base.ApprenticeRed},
    htmlLink {fg = base.ApprenticeFg4.fg.hex, gui = styles.underline},
    htmlBold {fg = base.ApprenticeFg1.fg.hex, gui = styles.bold},
    htmlBoldUnderline {
      fg = base.ApprenticeFg1.fg.hex,
      gui = table_concat({styles.bold, styles.underline}, ","),
    },
    htmlBoldItalic {
      fg = base.ApprenticeFg1.fg.hex,
      gui = table_concat({styles.bold, styles.italic_strings}, ","),
    },
    htmlBoldUnderlineItalic {
      fg = base.ApprenticeFg1.fg.hex,
      gui = table_concat({styles.bold, styles.italic_strings}, ","),
    },
    htmlItalic {fg = base.ApprenticeFg1.fg.hex, gui = styles.italic_strings},
  }
end)

return M
