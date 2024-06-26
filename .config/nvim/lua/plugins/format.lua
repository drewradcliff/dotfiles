return {
  {
    "lukas-reineke/format.nvim",
    config = function()
      local on_attach = require("lsp-format").on_attach
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      require("lsp-format").setup({})

      lspconfig.gleam.setup({ on_attach = on_attach, capabilities = capabilities })
    end,
  },
}
