vim.cmd[[
    autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)
]]