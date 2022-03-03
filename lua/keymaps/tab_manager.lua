local nnoremap = require("utils/nnoremap")

nnoremap([[<space>1]],[[1gt<cr>]])
nnoremap([[<space>2]],[[2gt<cr>]])
nnoremap([[<space>3]],[[3gt<cr>]])
nnoremap([[<space>4]],[[4gt<cr>]])
nnoremap([[<space>5]],[[5gt<cr>]])
nnoremap([[<space>6]],[[6gt<cr>]])
nnoremap([[<space>7]],[[7gt<cr>]])
nnoremap([[<space>8]],[[8gt<cr>]])
nnoremap([[<space>9]],[[9gt<cr>]])
nnoremap([[<space>0]],[[10gt<cr>]])
nnoremap([[<space>t]],[[:tabnew<cr>]])
nnoremap([[<space>q]],[[:tabonly<cr>]])


if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
nnoremap([[<D-1>]],[[<Cmd>BufferLineGoToBuffer 1<CR>]])
nnoremap([[<D-2>]],[[<Cmd>BufferLineGoToBuffer 2<CR>]])
nnoremap([[<D-3>]],[[<Cmd>BufferLineGoToBuffer 3<CR>]])
nnoremap([[<D-4>]],[[<Cmd>BufferLineGoToBuffer 4<CR>]])
nnoremap([[<D-5>]],[[<Cmd>BufferLineGoToBuffer 5<CR>]])
nnoremap([[<D-6>]],[[<Cmd>BufferLineGoToBuffer 6<CR>]])
nnoremap([[<D-7>]],[[<Cmd>BufferLineGoToBuffer 7<CR>]])
nnoremap([[<D-8>]],[[<Cmd>BufferLineGoToBuffer 8<CR>]])
nnoremap([[<D-9>]],[[<Cmd>BufferLineGoToBuffer 9<CR>]])
nnoremap([[<D-0>]],[[<Cmd>BufferLineGoToBuffer 10<CR>]])
end
if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1  then
nnoremap([[<D-n>]],[[:tabnew<cr>]])
nnoremap([[<D-w>]],[[:tabclose<cr>]])
end