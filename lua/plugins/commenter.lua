if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
    require('nvim_comment').setup({
        line_mapping = "gc",
        operator_mapping = "<D-/>"
    })
else
    -- default here is gcc and gc
    require('nvim_comment').setup()
end
