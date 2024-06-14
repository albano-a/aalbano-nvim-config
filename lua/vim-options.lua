vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.opt.nu=true
vim.opt.relativenumber=true
vim.g.mapleader = " "

vim.opt.wrap = false

-- REMAPS
-- Save command
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")

-- In visual mode, moves the line (equivalent to alt-shift)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- Keeps the cursor in place when joining lines
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Centers the screen after scrolling down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Center the screen after scrolling up
vim.keymap.set("n", "n", "nzzzv") -- Center the screen on the next search match
vim.keymap.set("n", "N", "Nzzzv") -- Center the screen on the previous search match

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]]) -- Pastes over selected text without affecting the unnamed register.

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- Copies text to the system clipboard in normal and visual modes.
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Copies the entire line to the system clipboard in normal mode.

-- Remap Ctrl+v to paste from the clipboard in normal mode
vim.keymap.set("n", "<C-v>", '"+p', { noremap = true , silent = true })

-- Deletes text without affecting the unnamed register in normal and visual modes.
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) 

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")


vim.keymap.set("n", "Q", "<nop>")

-- Jumps to item in the quickfix and location list and centers the screen
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Substitutes the word under the cursor across the entire file, with the cursor positioned for further editing.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Reloads the current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Bind the function to a key mapping (optional)
vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>!python % <CR>', { noremap = true, silent = true })
