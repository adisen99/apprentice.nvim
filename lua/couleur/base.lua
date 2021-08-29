local lush = require("lush")
local colors = require("couleur.colors")
local styles = require("couleur.settings").styles
local utils = require("couleur.utils")

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
local contrast = vim.g["couleur_contrast_" .. bg]
if contrast == "hard" then
  bg0 = colors[bg .. "0_hard"]
elseif contrast == "soft" then
  bg0 = colors[bg .. "0_soft"]
end

-- extending colors table with basic names for easy customization in g:couleur_* options
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

local hls_cursor = utils.get_color_from_var(vim.g.couleur_hls_cursor, orange, colors)
local hls_highlight = utils.get_color_from_var(vim.g.couleur_hls_highlight, yellow,
                                               colors)
local number_column = utils.get_color_from_var(vim.g.couleur_number_column, nil, colors)
local color_column = utils.get_color_from_var(vim.g.couleur_color_column, bg1, colors)
local vert_split = utils.get_color_from_var(vim.g.couleur_vert_split, bg0, colors)
local tabline_sel = utils.get_color_from_var(vim.g.couleur_tabline_sel, green, colors)
local sign_column = utils.get_color_from_var(vim.g.couleur_sign_column, bg1, colors)

local improved_strings_fg = fg1
local improved_strings_bg = bg1
local improved_strings_gui = styles.italic_strings

local special_string_fg = orange
local special_string_bg = bg1
local special_string_gui = styles.italic_strings

if not utils.tobool(vim.g.couleur_improved_strings) then
  improved_strings_fg = green
  improved_strings_bg = nil
  special_string_bg = nil
  special_string_gui = nil
end

local background = nil

if not utils.tobool(vim.g.couleur_transparent_bg) then
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

vim.g.colors_name = "couleur"

local table_concat = table.concat

local base_group = lush(function()
  return {
    -- Base groups
    CouleurFg0 {fg = fg0},
    CouleurFg1 {fg = fg1},
    CouleurFg2 {fg = fg2},
    CouleurFg3 {fg = fg3},
    CouleurFg4 {fg = fg4},
    CouleurGray {fg = gray},
    CouleurBg0 {fg = bg0},
    CouleurBg1 {fg = bg1},
    CouleurBg2 {fg = bg2},
    CouleurBg3 {fg = bg3},
    CouleurBg4 {fg = bg4},

		CouleurError {fg = colors.error},
		CouleurWarning {fg = colors.neutral_orange},
    CouleurRed {fg = red},
    CouleurRedBold {fg = red, gui = styles.bold},
    CouleurGreen {fg = green},
    CouleurGreenBold {fg = green, gui = styles.bold},
    CouleurYellow {fg = yellow},
    CouleurYellowBold {fg = yellow, gui = styles.bold},
    CouleurBlue {fg = blue},
    CouleurBlueBold {fg = blue, gui = styles.bold},
    CouleurPurple {fg = purple},
    CouleurPurpleBold {fg = purple, gui = styles.bold},
    CouleurAqua {fg = aqua},
    CouleurAquaBold {fg = aqua, gui = styles.bold},
    CouleurOrange {fg = orange},
    CouleurOrangeBold {fg = orange, gui = styles.bold},

		CouleurErrorSign {fg = colors.error, bg = sign_column, gui = styles.invert_signs},
		CouleurWarningSign {fg = colors.neutral_orange, bg = sign_column, gui = styles.invert_signs},
    CouleurRedSign {fg = red, bg = sign_column, gui = styles.invert_signs},
    CouleurGreenSign {fg = green, bg = sign_column, gui = styles.invert_signs},
    CouleurYellowSign {fg = yellow, bg = sign_column, gui = styles.invert_signs},
    CouleurBlueSign {fg = blue, bg = sign_column, gui = styles.invert_signs},
    CouleurPurpleSign {fg = purple, bg = sign_column, gui = styles.invert_signs},
    CouleurAquaSign {fg = aqua, bg = sign_column, gui = styles.invert_signs},
    CouleurOrangeSign {fg = orange, bg = sign_column, gui = styles.invert_signs},

    CouleurRedUnderline {gui = styles.undercurl, sp = red},
    CouleurGreenUnderline {gui = styles.undercurl, sp = green},
    CouleurYellowUnderline {gui = styles.undercurl, sp = yellow},
    CouleurBlueUnderline {gui = styles.undercurl, sp = blue},
    CouleurPurpleUnderline {gui = styles.undercurl, sp = purple},
    CouleurAquaUnderline {gui = styles.undercurl, sp = aqua},
    CouleurOrangeUnderline {gui = styles.undercurl, sp = orange},

    ColorColumn {bg = color_column},
    Conceal {fg = blue},
    Cursor {gui = styles.inverse},
    lCursor {Cursor},
    iCursor {Cursor},
    vCursor {Cursor},
    CursorIM {Cursor},
    CursorLine {bg = bg1},
    CursorColumn {CursorLine},
    Directory {CouleurBlueBold},
    DiffAdd {fg = green, bg = bg0, gui = styles.inverse},
    DiffChange {fg = aqua, bg = bg0, gui = styles.inverse},
    DiffDelete {fg = colors.neutral_red, bg = bg0, gui = styles.inverse},
    DiffText {fg = yellow, bg = bg0, gui = styles.inverse},
    -- ErrorMsg {fg = bg0, bg = colors.error, gui = styles.bold},
    VertSplit {fg = bg3, bg = vert_split},
    Folded {fg = gray, bg = bg1, gui = styles.italic_strings},
    FoldColumn {fg = gray, bg = bg1},
    SignColumn {bg = sign_column},
    IncSearch {fg = hls_cursor, bg = bg0, gui = styles.inverse},
    LineNr {fg = bg4, bg = number_column},
    CursorLineNr {fg = yellow, bg = bg1},
    MatchParen {bg = bg3, gui = styles.bold},
    --[[ ModeMsg {CouleurYellowBold},
    MoreMsg {CouleurYellowBold}, ]]
    NonText {CouleurBg2},
    Normal {fg = fg1, bg = background},
    Pmenu {fg = fg1, bg = bg2},
    PmenuSel {fg = bg2, bg = blue, gui = styles.bold},
    PmenuSbar {bg = bg2},
    PmenuThumb {bg = bg4},
    Question {CouleurOrangeBold},
    QuickFixLine {fg = bg0, bg = yellow, gui = styles.bold},
    Search {fg = hls_highlight, bg = bg0, gui = styles.inverse},
    SpecialKey {CouleurFg4},
    SpellRare {CouleurPurpleUnderline},
    SpellBad {CouleurRedUnderline},
    StatusLine {fg = bg2, bg = fg1, gui = styles.inverse},
    StatusLineNC {fg = bg1, bg = fg4, gui = styles.inverse},
    TabLineFill {fg = bg4, bg = bg1, gui = styles.invert_tabline},
    TabLine {fg = bg4, bg = bg1, gui = styles.invert_tabline},
    TabLineSel {fg = tabline_sel, bg = bg1, gui = styles.invert_tabline},
    Title {CouleurGreenBold},
    Visual {bg = bg3},
    VisualNOS {Visual},
    -- WarningMsg {CouleurRedBold},
    WildMenu {fg = blue, bg = bg2, gui = styles.bold},
    Constant {CouleurBlue},
    Special {fg = special_string_fg, bg = special_string_bg, gui = special_string_gui},
    String {
      fg = improved_strings_fg,
      bg = improved_strings_bg,
      gui = improved_strings_gui,
    },
    Character {CouleurBlue},
    Number {CouleurBlue},
    Boolean {CouleurBlue},
    Float {CouleurBlue},
    Identifier {CouleurPurple},
    Function {CouleurBlue},
    Statement {CouleurRed},
    Conditional {CouleurRed},
    Repeat {CouleurRed},
    Label {CouleurGreen},
    Exception {CouleurRed},
    Keyword {CouleurRed},
    Operator {CouleurFg1},
    PreProc {CouleurRed},
    Include {CouleurRed},
    Define {CouleurRed},
    Macro {CouleurRed},
    PreCondit {CouleurRed},
    Type {CouleurAqua},
    StorageClass {CouleurGreen},
    Structure {CouleurRed},
    Typedef {CouleurAqua},
    SpecialChar {CouleurBlue},
    Tag {CouleurAquaBold},
    Delimiter {Special},
    Comment {fg = gray, gui = styles.italic_comments},
    Debug {CouleurRed},
    Underlined {fg = blue, gui = styles.underline},
    Bold {gui = styles.bold},
    Italic {gui = styles.italic},
    Ignore {},
    Error {fg = colors.error, gui = table_concat({styles.bold, styles.underline}, ",")},
    Todo {fg = fg0, gui = table_concat({styles.bold, styles.italic_comments}, ",")},
    diffAdded {CouleurGreen},
    diffRemoved {CouleurRed},
    diffChanged {CouleurAqua},
    diffFile {CouleurOrange},
    diffNewFile {CouleurYellow},
    diffLine {CouleurBlue},
    -- signature
    SignatureMarkText {CouleurBlueSign},
    SignatureMarkerText {CouleurPurpleSign},
    -- gitcommit
    gitcommitSelectedFile {CouleurGreen},
    gitcommitDiscardedFile {CouleurRed},
    -- checkhealth
    healthError {fg = bg0, bg = colors.error},
    healthSuccess {fg = bg0, bg = green},
    healthWarning {fg = bg0, bg = yellow},
  }
end)

return base_group
