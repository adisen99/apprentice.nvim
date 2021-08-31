-- language specific higlights
local lush = require("lush")
local base = require("apprentice.base")

local M = {}

-- xml
M = lush(function()
  return {
    xmlTag {base.ApprenticeAquaBold},
    xmlEndTag {base.ApprenticeAquaBold},
    xmlTagName {base.ApprenticeBlue},
    xmlEqual {base.ApprenticeBlue},
    docbkKeyword {base.ApprenticeAquaBold},
    xmlDocTypeDecl {base.ApprenticeGray},
    xmlDocTypeKeyword {base.ApprenticePurple},
    xmlCdataStart {base.ApprenticeGray},
    xmlCdataCdata {base.ApprenticePurple},
    dtdFunction {base.ApprenticeGray},
    dtdTagName {base.ApprenticePurple},
    xmlAttrib {base.ApprenticeOrange},
    xmlProcessingDelim {base.ApprenticeGray},
    dtdParamEntityPunct {base.ApprenticeGray},
    dtdParamEntityDPunct {base.ApprenticeGray},
    xmlAttribPunct {base.ApprenticeGray},
    xmlEntity {base.ApprenticeRed},
    xmlEntityPunct {base.ApprenticeRed},
  }
end)

return M
