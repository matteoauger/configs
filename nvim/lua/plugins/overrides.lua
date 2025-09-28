-- Here goes the default plugins overrides
return {
  --{
  -- Opening neotree in the current window
  --"nvim-neo-tree/neo-tree.nvim",
  --opts = {
  --  window = { position = "current" },
  --},
  --},
  {
    "seblyng/roslyn.nvim",
    ---@module 'roslyn.config'
    ---type RoslynNvimConfig
    opts = {},
  },
  {
    "mason-org/mason.nvim",

    dependencies = {
      "mason-org/mason-lspconfig.nvim",
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

  -- Snacks explorer
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        -- your explorer configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
      picker = {
        sources = {
          explorer = {
            layout = { preset = "default", preview = true },
            auto_close = true,
          },
        },
      },
    },
  },
}
