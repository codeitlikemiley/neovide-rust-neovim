local nnoremap = require("utils/nnoremap")

if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 then
    nnoremap("<D-z>", [[u]])
    nnoremap("<D-y>", [[<C-r>]])
else
    nnoremap("<C-z>", [[u]])
    nnoremap("<C-y>", [[<C-r>]])
end

