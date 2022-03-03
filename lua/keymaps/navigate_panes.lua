local nnoremap = require("utils/nnoremap")

-- Quick Way to Navigate Pane on Neovide
if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
    nnoremap("<D-h>", "<C-w>h")
    nnoremap("<D-j>", "<C-w>j")
    nnoremap("<D-k>", "<C-w>k")
    nnoremap("<D-l>", "<C-w>l")
else
    nnoremap("<C-h>", "<C-w>h")
    nnoremap("<C-j>", "<C-w>j")
    nnoremap("<C-k>", "<C-w>k")
    nnoremap("<C-l>", "<C-w>l")
end
