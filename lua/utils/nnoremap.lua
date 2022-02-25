local nnoremap = function(lhs, rhs, silent)
    vim.api.nvim_set_keymap("n", lhs, rhs, {
        noremap = true,
        silent = silent
    })
end

return nnoremap
