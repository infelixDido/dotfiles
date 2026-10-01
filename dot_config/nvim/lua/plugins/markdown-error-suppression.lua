local mdlint_config = vim.fn.expand("~/.config/nvim/markdownlint.jsonc")

return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", mdlint_config, "--" },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        ["markdownlint-cli2"] = {
          args = { "--config", mdlint_config, "--fix", "-" },
        },
      },
    },
  },
}
