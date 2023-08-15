local nnoremap = require("utils/nnoremap")
local rt = require("rust-tools")

local custom_attach = function(_,bufnr)

    -- Neovide Productive Keybindings
    if vim.fn.has('macunix') == 1 and vim.fn.exists('neovide') == 1 or vim.fn.has('gui_running') == 1 then
        nnoremap([[<D-'>]], [[:RustToggleInlayHints<CR>]], true)
        nnoremap("<D-x>", [[:lua require'dap'.toggle_breakpoint()<CR>]], true)
        nnoremap([[<D-\\>]], [[:RustParentModule<CR>]], true)
        nnoremap([[<D-[>]], [[:RustMoveItemDown<CR>]], true)
        nnoremap([[<D-]>]], [[:RustMoveItemUp<CR>]], true)
        nnoremap([[<D-F1>]], [[:lua require'dap'.continue()<CR>]], true)
        nnoremap([[<D-F2>]], [[:lua require'dap'.step_over()<CR>]], true)
        nnoremap([[<D-F3>]], [[:lua require'dap'.step_into()<CR>]], true)
        nnoremap([[<D-F4>]], [[:lua require'dap'.step_out()<CR>]], true)
        nnoremap([[<D-F5>]], [[:lua require'dap'.close()<CR>]], true)
        vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        vim.keymap.set("n", "<Leader>v", rt.hover_actions.hover_actions, { buffer = bufnr })
        nnoremap([[<D-`>]], [[:lua require'dapui'.toggle()<CR>]], true)
        nnoremap([[<D-F8>]], [[:lua require'dap'.repl.close()<CR>]], true)

        nnoremap([[<D-c>]], [[:RustPlay<CR>]], true)
    else
        nnoremap([[<leader>']], [[:RustToggleInlayHints<CR>]], true)
        nnoremap("<leader>x", [[:lua require'dap'.toggle_breakpoint()<CR>]], true)
        nnoremap([[<leader>\]], [[:RustParentModule<CR>]], true)
        nnoremap("<leader>[", [[:RustMoveItemDown<CR>]], true)
        nnoremap("<leader>]", [[:RustMoveItemUp<CR>]], true)
        nnoremap([[<leader><F1>]], [[:lua require'dap'.continue()<CR>]], true)
        nnoremap([[<leader><F2>]], [[:lua require'dap'.step_over()<CR>]], true)
        nnoremap([[<leader><F3>]], [[:lua require'dap'.step_into()<CR>]], true)
        nnoremap([[<leader><F4>]], [[:lua require'dap'.step_out()<CR>]], true)
        nnoremap([[<leader><F5>]], [[:lua require'dap'.close()<CR>]], true)
        nnoremap([[<leader>`]], [[:lua require'dapui'.toggle()<CR>]], true)
        nnoremap([[<leader><F8>]], [[:lua require'dap'.repl.close()<CR>]], true)
        nnoremap([[<leader>c]], [[:RustPlay<CR>]], true)
    end
    -- Available CMD keys as of now
    --   '
    -- F9, F10, F11, F12

    -- Productive Rust Bindings Run and Test Under Cursor
    nnoremap([[<F1>]], [[:RustRun<CR>]], true)
    nnoremap([[<F2>]], [[:RustTest<CR>]], true)
    -- works only with rust analyzer , we can choose what test to run
    nnoremap([[<F3>]], [[:RustRunnables<CR>]], true)
    nnoremap([[<F5>]], [[:RustDebuggables<CR>]], true)
    nnoremap([[<F6>]], [[:execute "RustStartStandaloneServerForBuffer" | LspStop<CR>]], true)
    -- Reload Workspace
    nnoremap([[<F7>]], [[:RustReloadWorkspace<CR>]], true)
    nnoremap([[<F8>]], [[:lua require'dap'.repl.toggle()<CR>]], true)
    nnoremap([[<F9>]], [[:!cargo test -- --ignored<CR>]], true)
    -- if cargo.toml exists run test under cursor, but for stand alone all test are run
    nnoremap([[,rt]], [[:RustRunnables<CR>]], true)
    nnoremap([[,rd]], [[:RustDebuggables<CR>]], true)
    nnoremap([[,em]], [[:RustExpandMacro<CR>]], true)

    -- Rust File Only
    nnoremap([[,rs]], [[:execute "RustStartStandaloneServerForBuffer" | LspStop<CR>]])
end

return custom_attach
