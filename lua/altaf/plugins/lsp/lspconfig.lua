local status, lspconfig = pcall(require, 'lspconfig')
if not status then return end

local status2, cmp_lsp = pcall(require, 'cmp_nvim_lsp')
if not status2 then return end

local status3, ts = pcall(require, 'typescript')
if not status3 then return end

local keymap = vim.keymap

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) 
  keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) 
  keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) 
  keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) 
  keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) 
  keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) 
  keymap.set("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) 
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) 
  keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) 
  keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
  keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) 
  keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)

  if client.name == "tsserver" then
    keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>") 
    keymap.set("n", "<leader>oi", ":TypescriptOrganizeImports<CR>") 
    keymap.set("n", "<leader>ru", ":TypescriptRemoveUnused<CR>") 
  end
end

local capabilities = cmp_lsp.default_capabilities()

lspconfig['html'].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

ts.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
  },
})

lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["tailwindcss"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig['tsserver'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = {
    'typescriptreact', 'typescript', 'javascript', 'javascriptreact', 'tsx', 'jsx', 'js', 'ts'
  }
})

lspconfig["lua_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = { -- custom settings for lua
    Lua = {
      -- make the language server recognize "vim" global
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        -- make language server aware of runtime files
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
})
