-- Update this path
-- We shoul update this when vscode plugin updated!
local extension_path = vim.env.HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.7.0/'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb.dylib'

local custom_attach = require("keymaps/rust_tools")

local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        runnables = {
            -- whether to use telescope for selection menu or not
            use_telescope = true
        },
        debuggables = {
            use_telescope = true
        },
        executor = require("rust-tools/executors").termopen,
        inlay_hints = {
            only_current_line = false,
            only_current_line_autocmd = "CursorHold",
            show_parameter_hints = true,
            parameter_hints_prefix = "👈 ",
            show_variable_name = false,
            other_hints_prefix = "👉 ",
            max_len_align_padding = 1,
            right_align = false,
            right_align_padding = 7,
            highlight = "Comment",
        },
        hover_actions = {
            -- the border that is used for the hover window
            -- see vim.api.nvim_open_win()
            border = {
                {"╭", "FloatBorder"}, {"─", "FloatBorder"},
                {"╮", "FloatBorder"}, {"│", "FloatBorder"},
                {"╯", "FloatBorder"}, {"─", "FloatBorder"},
                {"╰", "FloatBorder"}, {"│", "FloatBorder"}
            },

            -- whether the hover action window gets automatically focused
            auto_focus = false
        },

    },
    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        on_attach = custom_attach,

        -- we assume all project are made by cargo, but just in case pure rust files are used
        -- we make a binding [,rs] comma rs to startstandalone server and kill rust analyzer
        standalone = false,

        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy"
                }
            }
        }
    },
    dap = {
        adapter = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, liblldb_path)

    }
}

require('rust-tools').setup(opts)
