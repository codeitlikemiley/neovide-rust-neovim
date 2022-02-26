local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")

-- All keybind here are only working in Neovide
-- vnoremap("<D-a>", "<cmd>lua vim.lsp.buf.range_code_action()<CR>")
nnoremap("<D-a>", "<cmd>lua vim.lsp.buf.code_action()<CR>", true)
nnoremap("<D-n>", "<cmd>lua vim.lsp.buf.rename()<CR>", true)
nnoremap("<D-d>", "<cmd>lua vim.lsp.buf.hover()<CR>", true)
nnoremap("<D-e>", "<cmd>lua vim.lsp.buf.type_definition()<CR>", true)
nnoremap("<D-o>", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", true)

-- LSP
nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>", true)
nnoremap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", true)
nnoremap("gr", "<cmd>lua vim.lsp.buf.references()<CR>", true)
nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", true)
nnoremap("gh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", true)
nnoremap("gw", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", true)
nnoremap("go", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", true)

nnoremap("<C-space>", "<cmd>lua vim.lsp.buf.hover()<CR>", true)

nnoremap("g[", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", true)
nnoremap("<D-,>", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", true)
nnoremap("g]", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", true)
nnoremap("<D-.>", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", true)

nnoremap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", true)
nnoremap("<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", true)
vnoremap("<leader>a", "<cmd>lua vim.lsp.buf.range_code_action()<CR>")

nnoremap("<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", true)
nnoremap("<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", true)
nnoremap("<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", true)

nnoremap(",f", "<cmd>lua vim.lsp.buf.formatting()<CR>", true)
nnoremap(",rs", [[:execute "RustStartStandaloneServerForBuffer" | LspStop<CR>]], true)