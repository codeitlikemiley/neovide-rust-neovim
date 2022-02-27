local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")
local inoremap = require("utils/inoremap")

-- Neovide Productive Keybindings
if vim.fn.exists('neovide') == 1 then
nnoremap("<D-F1>", ":RustDebuggables<CR>")
nnoremap("<D-F2>", ":RustReloadWorkspace<CR>")
nnoremap("<D-F3>", ":RustToggleInlayHints<CR>")
nnoremap("<D-F12>", [[:execute "RustStartStandaloneServerForBuffer" | LspStop<CR>]], true)
nnoremap("<D-x>", ":RustExpandMacro<CR>")
nnoremap("<D-\\>", ":RustParentModule<CR>")
nnoremap("<D-c>", ":RustOpenCargo<CR>")
nnoremap("<D-[>", ":RustMoveItemDown<CR>")
nnoremap("<D-]>", ":RustMoveItemUp<CR>")
end
-- Available CMD keys as of now
--   '
-- F5 - F11

-- Productive Rust Bindings Run and Test Under Cursor
nnoremap("<F1>", ":RustRun<CR>")
nnoremap("<F2>", ":RustTest<CR>")
-- works only with rust analyzer , we can choose what test to run
nnoremap("<F3>", ":RustRunnables<CR>")
-- if cargo.toml exists run test under cursor, but for stand alone all test are run
nnoremap(",rt", ":RustTest<CR>")
nnoremap(",em", ":RustExpandMacro<CR>")
nnoremap("<F12>", ":!cargo test -- --ignored<CR>")

-- Rust File Only
nnoremap(",rs", [[:execute "RustStartStandaloneServerForBuffer" | LspStop<CR>]], true)
