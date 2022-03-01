local nnoremap = require("utils/nnoremap")

-- Binding Same as VSCODE when using Neovide
if vim.fn.exists('neovide') == 1 then
nnoremap("<D-b>", ":NvimTreeToggle<CR>")
end

nnoremap("<C-b>", ":NvimTreeToggle<CR>")
