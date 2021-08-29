-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")
local styles = require("couleur.settings").styles
local table_concat = table.concat

local M = {}

M = lush(function()
  return {
    htmlTag {base.CouleurAquaBold},
    htmlEndTag {base.CouleurAquaBold},
    htmlTagName {base.CouleurBlue},
    htmlArg {base.CouleurOrange},
    htmlScriptTag {base.CouleurPurple},
    htmlTagN {base.CouleurFg1},
    htmlSpecialTagName {base.CouleurBlue},
    htmlSpecialChar {base.CouleurRed},
    htmlLink {fg = base.CouleurFg4.fg.hex, gui = styles.underline},
    htmlBold {fg = base.CouleurFg1.fg.hex, gui = styles.bold},
    htmlBoldUnderline {
      fg = base.CouleurFg1.fg.hex,
      gui = table_concat({styles.bold, styles.underline}, ","),
    },
    htmlBoldItalic {
      fg = base.CouleurFg1.fg.hex,
      gui = table_concat({styles.bold, styles.italic_strings}, ","),
    },
    htmlBoldUnderlineItalic {
      fg = base.CouleurFg1.fg.hex,
      gui = table_concat({styles.bold, styles.italic_strings}, ","),
    },
    htmlItalic {fg = base.CouleurFg1.fg.hex, gui = styles.italic_strings},
  }
end)

return M
