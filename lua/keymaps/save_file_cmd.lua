local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")
local inoremap = require("utils/inoremap")

if vim.fn.exists('neovide') == 1 then
nnoremap("<D-s>", ":update<CR>")
vnoremap("<D-s>", "<C-C>:update<CR>")
inoremap("<D-s>", "<C-O>:update<CR>")
end
nnoremap("<C-s>", ":update<CR>")
vnoremap("<C-s>", "<C-C>:update<CR>")
inoremap("<C-s>", "<C-O>:update<CR>")