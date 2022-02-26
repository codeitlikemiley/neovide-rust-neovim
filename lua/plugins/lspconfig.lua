-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local lspconfig = require("lspconfig")
-- local root_pattern = require("lspconfig.util").root_pattern
local setup_auto_format = require("utils.lsp").setup_auto_format

setup_auto_format("rs")
