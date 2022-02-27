local nnoremap = require("utils/nnoremap")

-- Resize Panes with + - or with shift + -
nnoremap("__", ":resize -5<CR>")
nnoremap("++", ":resize +5<CR>")
nnoremap("--", ":vertical resize -5<CR>")
nnoremap("==", ":vertical resize +5<CR>")
