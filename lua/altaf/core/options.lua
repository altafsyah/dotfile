local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

-- tab & indentation
opt.tabstop = 4
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- wrapping
opt.wrap = false
opt.smartcase = true

-- appereance
opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- system
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
