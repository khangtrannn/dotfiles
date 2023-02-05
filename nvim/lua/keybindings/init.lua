vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

map('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
map('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
map('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
map('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })

map('n', '<leader>a', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

map('v', '<', '<gv', { noremap = true, silent = false })
map('v', '>', '>gv', { noremap = true, silent = false })

map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<cr>", { noremap = true, silent = true })
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<cr>", { noremap = true, silent = true })

map("n", "<C-]>", "<cmd>tabnext<cr>", { noremap = true, silent = true })
map("n", "<C-[>", "<cmd>tabprevious<cr>", { noremap = true, silent = true })

-- clear search highlights
map("n", "<leader>nh", ":nohl<CR>", { noremap = true, silent = true })

-- delete single character without copying into register
map("n", "x", '"_x', { noremap = true, silent = true })

-- setup key mappings for splitting window
map("n", "<leader>sv", "<C-w>v", { noremap = true, silent = true }) -- split window vertically
map("n", "<leader>sh", "<C-w>s", { noremap = true, silent = true }) -- split window horizontally
map("n", "<leader>se", "<C-w>=", { noremap = true, silent = true }) -- make split windows equal width & height
map("n", "<leader>sx", ":close<CR>", { noremap = true, silent = true }) -- close current split window

-- TODO: remove unused key mappings
map("n", "<leader>to", ":tabnew<CR>", { noremap = true, silent = true }) -- open new tab
map("n", "<leader>tx", ":tabclose<CR>", { noremap = true, silent = true }) -- close current tab
map("n", "<leader>tn", ":tabn<CR>", { noremap = true, silent = true }) --  go to next tab
map("n", "<leader>tp", ":tabp<CR>", { noremap = true, silent = true }) --  go to previous tab


----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
map("n", "<leader>sm", ":MaximizerToggle<CR>", { noremap = true, silent = true }) -- toggle split window maximization
