-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")
local styles = require("apprentice.settings").styles

local M = {}

M = lush(function()
  return {
    clojureKeyword {base.ApprenticeBlue},
    clojureCond {base.ApprenticeOrange},
    clojureSpecial {base.ApprenticeOrange},
    clojureDefine {base.ApprenticeOrange},
    clojureFunc {base.ApprenticeYellow},
    clojureRepeat {base.ApprenticeYellow},
    clojureCharacter {base.ApprenticeAqua},
    clojureStringEscape {base.ApprenticeAqua},
    clojureException {base.ApprenticeRed},
    clojureRegexp {base.ApprenticeAqua},
    clojureRegexpEscape {base.ApprenticeAqua},
    clojureParen {base.ApprenticeFg3},
    clojureAnonArg {base.ApprenticeYellow},
    clojureVariable {base.ApprenticeBlue},
    clojureMacro {base.ApprenticeOrange},
    clojureMeta {base.ApprenticeYellow},
    clojureDeref {base.ApprenticeYellow},
    clojureQuote {base.ApprenticeYellow},
    clojureUnquote {base.ApprenticeYellow},
    clojureRegexpCharClass {fg = base.ApprenticeFg3.fg.hex, gui = styles.bold},
    clojureRegexpMod {clojureRegexpCharClass},
    clojureRegexpQuantifier {clojureRegexpCharClass},
  }
end)

return M
