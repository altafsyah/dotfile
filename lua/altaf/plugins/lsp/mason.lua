local status, mason = pcall(require, 'mason')
if not status then return end

local status2, mason_lsp = pcall(require, 'mason-lspconfig')
if not status2 then return end

local status3, mason_null_ls = pcall(require, 'mason-null-ls')
if not status3 then return end

mason.setup()

mason_lsp.setup({
  ensure_installed = {
    'arduino_language_server',
    'astro',
    'cssls',
    'dockerls',
    'graphql',
    'html',
    'jsonls',
    'tsserver',
    'lua_ls',
    'intelephense',
    'pylsp',
    'sqlls',
    'tailwindcss',
  }
})


mason_null_ls.setup({
  ensure_installed = {
    'prettier',
    'stylua',
    'eslint_d'
  }
})
