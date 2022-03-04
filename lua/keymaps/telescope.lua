local nnoremap = require("utils/nnoremap")

if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
    nnoremap([[<D-f>]], [[<cmd>Telescope current_buffer_fuzzy_find<CR>]])
    nnoremap([[<D-g>]], [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
    nnoremap("<D-p>", [[:lua require("utils/telescope-config").project_files()<CR>]], true)
    nnoremap("<D-a>", ":Telescope lsp_code_actions<CR>", true)
    nnoremap("<D-m>", ":Telescope marks<CR>", true)
    nnoremap("<D-i>", ":Telescope lsp_implementations<CR>", true)
    nnoremap([[<D-e>]], [[<cmd>lua require('telescope.builtin').oldfiles()<cr>]])
    nnoremap("<D-o>", ":Telescope lsp_dynamic_workspace_symbols<CR>", true)
    nnoremap("<D-u>", ":Telescope lsp_references<CR>", true)
    nnoremap("<D-t>", ":Telescope treesitter<CR>", true)
else
    nnoremap([[<leader>f]], [[<cmd>Telescope current_buffer_fuzzy_find<CR>]])
    nnoremap([[<leader>g]], [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
    nnoremap("<leader>p", [[:lua require("utils/telescope-config").project_files()<CR>]], true)
    nnoremap("<leader>a", ":Telescope lsp_code_actions<CR>", true)
    nnoremap("<leader>m", ":Telescope marks<CR>", true)
    nnoremap("<leader>i", ":Telescope lsp_implementations<CR>", true)
    nnoremap([[<leader>e]], [[<cmd>lua require('telescope.builtin').oldfiles()<cr>]])
    nnoremap([[<leader>o]], [[:Telescope lsp_dynamic_workspace_symbols<CR>]], true)
    nnoremap([[<leader>u]], [[:Telescope lsp_references<CR>]], true)
    nnoremap([[<leader>s]], [[:Telescope treesitter<CR>]], true)
end

