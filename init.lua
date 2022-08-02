require "abra.options"
require "abra.keymaps"
require "abra.plugins"
require "abra.cmp"
require "abra.lsp.init"

vim.cmd "source $HOME/.config/nvim/themes/airline.vim"
vim.o.guifont = "JetBrainsMono Nerd Font:5"

local colors = require("catppuccin.palettes").get_palette()
colors.none = "NONE"
require("catppuccin").setup {
	custom_highlights = {
		Comment = { fg = colors.overlay1 },
		LineNr = { fg = colors.overlay1 },
		CursorLine = { bg = colors.none },
		CursorLineNr = { fg = colors.lavender },
		DiagnosticVirtualTextError = { bg = colors.none },
		DiagnosticVirtualTextWarn = { bg = colors.none },
		DiagnosticVirtualTextInfo = { bg = colors.none },
		DiagnosticVirtualTextHint = { bg = colors.none },
	}
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
      lualine_a = {'buffers'},
      lualine_b = {'branch'},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {'tabs'}
  },
  extensions = {}
}



require "abra.colorscheme"
