local nnoremap = require("utils/nnoremap")

nnoremap([[<leader>ff]],[[<cmd>lua require('telescope.builtin').find_files()<cr>]])
nnoremap([[<leader>fg]],[[<cmd>lua require('telescope.builtin').live_grep()<cr>]])
nnoremap([[<leader>fb]],[[<cmd>lua require('telescope.builtin').buffers()<cr>]])
nnoremap([[<leader>fh]],[[<cmd>lua require('telescope.builtin').help_tags()<cr>]])

nnoremap([[<D-f>]],[[<cmd>lua require('telescope.builtin').find_files()<cr>]])
nnoremap([[<D-g>]],[[<cmd>lua require('telescope.builtin').live_grep()<cr>]])