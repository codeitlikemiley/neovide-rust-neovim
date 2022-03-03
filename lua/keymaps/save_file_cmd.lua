local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")
local inoremap = require("utils/inoremap")

if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
    nnoremap("<D-s>", ":update<CR>")
    vnoremap("<D-s>", "<C-C>:update<CR>")
    inoremap("<D-s>", "<C-O>:update<CR>")
else
    nnoremap("<C-s>", ":update<CR>")
    vnoremap("<C-s>", "<C-C>:update<CR>")
    inoremap("<C-s>", "<C-O>:update<CR>")
end
