local nnoremap = require("utils/nnoremap")

nnoremap([[<leader>ff]], [[<cmd>lua require('telescope.builtin').find_files()<cr>]])
nnoremap([[<leader>fg]], [[<cmd>lua require('telescope.builtin').live_grep()<cr>]])
nnoremap([[<leader>fb]], [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
nnoremap([[<leader>fh]], [[<cmd>lua require('telescope.builtin').help_tags()<cr>]])

if vim.fn.exists('neovide') == 1 then
    nnoremap([[<D-f>]], [[<cmd>lua require('telescope.builtin').find_files()<cr>]])
    -- nnoremap([[]], [[<cmd>lua require('telescope.builtin').live_grep()<cr>]])
    nnoremap([[<D-g>]], [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
    -- nnoremap([[]], [[<cmd>lua require('telescope.builtin').help_tags()<cr>]])

    nnoremap("<D-a>", ":Telescope lsp_code_actions<CR>", true)
    nnoremap("<D-p>", ":Telescope jumplist<CR>", true)
    nnoremap("<D-m>", ":Telescope marks<CR>", true)
    -- nnoremap("", ":Telescope current_buffer_fuzzy_find<CR>", true)
    nnoremap("<D-i>", ":Telescope lsp_implementations<CR>", true)
    -- nnoremap("<D-e>", ":Telescope lsp_type_definitions<CR>", true)
    nnoremap([[<D-e>]], [[<cmd>lua require('telescope.builtin').oldfiles()<cr>]])
    nnoremap("<D-t>", ":Telescope lsp_dynamic_workspace_symbols<CR>", true)
    nnoremap("<D-u>", ":Telescope lsp_references<CR>", true)
    nnoremap("<D-o>", ":Telescope lsp_document_symbols<CR>", true)
end