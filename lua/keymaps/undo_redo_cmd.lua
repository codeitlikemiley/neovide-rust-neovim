local nnoremap = require("utils/nnoremap")

if vim.fn.exists('neovide') == 1 then
nnoremap("<D-z>", [[u]])
nnoremap("<D-y>", [[<C-r>]])
end

nnoremap("<C-z>", [[u]])
nnoremap("<C-y>", [[<C-r>]])