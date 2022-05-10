local colorscheme = "gruvbox"


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

vim.cmd "let gruvbox_italic = '1'"
vim.cmd "let gruvbox_bold = '1'"
vim.cmd "let gruvbox_transparent_bg = '1'"
vim.cmd "let gruvbox_contrast_light = 'medium'"
vim.cmd "colorscheme gruvbox"
