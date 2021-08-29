-- language specific higlights
local lush = require("lush")
local base = require("couleur.base")

local M = {}

-- xml
M = lush(function()
  return {
    xmlTag {base.CouleurAquaBold},
    xmlEndTag {base.CouleurAquaBold},
    xmlTagName {base.CouleurBlue},
    xmlEqual {base.CouleurBlue},
    docbkKeyword {base.CouleurAquaBold},
    xmlDocTypeDecl {base.CouleurGray},
    xmlDocTypeKeyword {base.CouleurPurple},
    xmlCdataStart {base.CouleurGray},
    xmlCdataCdata {base.CouleurPurple},
    dtdFunction {base.CouleurGray},
    dtdTagName {base.CouleurPurple},
    xmlAttrib {base.CouleurOrange},
    xmlProcessingDelim {base.CouleurGray},
    dtdParamEntityPunct {base.CouleurGray},
    dtdParamEntityDPunct {base.CouleurGray},
    xmlAttribPunct {base.CouleurGray},
    xmlEntity {base.CouleurRed},
    xmlEntityPunct {base.CouleurRed},
  }
end)

return M
