


-- Save command
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")

-- Creates a new tab and moves the tab
vim.keymap.set("n", "<leader>t", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<C-z>", "<cmd>tabnext<CR>")


-- This is a test 
vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) Does not work with NvimTree

-- In visual mode, moves the line (equivalent to alt-shift)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- Keeps the cursor in place when joining lines
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Centers the screen after scrolling down
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Center the screen after scrolling up
vim.keymap.set("n", "n", "nzzzv") -- Center the screen on the next search match
vim.keymap.set("n", "N", "Nzzzv") -- Center the screen on the previous search match

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe() -- Starts a Vim collaborative editing session
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe() -- Stops the Vim collaborative editing session
end)

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
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- Formats the current buffer using the LSP (Language Server Protocol).
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Jumps to item in the quickfix and location list and centers the screen
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Substitutes the word under the cursor across the entire file, with the cursor positioned for further editing.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Makes the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Makes a C file executable then runs it
vim.keymap.set("n", "<leader>b", "<cmd>!gcc % -o %< && ./%<CR>", {silent=true})
-- Makes a C++ file executable then runs it
vim.keymap.set("n", "<leader>cc", "<cmd>!g++ % -o %< && ./%<CR>", { silent = true })

-- Inserts a basic error handling block in Go
vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- Opens the Packer configuration file
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");

-- Runs the CellularAutomaton command 'make_it_rain'
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- Reloads the current file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Bind the function to a key mapping (optional)
vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>!python % <CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true})

vim.keymap.set('i', '"', '""<Left>', { noremap = true }) 
vim.keymap.set('i', "'", "''<Left>", { noremap = true }) 
vim.keymap.set('i', '{', '{}<Left>', { noremap = true }) 
vim.keymap.set('i', '[', '[]<Left>', { noremap = true })
vim.keymap.set('i', '(', '()<Left>', { noremap = true })

