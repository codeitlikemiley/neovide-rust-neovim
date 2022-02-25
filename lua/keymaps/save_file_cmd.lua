local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")
local inoremap = require("utils/inoremap")

nnoremap("<D-s>", ":update<CR>")
vnoremap("<D-s>", "<C-C>:update<CR>")
inoremap("<D-s>", "<C-O>:update<CR>")

nnoremap("<C-S>", ":update<CR>")
vnoremap("<C-S>", "<C-C>:update<CR>")
inoremap("<C-S>", "<C-O>:update<CR>")