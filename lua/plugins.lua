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
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'neovim/nvim-lspconfig' -- LSP plugin
end)


