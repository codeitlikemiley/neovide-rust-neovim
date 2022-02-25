local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local sources = {
    formatting.prettier,
    formatting.rustfmt,
    formatting.rustywind,
    formatting.stylua
}

null_ls.setup({ sources = sources })