local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")
local inoremap = require("utils/inoremap")

-- This is MACOS Specific Keybinding OPT+[jk]
-- Disable this if your not using MACOS
nnoremap("∆",[[ :m .+1<CR>==]])
nnoremap ("˚",[[ :m .-2<CR>==]])
inoremap("∆",[[<Esc>:m .+1<CR>==gi]])
inoremap("˚", [[<Esc>:m .-2<CR>==gi]])
vnoremap("∆",[[ :m '>+1<CR>gv=gv]])
vnoremap("˚", [[:m '<-2<CR>gv=gv]])
