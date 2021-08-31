-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

-- java
M = lush(function()
  return {
    javaAnnotation {base.ApprenticeBlue},
    javaDocTags {base.ApprenticeAqua},
    javaCommentTitle {base.Comment},
    javaParen {base.ApprenticeFg3},
    javaParen1 {base.ApprenticeFg3},
    javaParen2 {base.ApprenticeFg3},
    javaParen3 {base.ApprenticeFg3},
    javaParen4 {base.ApprenticeFg3},
    javaParen5 {base.ApprenticeFg3},
    javaOperator {base.ApprenticeOrange},
  }
end)

return M
