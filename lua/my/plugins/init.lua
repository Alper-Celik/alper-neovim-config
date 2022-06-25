require((...) .. ".get_packer")

local plugins = require("packer").startup(function(use)
    --packge manager
    use "wbthomason/packer.nvim"

    --for reload functionality and for some plugins
    use 'nvim-lua/plenary.nvim'

    --#region language support
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"

    use "numToStr/Comment.nvim"
    -- C C++
    use "p00f/clangd_extensions.nvim"

    --rust
    use "simrat39/rust-tools.nvim"

    --terminal helper
    use { "akinsho/toggleterm.nvim", tag = 'v2.*' }

    -- flutter dart
    use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }

    --#endregion

    --fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use 'stevearc/dressing.nvim'

    --highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    --file explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    --theme
    use 'Mofiqul/vscode.nvim'

    --multi cursor
    use "mg979/vim-visual-multi"

    --snippit etc.
    use "hrsh7th/nvim-cmp"
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use "L3MON4D3/LuaSnip"

    --firenvim neovim in browser
    use {
        'glacambre/firenvim',
        run = function() vim.fn['firenvim#install'](0) end
    }
end)

return plugins
