local lush = require("lush")
local colors = require("apprentice.colors")
local styles = require("apprentice.settings").styles
local utils = require("apprentice.utils")

-- options (dark mode by default)
local bg0 = colors.dark0
local bg1 = colors.dark1
local bg2 = colors.dark2
local bg3 = colors.dark3
local bg4 = colors.dark4

local fg0 = colors.light0
local fg1 = colors.light1
local fg2 = colors.light2
local fg3 = colors.light3
local fg4 = colors.light4

local red = colors.bright_red
local green = colors.bright_green
local yellow = colors.bright_yellow
local blue = colors.bright_blue
local purple = colors.bright_purple
local aqua = colors.bright_aqua
local orange = colors.bright_orange
local gray = colors.gray

local bg = vim.o.background
if bg == nil then
  bg = "dark"
  vim.o.background = bg
end

-- swap colors if light mode
if bg == "light" then
  bg0 = colors.light0
  bg1 = colors.light1
  bg2 = colors.light2
  bg3 = colors.light3
  bg4 = colors.light4
  fg0 = colors.dark0
  fg1 = colors.dark1
  fg2 = colors.dark2
  fg3 = colors.dark3
  fg4 = colors.dark4
  red = colors.faded_red
  green = colors.faded_green
  yellow = colors.faded_yellow
  blue = colors.faded_blue
  purple = colors.faded_purple
  aqua = colors.faded_aqua
  orange = colors.faded_orange
end

-- handle light/dark contrast settings
local contrast = vim.g["apprentice_contrast_" .. bg]
if contrast == "hard" then
  bg0 = colors[bg .. "0_hard"]
elseif contrast == "soft" then
  bg0 = colors[bg .. "0_soft"]
end

-- extending colors table with basic names for easy customization in g:apprentice_* options
colors.bg0 = bg0
colors.bg1 = bg1
colors.bg2 = bg2
colors.bg3 = bg3
colors.bg4 = bg4
colors.fg0 = fg0
colors.fg1 = fg1
colors.fg2 = fg2
colors.fg3 = fg3
colors.fg4 = fg4
colors.red = red
colors.green = green
colors.yellow = yellow
colors.blue = blue
colors.purple = purple
colors.aqua = aqua
colors.orange = orange

local hls_cursor = utils.get_color_from_var(vim.g.apprentice_hls_cursor, orange, colors)
local hls_highlight = utils.get_color_from_var(vim.g.apprentice_hls_highlight, bg3,
                                               colors)
local number_column = utils.get_color_from_var(vim.g.apprentice_number_column, nil, colors)
local color_column = utils.get_color_from_var(vim.g.apprentice_color_column, bg1, colors)
local vert_split = utils.get_color_from_var(vim.g.apprentice_vert_split, bg0, colors)
local tabline_sel = utils.get_color_from_var(vim.g.apprentice_tabline_sel, blue, colors)
local sign_column = utils.get_color_from_var(vim.g.apprentice_sign_column, bg1, colors)

local improved_strings_fg = fg1
local improved_strings_bg = bg1
local improved_strings_gui = styles.italic_strings

local special_string_fg = green
local special_string_bg = bg1
local special_string_gui = styles.italic_strings

if not utils.tobool(vim.g.apprentice_improved_strings) then
  improved_strings_fg = green
  improved_strings_bg = nil
  special_string_bg = nil
  special_string_gui = nil
end

local background = nil

if not utils.tobool(vim.g.apprentice_transparent_bg) then
  background  = bg0
end

-- neovim terminal mode colors
vim.g.terminal_color_0 = bg0.hex
vim.g.terminal_color_8 = gray.hex
vim.g.terminal_color_1 = colors.neutral_red.hex
vim.g.terminal_color_9 = red.hex
vim.g.terminal_color_2 = colors.neutral_green.hex
vim.g.terminal_color_10 = green.hex
vim.g.terminal_color_3 = colors.neutral_yellow.hex
vim.g.terminal_color_11 = yellow.hex
vim.g.terminal_color_4 = colors.neutral_blue.hex
vim.g.terminal_color_12 = blue.hex
vim.g.terminal_color_5 = colors.neutral_purple.hex
vim.g.terminal_color_13 = purple.hex
vim.g.terminal_color_6 = colors.neutral_aqua.hex
vim.g.terminal_color_14 = aqua.hex
vim.g.terminal_color_7 = fg4.hex
vim.g.terminal_color_15 = fg1.hex

vim.g.colors_name = "apprentice"

local table_concat = table.concat

local base_group = lush(function()
  return {
    -- Base groups
    ApprenticeFg0 {fg = fg0},
    ApprenticeFg1 {fg = fg1},
    ApprenticeFg2 {fg = fg2},
    ApprenticeFg3 {fg = fg3},
    ApprenticeFg4 {fg = fg4},
    ApprenticeGray {fg = gray},
    ApprenticeBg0 {fg = bg0},
    ApprenticeBg1 {fg = bg1},
    ApprenticeBg2 {fg = bg2},
    ApprenticeBg3 {fg = bg3},
    ApprenticeBg4 {fg = bg4},

		ApprenticeError {fg = colors.error},
		ApprenticeWarning {fg = colors.bright_red},
    ApprenticeRed {fg = red},
    ApprenticeRedBold {fg = red, gui = styles.bold},
    ApprenticeGreen {fg = green},
    ApprenticeGreenBold {fg = green, gui = styles.bold},
    ApprenticeYellow {fg = yellow},
    ApprenticeYellowBold {fg = yellow, gui = styles.bold},
    ApprenticeBlue {fg = blue},
    ApprenticeBlueBold {fg = blue, gui = styles.bold},
    ApprenticePurple {fg = purple},
    ApprenticePurpleBold {fg = purple, gui = styles.bold},
    ApprenticeAqua {fg = aqua},
    ApprenticeAquaBold {fg = aqua, gui = styles.bold},
    ApprenticeOrange {fg = orange},
    ApprenticeOrangeBold {fg = orange, gui = styles.bold},

		ApprenticeErrorSign {fg = colors.error, bg = sign_column, gui = styles.invert_signs},
		ApprenticeWarningSign {fg = colors.bright_red, bg = sign_column, gui = styles.invert_signs},
    ApprenticeRedSign {fg = red, bg = sign_column, gui = styles.invert_signs},
    ApprenticeGreenSign {fg = green, bg = sign_column, gui = styles.invert_signs},
    ApprenticeYellowSign {fg = yellow, bg = sign_column, gui = styles.invert_signs},
    ApprenticeBlueSign {fg = blue, bg = sign_column, gui = styles.invert_signs},
    ApprenticePurpleSign {fg = purple, bg = sign_column, gui = styles.invert_signs},
    ApprenticeAquaSign {fg = aqua, bg = sign_column, gui = styles.invert_signs},
    ApprenticeOrangeSign {fg = orange, bg = sign_column, gui = styles.invert_signs},

    ApprenticeRedUnderline {gui = styles.undercurl, sp = red},
    ApprenticeGreenUnderline {gui = styles.undercurl, sp = green},
    ApprenticeYellowUnderline {gui = styles.undercurl, sp = yellow},
    ApprenticeBlueUnderline {gui = styles.undercurl, sp = blue},
    ApprenticePurpleUnderline {gui = styles.undercurl, sp = purple},
    ApprenticeAquaUnderline {gui = styles.undercurl, sp = aqua},
    ApprenticeOrangeUnderline {gui = styles.undercurl, sp = orange},

    ColorColumn {bg = color_column},
    Conceal {fg = bg4},
    Cursor {gui = styles.inverse},
    lCursor {Cursor},
    iCursor {Cursor},
    vCursor {Cursor},
    CursorIM {Cursor},
    CursorLine {bg = bg1},
    CursorColumn {CursorLine},
    Directory {ApprenticeAquaBold},
    DiffAdd {fg = green, bg = bg0, gui = styles.inverse},
    DiffChange {fg = purple, bg = bg0, gui = styles.inverse},
    DiffDelete {fg = colors.neutral_red, bg = bg0, gui = styles.inverse},
    DiffText {fg = orange, bg = bg0, gui = styles.inverse},
    ErrorMsg {fg = bg0, bg = colors.error, gui = styles.bold},
    VertSplit {fg = bg3, bg = vert_split},
    Folded {fg = bg3, bg = bg1, gui = styles.italic_strings},
    FoldColumn {fg = bg3, bg = bg1},
    SignColumn {bg = sign_column},
    IncSearch {fg = hls_cursor, bg = bg0, gui = styles.inverse},
    LineNr {fg = bg4, bg = number_column},
    CursorLineNr {fg = aqua, bg = bg1},
    MatchParen {bg = yellow, gui = styles.bold},
    --[[ ModeMsg {ApprenticeYellowBold},
    MoreMsg {ApprenticeYellowBold}, ]]
    NonText {ApprenticeBg2},
    Normal {fg = fg1, bg = background},
    Pmenu {fg = fg1, bg = bg2},
    PmenuSel {fg = bg2, bg = colors.neutral_aqua, gui = styles.bold},
    PmenuSbar {bg = bg2},
    PmenuThumb {fg = colors.neutral_aqua, bg = colors.neutral_aqua},
    Question {ApprenticeGreenBold},
    QuickFixLine {fg = bg0, bg = bg3, gui = styles.bold},
    Search {fg = hls_highlight, bg = bg0, gui = styles.inverse},
    SpecialKey {ApprenticeFg4},
    SpellRare {ApprenticeOrangeUnderline},
    SpellBad {ApprenticeRedUnderline},
    StatusLine {fg = bg2, bg = fg1, gui = styles.inverse},
    StatusLineNC {fg = bg1, bg = fg4, gui = styles.inverse},
    TabLineFill {fg = bg4, bg = bg1, gui = styles.invert_tabline},
    TabLine {fg = bg4, bg = bg1, gui = styles.invert_tabline},
    TabLineSel {fg = tabline_sel, bg = bg1, gui = styles.invert_tabline},
    Title {fg = fg0, gui = styles.bold},
    Visual {bg = blue},
    VisualNOS {Visual},
    -- WarningMsg {ApprenticeRedBold},
    WildMenu {fg = blue, bg = bg2, gui = styles.bold},
    Constant {ApprenticeOrange},
    Special {fg = special_string_fg, bg = special_string_bg, gui = special_string_gui},
    String {
      fg = improved_strings_fg,
      bg = improved_strings_bg,
      gui = improved_strings_gui,
    },
    Character {ApprenticeOrange},
    Number {ApprenticeOrange},
    Boolean {ApprenticeOrange},
    Float {ApprenticeOrange},
    Identifier {fg = colors.neutral_blue},
    Function {ApprenticeYellow},
    Statement {ApprenticeBlue},
    Conditional {ApprenticeBlue},
    Repeat {ApprenticeBlue},
    Label {ApprenticeBlue},
    Exception {ApprenticeBlue},
    Keyword {ApprenticeBlue},
    Operator {ApprenticeBlue},
    PreProc {fg = colors.neutral_aqua},
    Include {PreProc},
    Define {PreProc},
    Macro {PreProc},
    PreCondit {PreProc},
    Type {ApprenticePurple},
    StorageClass {Type},
    Structure {Type},
    Typedef {Type},
    SpecialChar {PreProc},
    Tag {PreProc},
    Delimiter {Special},
    Comment {fg = bg2, gui = styles.italic_comments},
    Debug {PreProc},
    Underlined {fg = colors.neutral_aqua, gui = styles.underline},
    Bold {gui = styles.bold},
    Italic {gui = styles.italic},
    Ignore {},
    Error {fg = colors.error, gui = table_concat({styles.bold, styles.underline}, ",")},
    Todo {fg = fg0, gui = table_concat({styles.bold, styles.italic_comments}, ",")},
    diffAdded {ApprenticeGreen},
    diffRemoved {ApprenticeRed},
    diffChanged {ApprenticeAqua},
    diffFile {ApprenticeOrange},
    diffNewFile {ApprenticeYellow},
    diffLine {ApprenticeBlue},
    -- signature
    SignatureMarkText {ApprenticeBlueSign},
    SignatureMarkerText {ApprenticePurpleSign},
    -- gitcommit
    gitcommitSelectedFile {ApprenticeGreen},
    gitcommitDiscardedFile {ApprenticeRed},
    -- checkhealth
    healthError {fg = bg0, bg = colors.error},
    healthSuccess {fg = bg0, bg = green},
    healthWarning {fg = bg0, bg = yellow},
  }
end)

return base_group
