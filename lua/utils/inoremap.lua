local inoremap = function(lhs, rhs)
    vim.api.nvim_set_keymap("i", lhs, rhs, {
        noremap = true
    })
end

return inoremap
