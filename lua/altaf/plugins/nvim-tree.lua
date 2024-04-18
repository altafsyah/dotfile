local status, nvimtree = pcall(require, 'nvim-tree')
if not status then return end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  sort = {sorter = 'case_sensitive'},
  view = {width = 30},
  filters = { dotfiles = true}
})
