-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "clangd"}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

-- configuring clangd (C/C++) server
lspconfig.clangd.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  cmd = { "clangd", "--background-index" },  -- Ensure background indexing is enabled
  filetypes = { "c", "cpp", "objc", "objcpp" },  -- Supported file types for clangd
  settings = {
    clangd = {
     -- Custom clangd options (example)
      diagnostics = {
        enable = true,  -- Enable diagnostics
        clangd = true,  -- Use clangd diagnostics
      },
      completion = {
        enable = true,  -- Enable autocompletion
        snippetSupport = true,  -- Enable snippet support
      },
    },
  }
}
