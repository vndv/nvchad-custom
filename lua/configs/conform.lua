local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_organize_imports", "ruff_format" },
    terraform = { "terraform_fmt" },
    tf = { "terraform_fmt" },
    hcl = { "terraform_fmt" },
    yaml = { "prettier" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 3000,
    lsp_fallback = true,
  },

  -- Configure ruff formatters
  formatters = {
    ruff_organize_imports = {
      command = "ruff",
      args = { "check", "--select", "I", "--fix", "-" },
      stdin = true,
    },
    ruff_format = {
      command = "ruff",
      args = { "format", "-" },
      stdin = true,
    },
  },
}

return options
