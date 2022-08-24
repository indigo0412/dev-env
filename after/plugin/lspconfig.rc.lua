local status, nvim_lsp = pcall(require, 'lspconfing')

if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = functions(client, bufnr)
-- formanting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <bugger> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

  
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes =  { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.sumeko_lua.setup{
  ont_attach = on_attach,
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  settings = {
    Lua = {
      diagnositics = {
        -- Get the language server to recognize the 'vim' global
        globals = { 'vim' }
      },

      workspace = {
        -- Make the server aware of neovim runtime files
        libarary = vim.api.nvim_get_runtime_file("", true)
      }
    }    
  }
}
