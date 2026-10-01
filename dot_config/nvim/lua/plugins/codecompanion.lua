return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    adapters = {
      http = {
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            schema = {
              model = {
                default = "qwen3.6:35b-a3b",
              },
            },
          })
        end,
      },
    },
    interactions = {
      chat = { adapter = "ollama" },
      inline = { adapter = "ollama" },
    },
  },
}
