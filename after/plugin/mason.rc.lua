local status, mason = pcall(require, 'mason')

if (not status) then return end

mason.setup({
     ui = {
       icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local status2, mason_lspconfig = pcall(require, 'mason-lspconfig')
if (not status2) then return end

mason_lspconfig.setup({
  ensure_installed = { "sumneko_lua", "rust_analyzer", 'tailwindcss' },
  automatic_installation = false,
})

require 'lspconfig'.tailwindcss.setup{}

