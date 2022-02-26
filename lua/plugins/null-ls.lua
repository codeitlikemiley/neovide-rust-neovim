local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local sources = {
    formatting.prettier,
    -- null_ls.builtins.formatting.rustfmt.with({
    --     extra_args = function(params)
    --         local Path = require("plenary.path")
    --         local cargo_toml = Path:new(params.root .. "/" .. "Cargo.toml")

    --         if cargo_toml:exists() and cargo_toml:is_file() then
    --             for _, line in ipairs(cargo_toml:readlines()) do
    --                 local edition = line:match([[^edition%s*=%s*%"(%d+)%"]])
    --                 if edition then
    --                     return { "--edition=" .. edition }
    --                 end
    --             end
    --         end
    --         -- default edition when we don't find `Cargo.toml` or the `edition` in it.
    --         return { "--edition=2021" }
    --     end,
    -- }),
    formatting.stylua
}

null_ls.setup({ sources = sources })