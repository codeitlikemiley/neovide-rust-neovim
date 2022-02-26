local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")
local inoremap = require("utils/inoremap")

vim.g.mapleader = " "

-- Disable Ctrl +Z
nnoremap("<C-z>", [[<nop>]])
nnoremap("S", [[:%s//g<Left><Left>]])

nnoremap(",<leader>", [[:set hlsearch!<CR>]])

-- Disable Q
nnoremap([[<silent> Q]], [[nop]])

-- Better tabbing
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Map Ctrl-W to delete the previous word in insert mode.
inoremap("<C-w>", "<C-\\><C-o>dB")

-- Esc and Clear Highligh
nnoremap("<esc>", ":noh<return><esc>")

-- Yank Whole Line
nnoremap("Y", "y$<CR>")