local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")
local inoremap = require("utils/inoremap")

-- Neovide Productive Keybindings
if vim.fn.exists('neovide') == 1 then
nnoremap([[<D-'>]], [[:RustToggleInlayHints<CR>]],true)
nnoremap("<D-x>", [[:lua require'dap'.toggle_breakpoint()<CR>]],true)
nnoremap([[<D-\\>]], [[:RustParentModule<CR>]],true)
nnoremap([[<D-[>]], [[:RustMoveItemDown<CR>]],true)
nnoremap([[<D-]>]], [[:RustMoveItemUp<CR>]],true)
nnoremap([[<D-F1>]], [[:lua require'dap'.step_over()<CR>]],true)
nnoremap([[<D-F2>]], [[:lua require'dap'.step_into()<CR>]],true)
nnoremap([[<D-F3>]], [[:lua require'dap'.step_out()<CR>]],true)
nnoremap([[<D-F4>]], [[:lua require'dap'.close()<CR>]],true)
nnoremap([[<D-`>]], [[:lua require'dapui'.toggle()<CR>]],true)

nnoremap([[<D-c>]], [[:RustPlay<CR>]],true)
nnoremap([[<F11>]], [[:lua require'dap'.repl.toggle()<CR>]],true)
nnoremap([[<D-F11>]], [[:lua require'dap'.repl.close()<CR>]],true)
nnoremap([[<F12>]], [[:lua require'dap'.continue()<CR>]],true)
nnoremap([[<D-F12>]], [[:execute "RustStartStandaloneServerForBuffer" | LspStop<CR>]],true)
end
-- Available CMD keys as of now
--   '
-- F5 - F11

-- Productive Rust Bindings Run and Test Under Cursor
nnoremap([[<F1>]], [[:RustRun<CR>]],true)
nnoremap([[<F2>]], [[:RustTest<CR>]],true)
-- works only with rust analyzer , we can choose what test to run
nnoremap([[<F3>]], [[:RustRunnables<CR>]],true)
nnoremap([[<F5>]], [[:RustDebuggables<CR>]],true)
-- Reload Workspace
nnoremap([[<F6>]], [[:RustReloadWorkspace<CR>]],true)
-- if cargo.toml exists run test under cursor, but for stand alone all test are run
nnoremap([[,rt]], [[:RustTest<CR>]],true)
nnoremap([[,em]], [[:RustExpandMacro<CR>]],true)
-- nnoremap("<F12>", ":!cargo test -- --ignored<CR>")

-- Rust File Only
nnoremap([[,rs]], [[:execute "RustStartStandaloneServerForBuffer" | LspStop<CR>]])
