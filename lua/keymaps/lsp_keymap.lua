local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")

-- Be more Productive when Using Neovide with the ff Keybindings
if vim.fn.exists('neovide') == 1 then
    nnoremap("<D-r>", "<cmd>lua vim.lsp.buf.rename()<CR>", true)
    nnoremap("<D-d>", "<cmd>lua vim.lsp.buf.hover()<CR>", true)
    nnoremap("<D-,>", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", true)
    nnoremap("<D-.>", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", true)
    nnoremap("<D-;>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", true)
end

-- Default LSP Keybindings
nnoremap("ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", true)
nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>", true)
nnoremap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", true)
nnoremap("gr", "<cmd>lua vim.lsp.buf.references()<CR>", true)
nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", true)
nnoremap("gh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", true)
nnoremap("gs", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", true)
nnoremap("go", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", true)
nnoremap("g[", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", true)
nnoremap("g]", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", true)
nnoremap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", true)
nnoremap("<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", true)
nnoremap("<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", true)
nnoremap("<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", true)

-- Quick Way to Trigger Code Action
nnoremap(",,", "<cmd>lua vim.lsp.buf.code_action()<CR>", true)
-- Press Twice to Enter Vim Buffer of the Hover Definition
nnoremap("K", "<cmd>lua vim.lsp.buf.hover()<CR>", true)
-- Trigger Format
nnoremap(",f", "<cmd>lua vim.lsp.buf.formatting()<CR>", true)
