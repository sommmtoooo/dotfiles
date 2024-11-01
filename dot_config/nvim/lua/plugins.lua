local status, packer = pcall(require, 'packer')
if (not status) then
    print('Packer is not installed')
    return
end
vim.cmd [[packadd packer.nvim]]
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Simple plugins can be specified as strings
    use 'rstacruz/vim-closer'

    -- Lazy loading:
    -- Load on specific commands
    use { 'tpope/vim-dispatch', opt = true, cmd = { 'Dispatch', 'Make', 'Focus', 'Start' } }


    use { 'tjdevries/colorbuddy.vim' }

    -- Themes
    use { 'sainnhe/gruvbox-material' }
    use { 'lunarvim/primer.nvim', lazy = false }
    use { "ellisonleao/gruvbox.nvim" }
    use { "olimorris/onedarkpro.nvim" }
    use { "2nthony/vitesse.nvim" }
    use({ 'projekt0n/github-nvim-theme' })
    use {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }
    use 'shaunsingh/solarized.nvim'

    -- Status Line
    use 'hoob3rt/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons' -- File Icons
    use 'NvChad/nvim-colorizer.lua'

    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'nanozuki/tabby.nvim'

    -- Wakatime
    use 'wakatime/vim-wakatime'

    -- Code Action
    use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }
    use 'jose-elias-alvarez/null-ls.nvim'

    -- Prettier
    use 'MunifTanjim/prettier.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {
        'nvim-tree/nvim-tree.lua'
    }

    -- Markdown Previewer
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })


    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')

    -- Fugitive
    use('tpope/vim-fugitive')

    -- LSP SUPPORT
    use { 'neovim/nvim-lspconfig' }
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim' }

    -- Terminal
    use "akinsho/toggleterm.nvim"

    -- Auto Completion (LSP KIND & NVIM)
    use { 'onsails/lspkind-nvim' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-nvim-lua' }
    use { 'hrsh7th/cmp-path' }
    use { 'saadparwaiz1/cmp_luasnip' }
    use { 'windwp/nvim-ts-autotag' }

    -- Snippets
    use { 'L3MON4D3/LuaSnip' }
    use { 'rafamadriz/friendly-snippets' }
    use { 'numToStr/Comment.nvim',
        requires = {
            'JoosepAlviste/nvim-ts-context-commentstring'
        }
    }
end)
