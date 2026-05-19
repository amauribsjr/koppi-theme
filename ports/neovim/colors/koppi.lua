-- Koppi Theme for Neovim
-- A warm, muted, low-to-medium contrast dark colorscheme.

local M = {}

local c = {
  bg = "#2e2e2e",
  bg1 = "#383838",
  bg2 = "#434343",
  bg3 = "#535353",
  bg4 = "#646464",

  bgLine = "#353535",
  bgDim = "#404040",
  bgSelect = "#4e4e4e",

  fg = "#e8e8e8",
  fg2 = "#787878",
  fgMuted = "#909090",
  fgSubtle = "#707070",
  fgHint = "#606060",

  accent = "#d4b048",
  accbrt = "#e8c858",
  acchigh = "#f0d060",

  red = "#b54a4a",
  bred = "#c45a5a",
  green = "#5a8f6a",
  bgreen = "#6aa07a",
  warning = "#c4924a",

  bcyan = "#a8a8a8",
  bwhite = "#f5f5f5",
}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup()
  vim.cmd("highlight clear")

  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "koppi"

  -- Editor UI
  hl("Normal", { fg = c.fg, bg = c.bg })
  hl("NormalNC", { fg = c.fg, bg = c.bg })
  hl("NormalFloat", { fg = c.fg, bg = c.bg1 })
  hl("FloatBorder", { fg = c.bg3, bg = c.bg1 })
  hl("FloatTitle", { fg = c.accent, bg = c.bg1, bold = true })

  hl("Cursor", { fg = c.bg, bg = c.bwhite })
  hl("CursorLine", { bg = c.bg1 })
  hl("CursorColumn", { bg = c.bg1 })
  hl("ColorColumn", { bg = c.bgLine })

  hl("LineNr", { fg = c.bgSelect })
  hl("CursorLineNr", { fg = c.fgMuted, bold = true })
  hl("SignColumn", { fg = c.fgMuted, bg = c.bg })
  hl("FoldColumn", { fg = c.fgHint, bg = c.bg })

  hl("Visual", { bg = c.bgSelect })
  hl("VisualNOS", { bg = c.bg2 })
  hl("Search", { fg = c.bg, bg = c.accent })
  hl("IncSearch", { fg = c.bg, bg = c.acchigh })
  hl("CurSearch", { fg = c.bg, bg = c.acchigh, bold = true })

  hl("Pmenu", { fg = c.fg, bg = c.bg1 })
  hl("PmenuSel", { fg = c.accbrt, bg = c.bg2, bold = true })
  hl("PmenuSbar", { bg = c.bg2 })
  hl("PmenuThumb", { bg = c.bg4 })

  hl("StatusLine", { fg = c.fg, bg = c.bg1 })
  hl("StatusLineNC", { fg = c.bg4, bg = c.bg })
  hl("WinSeparator", { fg = c.bg3, bg = c.bg })
  hl("VertSplit", { fg = c.bg3, bg = c.bg })

  hl("TabLine", { fg = c.fgMuted, bg = c.bg1 })
  hl("TabLineFill", { fg = c.fgMuted, bg = c.bg })
  hl("TabLineSel", { fg = c.bg, bg = c.accent, bold = true })

  hl("Directory", { fg = c.accent })
  hl("Title", { fg = c.bwhite, bold = true })
  hl("Question", { fg = c.accent })
  hl("MoreMsg", { fg = c.accent })
  hl("ModeMsg", { fg = c.fg })
  hl("NonText", { fg = c.bg4 })
  hl("EndOfBuffer", { fg = c.bg })
  hl("Whitespace", { fg = c.bgDim })
  hl("SpecialKey", { fg = c.fgHint })

  -- Diagnostics
  hl("DiagnosticError", { fg = c.bred })
  hl("DiagnosticWarn", { fg = c.warning })
  hl("DiagnosticInfo", { fg = c.fgMuted })
  hl("DiagnosticHint", { fg = c.fg2 })
  hl("DiagnosticOk", { fg = c.bgreen })

  hl("DiagnosticUnderlineError", { undercurl = true, sp = c.bred })
  hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warning })
  hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.fgMuted })
  hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.fg2 })

  -- Syntax
  hl("Comment", { fg = c.fg2, italic = true })
  hl("Constant", { fg = c.accbrt })
  hl("String", { fg = c.accent })
  hl("Character", { fg = c.accent })
  hl("Number", { fg = c.acchigh })
  hl("Boolean", { fg = c.accbrt, bold = true })
  hl("Float", { fg = c.acchigh })

  hl("Identifier", { fg = c.fg })
  hl("Function", { fg = c.bwhite })
  hl("Statement", { fg = c.bwhite, bold = true })
  hl("Conditional", { fg = c.bwhite, bold = true })
  hl("Repeat", { fg = c.bwhite, bold = true })
  hl("Label", { fg = c.accent })
  hl("Operator", { fg = c.fg })
  hl("Keyword", { fg = c.bwhite, bold = true })
  hl("Exception", { fg = c.bwhite, bold = true })

  hl("PreProc", { fg = c.accent })
  hl("Include", { fg = c.bwhite, bold = true })
  hl("Define", { fg = c.accent })
  hl("Macro", { fg = c.accbrt })
  hl("PreCondit", { fg = c.accent })

  hl("Type", { fg = c.accent })
  hl("StorageClass", { fg = c.bwhite, bold = true })
  hl("Structure", { fg = c.accent })
  hl("Typedef", { fg = c.accent })

  hl("Special", { fg = c.accbrt })
  hl("SpecialChar", { fg = c.acchigh })
  hl("Tag", { fg = c.accbrt })
  hl("Delimiter", { fg = c.fgSubtle })
  hl("SpecialComment", { fg = c.fgMuted, italic = true })
  hl("Debug", { fg = c.warning })

  hl("Underlined", { fg = c.fgMuted, underline = true })
  hl("Ignore", { fg = c.bg4 })
  hl("Error", { fg = c.bred })
  hl("Todo", { fg = c.bg, bg = c.accent, bold = true })

  -- Diff
  hl("DiffAdd", { fg = c.bgreen, bg = c.bg })
  hl("DiffChange", { fg = c.warning, bg = c.bg })
  hl("DiffDelete", { fg = c.bred, bg = c.bg })
  hl("DiffText", { fg = c.acchigh, bg = c.bg2 })

  -- Git signs and common plugin groups
  hl("GitSignsAdd", { fg = c.bgreen })
  hl("GitSignsChange", { fg = c.warning })
  hl("GitSignsDelete", { fg = c.bred })

  -- Treesitter common captures
  hl("@comment", { link = "Comment" })
  hl("@string", { link = "String" })
  hl("@number", { link = "Number" })
  hl("@boolean", { link = "Boolean" })
  hl("@function", { link = "Function" })
  hl("@function.builtin", { fg = c.fgMuted })
  hl("@function.macro", { fg = c.accbrt })
  hl("@keyword", { link = "Keyword" })
  hl("@keyword.return", { fg = c.bwhite, bold = true })
  hl("@type", { link = "Type" })
  hl("@type.builtin", { fg = c.accent })
  hl("@variable", { fg = c.fg })
  hl("@variable.builtin", { fg = c.accent })
  hl("@variable.parameter", { fg = c.fg })
  hl("@property", { fg = c.fg })
  hl("@punctuation", { fg = c.fgSubtle })
  hl("@punctuation.bracket", { fg = c.fgSubtle })
  hl("@punctuation.delimiter", { fg = c.fgSubtle })
  hl("@constructor", { fg = c.accbrt })
  hl("@constant", { link = "Constant" })
  hl("@constant.builtin", { fg = c.accbrt, bold = true })

  -- Terminal colors
  vim.g.terminal_color_0 = c.bg
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.accent
  vim.g.terminal_color_4 = c.bg4
  vim.g.terminal_color_5 = c.bg3
  vim.g.terminal_color_6 = c.fgMuted
  vim.g.terminal_color_7 = c.fg
  vim.g.terminal_color_8 = c.bg3
  vim.g.terminal_color_9 = c.bred
  vim.g.terminal_color_10 = c.bgreen
  vim.g.terminal_color_11 = c.accbrt
  vim.g.terminal_color_12 = c.fgMuted
  vim.g.terminal_color_13 = c.fg2
  vim.g.terminal_color_14 = c.bcyan
  vim.g.terminal_color_15 = c.bwhite
end

M.setup()

return M
