-- apprentice settings handler
local utils = require("apprentice.utils")

local settings = {
  contrast_dark = "medium",
  contrast_light = "medium",
  bold = true,
  italic = true,
  undercurl = true,
  underline = true,
  inverse = true,
  improved_strings = false,
  improved_warnings = false,
  invert_signs = false,
  invert_selection = true,
  invert_tabline = false,
  italicize_comments = true,
  italicize_booleans = false,
  italicize_strings = false,
  invert_intend_guides = false,
}

local styles = {
  italic = "italic",
  bold = "bold",
  underline = "underline",
  inverse = "inverse",
  undercurl = "undercurl",
  invert_signs = "",
  invert_selection = "inverse",
  invert_tabline = "",
  italic_comments = "italic",
  italic_booleans = "NONE",
  italic_strings = "NONE",
}

-- setting default values
for k, val in pairs(settings) do
  local key = "apprentice_" .. k
  if vim.g[key] == nil then
    vim.g[key] = val
  end
end

-- styles check
if not utils.tobool(vim.g.apprentice_bold) then
  styles.bold = "NONE"
end

if not utils.tobool(vim.g.apprentice_underline) then
  styles.underline = "NONE"
end

if not utils.tobool(vim.g.apprentice_italic) then
  styles.italic = "NONE"
end

if not utils.tobool(vim.g.apprentice_inverse) then
  styles.inverse = "NONE"
end

if not utils.tobool(vim.g.apprentice_inverse) then
  styles.inverse = "NONE"
end

if not utils.tobool(vim.g.apprentice_undercurl) then
  styles.undercurl = "NONE"
end

if utils.tobool(vim.g.apprentice_invert_signs) then
  styles.invert_signs = "inverse"
end

if not utils.tobool(vim.g.apprentice_invert_selection) then
  styles.invert_selection = "NONE"
end

if utils.tobool(vim.g.apprentice_invert_tabline) then
  styles.invert_tabline = "inverse"
end

if not utils.tobool(vim.g.apprentice_italicize_comments) then
  styles.italic_comments = "NONE"
end

if utils.tobool(vim.g.apprentice_italicize_booleans) then
  styles.italic_booleans = "italic"
end

if utils.tobool(vim.g.apprentice_italicize_strings) then
  styles.italic_strings = "italic"
end

return {settings = settings, styles = styles}
