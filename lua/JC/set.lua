vim.opt.guicursor = "n-v-c-sm:hor25,i-ci-ve:ver25,r-cr-o:ver25"
vim.opt.cursorline = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true


vim.opt.wrap = false

vim.g.mapleader = " "

vim.opt.guioptions = "cimgIk"

--vim.opt.mouse = "a"

vim.opt.termguicolors = true
vim.opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showtabline = 1                          -- always show tabs
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window

vim.opt.smartcase = true                        -- smart case
vim.opt.showtabline = 0                         -- always show tabs
vim.opt.cmdheight = 1

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
