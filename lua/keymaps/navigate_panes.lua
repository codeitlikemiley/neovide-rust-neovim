local nnoremap = require("utils/nnoremap")

nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Quick Way to Navigate Pane on Neovide
if vim.fn.exists('neovide') == 1 then
nnoremap("<D-h>", "<C-w>h")
nnoremap("<D-j>", "<C-w>j")
nnoremap("<D-k>", "<C-w>k")
nnoremap("<D-l>", "<C-w>l")
end
