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
    -- use({"ellisonleao/gruvbox.nvim"})
    use("kyazdani42/nvim-web-devicons")
    use({"famiu/feline.nvim"})
    use({"xiyaowong/nvim-transparent"})
    -- Tab / Buffer
    use("akinsho/nvim-bufferline.lua")
    -- Git
    use("lewis6991/gitsigns.nvim")
    use("mattn/webapi-vim")
    -- Auto Completion
    use("hrsh7th/nvim-cmp")
    -- Language Servers
    use("neovim/nvim-lspconfig")
    -- List of Completions
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-buffer")
    -- Snippets
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")
    -- Rust
    -- add this so we can test under cursor with RustTest
    use("rust-lang/rust.vim")
    use("simrat39/rust-tools.nvim")
    -- Easy Motion
    use("phaazon/hop.nvim")

    -- Fuzzy Finder Search
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
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
