if vim.fn.exists('neovide') == 1 then
    require('nvim_comment').setup({
        line_mapping = "<D-c>",
        operator_mapping = "<D-/>"
    })
else
    require('nvim_comment').setup()
end
