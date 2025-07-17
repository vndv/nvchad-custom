local lint = require("lint")

lint.linters_by_ft = {
  python = { "ruff" },
  dockerfile = { "hadolint" },
  terraform = { "tflint" },
  tf = { "tflint" },
  hcl = { "tflint" },
  yaml = { "yamllint" },
}

-- Create autocommand for linting on save
vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
  group = vim.api.nvim_create_augroup("lint", { clear = true }),
  callback = function()
    lint.try_lint()
  end,
})