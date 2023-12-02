-- Set the mapleader to a space
vim.g.mapleader = " "

-- Define a custom keymap for normal mode to execute the Ex command
vim.keymap.set("n", "<leader><leader>", vim.cmd.Ex)

-- Custom keymaps for visual mode to move selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move lines down in normal mode, maintaining cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- Keep the cursor at the same position when scrolling with <C-d> and <C-u>
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep the cursor centered when navigating with 'n' and 'N'
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete and yank operations using the system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Remap <C-c> in insert mode to <Esc>
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable the default behavior of Q (Ex mode) in normal mode
vim.keymap.set("n", "Q", "<nop>")

-- Format the current buffer using LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quickfix list and location list navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Search and replace in the entire buffer, case-insensitive
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Add execute permission to the current file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Execute ':so' to source the current file
vim.keymap.set("n", "<leader>so", function()
    vim.cmd("so")
end)

-- Execute ':w' to write/save the current buffer
vim.keymap.set("n", "<leader>w", function()
    vim.cmd("w")
end)

