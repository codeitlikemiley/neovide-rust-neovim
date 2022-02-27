local nnoremap = require("utils/nnoremap")

if vim.fn.exists('neovide') == 1 then
nnoremap("<D-q>", '<cmd>lua require("utils/smartquit")()<CR>', true)
else
nnoremap("qq", '<cmd>lua require("utils/smartquit")()<CR>', true)
end