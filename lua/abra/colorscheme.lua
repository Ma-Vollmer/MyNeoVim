vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()
local colors = require("catppuccin.palettes").get_palette()
colors.none = "NONE"
require("catppuccin").setup {
    transparent_background = true;
}
vim.cmd [[colorscheme catppuccin]]
--vim.cmd "hi! Normal ctermbg=NONE guibg=NONE"
