-- Koppi Theme for Neovim
  hl("GitSignsChange", { fg = c.warning })
  hl("GitSignsDelete", { fg = c.bred })

  -- Treesitter common captures
  hl("@comment",             { link = "Comment" })
  hl("@string",              { link = "String" })
  hl("@number",              { link = "Number" })
  hl("@boolean",             { link = "Boolean" })
  hl("@function",            { link = "Function" })
  hl("@function.builtin",    { fg = c.fgMuted })
  hl("@function.macro",      { fg = c.accbrt })
  hl("@keyword",             { link = "Keyword" })
  hl("@keyword.return",      { fg = c.bwhite, bold = true })
  hl("@type",                { link = "Type" })
  hl("@type.builtin",        { fg = c.accent })
  hl("@variable",            { fg = c.fg })
  hl("@variable.builtin",    { fg = c.accent })
  hl("@variable.parameter",  { fg = c.fg })
  hl("@property",            { fg = c.fg })
  hl("@punctuation",         { fg = c.fgSubtle })
  hl("@punctuation.bracket", { fg = c.fgSubtle })
  hl("@punctuation.delimiter", { fg = c.fgSubtle })
  hl("@constructor",         { fg = c.accbrt })
  hl("@constant",            { link = "Constant" })
  hl("@constant.builtin",    { fg = c.accbrt, bold = true })

  -- Terminal colors
  vim.g.terminal_color_0  = c.bg
  vim.g.terminal_color_1  = c.red
  vim.g.terminal_color_2  = c.green
  vim.g.terminal_color_3  = c.accent
  vim.g.terminal_color_4  = c.bg4
  vim.g.terminal_color_5  = c.bg3
  vim.g.terminal_color_6  = c.fgMuted
  vim.g.terminal_color_7  = c.fg
  vim.g.terminal_color_8  = c.bg3
  vim.g.terminal_color_9  = c.bred
  vim.g.terminal_color_10 = c.bgreen
  vim.g.terminal_color_11 = c.accbrt
  vim.g.terminal_color_12 = c.fgMuted
  vim.g.terminal_color_13 = c.fg2
  vim.g.terminal_color_14 = c.bcyan
  vim.g.terminal_color_15 = c.bwhite
end

M.setup()

return M