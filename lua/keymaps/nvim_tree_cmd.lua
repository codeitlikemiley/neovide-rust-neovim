local nnoremap = require("utils/nnoremap")

-- Binding Same as VSCODE when using Neovide
if vim.fn.exists('neovide') == 1 then
nnoremap("<D-`>", ":NvimTreeToggle<CR>")
end

nnoremap("<C-`>", ":NvimTreeToggle<CR>")
