-- Koppi Theme for Neovim
-- A warm, muted, low-to-medium contrast dark colorscheme.

local M = {}

local c = {
  bg       = "#2e2e2e",
  bg1      = "#383838",
  bg2      = "#434343",
  bg3      = "#535353",
  bg4      = "#646464",

  bgLine   = "#353535",
  bgIndent = "#3a3a3a",
  bgDim    = "#404040",
  bgSelect = "#4e4e4e",

  fg       = "#e8e8e8",
  fg2      = "#787878",
  fgMuted  = "#909090",
  fgSubtle = "#707070",
  fgHint   = "#606060",

  accent   = "#d4b048",
  accdim   = "#8a7020",
  accbrt   = "#e8c858",
  acchigh  = "#f0d060",

  red      = "#b54a4a",
  bred     = "#c45a5a",
  green    = "#5a8f6a",
  bgreen   = "#6aa07a",
  warning  = "#c4924a",

  bcyan    = "#a8a8a8",
  bwhite   = "#f5f5f5",
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
  hl("Normal",       { fg = c.fg, bg = c.bg })
  hl("NormalNC",     { fg = c.fg, bg = c.bg })
  hl("NormalFloat",  { fg = c.fg, bg = c.bg1 })
  hl("FloatBorder",  { fg = c.bg3, bg = c.bg1 })
  hl("FloatTitle",   { fg = c.accent, bg = c.bg1, bold = true })
return M