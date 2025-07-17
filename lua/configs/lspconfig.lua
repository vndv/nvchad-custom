require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "dockerls", "docker_compose_language_service", "terraform_ls", "yamlls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
