
local status, cat = pcall(require, 'catppuccin')
if not status then return end

cat.setup({
  transparent_background = true,
})

vim.cmd.colorscheme('catppuccin')
