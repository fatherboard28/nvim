local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Lua stuff
  use 'nvim-lua/plenary.nvim'

  --Code formatter
  use 'sbdchd/neoformat'

  --Hightlighting ?
  use 'wlangstroth/vim-racket'

  --Tags for files
  use 'universal-ctags/ctags'
  use 'preservim/tagbar'

  --bracket coloring
  use 'luochen1990/rainbow'

  --syntax checker
  --use 'dense-analysis/ale'

  -- Change what surrounds stuff
  use 'tpope/vim-surround'

  -- allows you to align code
  use 'tommcdo/vim-lion'

  -- More syntax Hightlighting
  use 'Shirk/vim-gas'

  -- Popup windows
  use 'nvim-lua/popup.nvim'

  --better commenting commands
  use 'numToStr/Comment.nvim'

  --color theme
  use 'ellisonleao/gruvbox.nvim'

  -- commnands for wrapping text in stuff
  use 'windwp/nvim-autopairs'


  --File viewer
  use "kyazdani42/nvim-tree.lua"

  -- Better file closser (uses buffers)
  --use "moll/vim-bbye"

  --Required for following plugins
  use "kyazdani42/nvim-web-devicons"
  --Status Bar at bottom of screen
  use "nvim-lualine/lualine.nvim"
  --Greeter
  use "goolord/alpha-nvim"
  --Buffer line
  use "akinsho/bufferline.nvim"

  --Terminal
  use "akinsho/toggleterm.nvim"

  -- Project manager
  use "ahmedkhalf/project.nvim"

  -- flaoterm
  use 'voldikss/vim-floaterm'

  --cmp
  use  "hrsh7th/nvim-cmp" -- The completion plugin
  use  "hrsh7th/cmp-buffer" -- buffer completions
  use  "hrsh7th/cmp-path" -- path completions
  use  "saadparwaiz1/cmp_luasnip" -- snippet completions
  use  "hrsh7th/cmp-nvim-lsp"
  use  "hrsh7th/cmp-nvim-lua"

  -- snippets
  use  "L3MON4D3/LuaSnip" --snippet engine
  use  "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  --lsp
  use  "neovim/nvim-lspconfig" -- enable LSP
  use  "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use  "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use  "RRethy/vim-illuminate"

  -- Telescope
  use  "nvim-telescope/telescope.nvim"

  -- Treesitter
  --use "nvim-treesitter/nvim-treesitter"

  -- Git
  use  "lewis6991/gitsigns.nvim"

  -- DELEATED --
  --[[ DAP
  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"
  use "ravenxrz/DAPInstall.nvim"--]]

  --use 'itchyny/lightline.vim'
  --use 'vim-airline/vim-airline'


  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
















