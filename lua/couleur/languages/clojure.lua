-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")
local styles = require("couleur.settings").styles

local M = {}

M = lush(function()
  return {
    clojureKeyword {base.CouleurBlue},
    clojureCond {base.CouleurOrange},
    clojureSpecial {base.CouleurOrange},
    clojureDefine {base.CouleurOrange},
    clojureFunc {base.CouleurYellow},
    clojureRepeat {base.CouleurYellow},
    clojureCharacter {base.CouleurAqua},
    clojureStringEscape {base.CouleurAqua},
    clojureException {base.CouleurRed},
    clojureRegexp {base.CouleurAqua},
    clojureRegexpEscape {base.CouleurAqua},
    clojureParen {base.CouleurFg3},
    clojureAnonArg {base.CouleurYellow},
    clojureVariable {base.CouleurBlue},
    clojureMacro {base.CouleurOrange},
    clojureMeta {base.CouleurYellow},
    clojureDeref {base.CouleurYellow},
    clojureQuote {base.CouleurYellow},
    clojureUnquote {base.CouleurYellow},
    clojureRegexpCharClass {fg = base.CouleurFg3.fg.hex, gui = styles.bold},
    clojureRegexpMod {clojureRegexpCharClass},
    clojureRegexpQuantifier {clojureRegexpCharClass},
  }
end)

return M
