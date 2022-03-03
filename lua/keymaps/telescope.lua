local nnoremap = require("utils/nnoremap")

nnoremap([[<leader>ff]], [[<cmd>lua require('telescope.builtin').find_files()<cr>]])
nnoremap([[<leader>fg]], [[<cmd>lua require('telescope.builtin').live_grep()<cr>]])
nnoremap([[<leader>fb]], [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
nnoremap([[<leader>fh]], [[<cmd>lua require('telescope.builtin').help_tags()<cr>]])

if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
    nnoremap([[<D-f>]], [[<cmd>Telescope current_buffer_fuzzy_find<CR>]])
    -- nnoremap([[]], [[<cmd>lua require('telescope.builtin').live_grep()<cr>]])
    nnoremap([[<D-g>]], [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
    -- nnoremap([[]], [[<cmd>lua require('telescope.builtin').help_tags()<cr>]])
    nnoremap("<D-p>", [[:lua require("utils/telescope-config").project_files()<CR>]], true)
    nnoremap("<D-a>", ":Telescope lsp_code_actions<CR>", true)
    nnoremap("<D-m>", ":Telescope marks<CR>", true)
    nnoremap("<D-i>", ":Telescope lsp_implementations<CR>", true)
    -- nnoremap("<D-e>", ":Telescope lsp_type_definitions<CR>", true)
    nnoremap([[<D-e>]], [[<cmd>lua require('telescope.builtin').oldfiles()<cr>]])
    nnoremap("<D-o>", ":Telescope lsp_dynamic_workspace_symbols<CR>", true)
    nnoremap("<D-u>", ":Telescope lsp_references<CR>", true)
    nnoremap("<D-t>", ":Telescope treesitter<CR>", true)
end

