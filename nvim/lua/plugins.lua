vim.cmd [[packadd packer.nvim]]

require('./evil_lualine')

return require('packer').startup(function()
    -- Packer updates himself
    use 'wbthomason/packer.nvim'
	
    -- Status line
    use {
    	'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    ---------------------------------------------------------------------------
    -- LSP and auto complition 
    ---------------------------------------------------------------------------

    -- Highlight, edit, and navigate code using a fast incremental parsing library
    use 'nvim-treesitter/nvim-treesitter'

    -- Collection of configurations for built-in LSP client
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    
    -- Auto complition
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'saadparwaiz1/cmp_luasnip'
    --- Auto complition for file system
    use 'hrsh7th/cmp-path'

    -- Snippets plugin
    use 'L3MON4D3/LuaSnip'
    
    
    ---------------------------------------------------------------------------
    -- Others
    ---------------------------------------------------------------------------
    
    -- Переводчик рус - англ
    use 'skanehira/translate.vim'
    -- popup окошки
    use 'nvim-lua/popup.nvim'
    -- Counts in search
    use 'google/vim-searchindex'
    -- Start page
    use 'mhinz/vim-startify'
    -- Comment engine (use gc)
    use 'numToStr/Comment.nvim'
    -- Closing brackets
    use 'cohama/lexima.vim'
    -- Liniter
    use 'dense-analysis/ale'
    

end)

