require("packer").startup(function(use)
    use("wbthomason/packer.nvim")
    -- lua functions
    use("nvim-lua/plenary.nvim")
    -- Must Have In VIM
    use("tpope/vim-commentary")
    use({"mbbill/undotree"})
    use("kyazdani42/nvim-tree.lua")
    use("windwp/nvim-autopairs")
    use("liuchengxu/vim-which-key")
    -- Theme
    use("norcalli/nvim-colorizer.lua")
    use({"mhartington/oceanic-next"})
    use("kyazdani42/nvim-web-devicons")
    use({"famiu/feline.nvim"})
    -- Tab / Buffer
    use("akinsho/nvim-bufferline.lua")
    -- Git
    use("lewis6991/gitsigns.nvim")
    use("mattn/webapi-vim")
    -- Language Servers
    use("neovim/nvim-lspconfig") -- required by nvim-cmp
    -- use("jose-elias-alvarez/null-ls.nvim")
    -- Completion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-emoji")
    -- Snippets
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")
    -- Rust
    use("simrat39/rust-tools.nvim")
    -- Easy Motion
    use("phaazon/hop.nvim")

    -- Fuzzy Finder Search
    use("nvim-telescope/telescope.nvim")
    -- Debugging
    use("mfussenegger/nvim-dap")
    use("onsails/lspkind-nvim")
    use({
        "rcarriga/nvim-dap-ui",
        requires = {"mfussenegger/nvim-dap"}
    })
    use {
        'saecki/crates.nvim',
        requires = {'nvim-lua/plenary.nvim'},
        config = function()
            require('crates').setup()
        end
    }
end)
