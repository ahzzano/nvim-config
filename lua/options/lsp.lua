require("mason-lspconfig").setup({
    ensure_installed = { "clangd", "jedi_language_server" },
    automatic_installation = true,
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()


require('lspconfig')['clangd'].setup {
  capabilities = capabilities
}
require('lspconfig')['jedi_language_server'].setup {
  capabilities = capabilities
}

require('lspconfig')['pyright'].setup {
    capabilities=capabilities
}

require('lspconfig')['tsserver'].setup {
    capabilities=capabilities
}

require('lspconfig')['html-lsp'].setup {capabilities = capabilities}
