-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

-- java
M = lush(function()
  return {
    javaAnnotation {base.CouleurBlue},
    javaDocTags {base.CouleurAqua},
    javaCommentTitle {base.Comment},
    javaParen {base.CouleurFg3},
    javaParen1 {base.CouleurFg3},
    javaParen2 {base.CouleurFg3},
    javaParen3 {base.CouleurFg3},
    javaParen4 {base.CouleurFg3},
    javaParen5 {base.CouleurFg3},
    javaOperator {base.CouleurOrange},
  }
end)

return M
