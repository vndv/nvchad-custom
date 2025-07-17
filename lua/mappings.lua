require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- Gitsigns
map("n", "<leader>gj", "<cmd>Gitsigns next_hunk<cr>", { desc = "Next git hunk" })
map("n", "<leader>gk", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Prev git hunk" })
map("n", "<leader>gl", "<cmd>Gitsigns blame_line<cr>", { desc = "Git blame line" })
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Preview git hunk" })
map("n", "<leader>gh", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Reset git hunk" })
map("n", "<leader>gr", "<cmd>Gitsigns reset_buffer<cr>", { desc = "Reset git buffer" })
map("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", { desc = "Stage git hunk" })
map("n", "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>", { desc = "Unstage git hunk" })
map("n", "<leader>gd", "<cmd>Gitsigns diffthis<cr>", { desc = "Git diff" })

-- Docker commands
-- map("n", "<leader>db", "<cmd>!docker build -t %:t:r .<cr>", { desc = "Docker build" })
-- map("n", "<leader>dr", "<cmd>!docker run %:t:r<cr>", { desc = "Docker run" })
-- map("n", "<leader>dp", "<cmd>!docker ps<cr>", { desc = "Docker ps" })
-- map("n", "<leader>di", "<cmd>!docker images<cr>", { desc = "Docker images" })

-- Kubernetes commands
-- map("n", "<leader>kp", "<cmd>!kubectl get pods<cr>", { desc = "Get pods" })
-- map("n", "<leader>ks", "<cmd>!kubectl get services<cr>", { desc = "Get services" })
-- map("n", "<leader>kd", "<cmd>!kubectl get deployments<cr>", { desc = "Get deployments" })
-- map("n", "<leader>ka", "<cmd>!kubectl apply -f %<cr>", { desc = "Apply current file" })
-- map("n", "<leader>kx", "<cmd>!kubectl delete -f %<cr>", { desc = "Delete current file" })

-- Terraform commands
-- map("n", "<leader>ti", "<cmd>!terraform init<cr>", { desc = "Terraform init" })
-- map("n", "<leader>tp", "<cmd>!terraform plan<cr>", { desc = "Terraform plan" })
-- map("n", "<leader>ta", "<cmd>!terraform apply<cr>", { desc = "Terraform apply" })
-- map("n", "<leader>td", "<cmd>!terraform destroy<cr>", { desc = "Terraform destroy" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
