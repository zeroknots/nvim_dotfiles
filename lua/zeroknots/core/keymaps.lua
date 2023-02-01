-- set leader key
vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>") -- no highlight


keymap.set("n", "x", '"_x')

-- splits
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>|", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>-", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- move lines
keymap.set("x", "J", ":m '>+1<CR>gv=gv")
keymap.set("x", "K", ":m '<-2<CR>gv=gv")

-- vertical movements
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-b>", "<C-u>zz")
keymap.set("i", "<C-d>", "<C-d>zz")
keymap.set("i", "<C-b>", "<C-u>zz")

-- surround word with quotes
keymap.set("n", "ys'", "ysiw'")
keymap.set("n", 'ys"', 'ysiw"')
keymap.set("n", "ys{", "ysiw{")
keymap.set("n", "ys(", "ysiw(")
keymap.set("n", "ys<", "ysiw<")
keymap.set("n", "<leader>ys", "ysiw")


-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":BufferLineCycleNext<CR>")
keymap.set("n", "<leader>tp", ":BufferLineCyclePrev<CR>")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


-- nvim-tree
keymap.set("n", "<leader>fs", ":NvimTreeToggle<CR>")


-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary


-- harpoon
keymap.set("n", "<leader>ha", ':lua require("harpoon.mark").add_file()<CR>') -- add file to harpoon
keymap.set("n", "<leader>b", ':lua require("harpoon.mark").add_file()<CR>') -- add file to harpoon
keymap.set("n", "<leader>hh", ':Telescope harpoon marks<CR>') -- show harpoon menu

-- git worktrree
keymap.set("n", "<leader>gwc", ":lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")
keymap.set("n", "<leader>gw", ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")

-- code snippets
keymap.set("i", "<leader>snip", ":Telescope luasnip<CR>")

-- Hop
keymap.set("n", "<leader>ss", ':HopWord<CR>') -- hop to word

-- move back to last position
keymap.set("n", "<leader>;", ":lua require('j.plugins.telescope').last_buffer_fuzzy_find()<CR>")

-- execute eslint
keymap.set("n", "<leader>es", ":lua require('j.plugins.telescope').eslint()<CR>")
