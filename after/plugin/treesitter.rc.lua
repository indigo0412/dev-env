local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

treesitter.setup {
  ensure_installed = {
    'tsx',
    'json',
    'lua',
    'css',
    'go',
  },

  highlight = {
    enable = true,
    disable = {},
  },

  indent = {
    enable = true,
    disable = {},
  },

  autotag = {
    enable = true,
  },
}

