return {
  {
    "williamboman/mason.nvim",

    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },

    config = function()
      require("mason").setup({
        registries = {
          "github:mason-org/mason-registry",
          "github:Crashdummyy/mason-registry",
        },
        ensure_installed = {
          "roslyn",
          "csharpier",
          "netcorebg",
        },
      })
    end,
  },
}
