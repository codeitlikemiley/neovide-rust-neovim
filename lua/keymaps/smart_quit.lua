local nnoremap = require("utils/nnoremap")

if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
nnoremap("<D-q>", '<cmd>lua require("utils/smartquit")()<CR>', true)
end
nnoremap("qq", '<cmd>lua require("utils/smartquit")()<CR>', true)