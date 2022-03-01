if vim.fn.exists('neovide') == 1 then
    require('nvim_comment').setup({
        line_mapping = "gc",
        operator_mapping = "<D-/>"
    })
else
    require('nvim_comment').setup()
end
