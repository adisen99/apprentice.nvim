" reloading all apprentice highlights
lua << EOF
package.loaded["apprentice"] = nil
package.loaded["apprentice.base"] = nil
package.loaded["apprentice.plugins"] = nil
package.loaded["apprentice.languages"] = nil
-- package.loaded["apprentice.config"] = nil
-- package.loaded["apprentice.utils"] = nil
require("lush")(require('apprentice').setup())
EOF
