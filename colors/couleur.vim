" reloading all couleur highlights
lua << EOF
package.loaded["couleur"] = nil
package.loaded["couleur.base"] = nil
package.loaded["couleur.plugins"] = nil
package.loaded["couleur.languages"] = nil
-- package.loaded["couleur.config"] = nil
-- package.loaded["couleur.utils"] = nil
require("lush")(require('couleur').setup())
EOF
