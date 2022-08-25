local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer is not install")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'  --nvim package management plugin
  use {
    'svrana/neosolarized.nvim',  -- color scheme plugin
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use {'kyazdani42/nvim-web-devicons' }
  use { 'glepnir/lspsaga.nvim' } -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-lualine/lualine.nvim' -- Statusline
  }
  use 'onsails/lspkind-nvim' -- vscode like pictograms
  use 'hrsh7th/cmp-buffer'    -- nvim-cmp source for buffer words 
  use 'hrsh7th/cmp-nvim-lsp'  -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'     -- Cmpletion 
  use {
    'williamboman/mason.nvim', -- external editor tooling such as LSP servers, DAP(Debug Adaptive Protocol) servers, linters, and formatters
    'williamboman/mason-lspconfig.nvim',  --mason-lspconfig.nvim closes some gaps that exist between mason.nvim and lspconfig
    'neovim/nvim-lspconfig' -- LSP plugin
  }

  use {
    'nvim-treesitter/nvim-treesitter', --treesitter is language parser tool
    run = ':TSUpdate'
  }

  use { 'windwp/nvim-autopairs' }  -- A super powerful autopairs plugin for Neovim that support multiple characters. 
  use { 'windwp/nvim-ts-autotag' }  -- Use treesitter to autoclose and autorename html tag It work with html, tsx, vue, svelte, php, rescript.


  use { 'nvim-lua/plenary.nvim' }    -- Common utilities
  use { 'nvim-telescope/telescope.nvim' }          --  highly extendable fuzzy finder over lists
  use { 'nvim-telescope/telescope-file-browser.nvim' }
  use { 'akinsho/bufferline.nvim'}
  use { 'norcalli/nvim-colorizer.lua'}
end)


