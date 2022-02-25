local nnoremap = require("utils/nnoremap")
local vnoremap = require("utils/vnoremap")
local inoremap = require("utils/inoremap")

-- All keybind here are only working in Neovide
vnoremap("<D-a>", "<cmd>lua vim.lsp.buf.range_code_action()<CR>")
nnoremap("<D-a>", "<cmd>lua vim.lsp.buf.code_action()<CR>", true)
nnoremap("<D-r>", "<cmd>lua vim.lsp.buf.rename()<CR>", true)
nnoremap("<D-d>", "<cmd>lua vim.lsp.buf.hover()<CR>", true)
vnoremap("<D-d>", "<cmd>RustHoverRange<CR>")

-- LSP
nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>", true)
nnoremap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", true)
nnoremap("gr", "<cmd>LspTrouble lsp_references<CR>", true)
nnoremap("gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", true)

nnoremap("<C-space>", "<cmd>lua vim.lsp.buf.hover()<CR>", true)
vnoremap("<C-space>", "<cmd>RustHoverRange<CR>")

nnoremap("ge", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", true)
nnoremap("gE", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", true)

nnoremap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", true)
nnoremap("<leader>a", "<cmd>lua vim.lsp.buf.code_action()<CR>", true)
vnoremap("<leader>a", "<cmd>lua vim.lsp.buf.range_code_action()<CR>")
