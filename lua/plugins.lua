-- This file can be loaded by calling `lua require('plugins')` from your init.lua

-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  -- lua functions that many plugins use
  use 'nvim-lua/plenary.nvim'
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}


  -- One Monokai Colorscheme
  use 'cpea2506/one_monokai.nvim'
  use 'joshdick/onedark.vim'
  use 'EdenEast/nightfox.nvim'

  -- tmux movements between splits
  use 'christoomey/vim-tmux-navigator'

  -- maximize splits
  use 'szw/vim-maximizer'

  -- essential plugins
  use 'tpope/vim-surround' -- press 'ys w "' to surround the word with "
  use 'vim-scripts/ReplaceWithRegister'

  -- commenting with gc
  use 'numToStr/Comment.nvim'

  -- File explorer
  use 'nvim-tree/nvim-tree.lua'

  -- auto completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'


  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- statusline
  use 'nvim-lualine/lualine.nvim'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'benfowler/telescope-luasnip.nvim'

  -- eslint
  --use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/eslint.nvim'
  -- managing lsp servers
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/cmp-nvim-lsp'
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        local saga = require("lspsaga")

        saga.init_lsp_saga({
            -- your configuration
        })
    end,
  })

  use 'jose-elias-alvarez/typescript.nvim'
  use 'onsails/lspkind.nvim'

  use 'ThePrimeagen/harpoon'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }


  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- terminal
  use 'akinsho/toggleterm.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'windwp/nvim-ts-autotag'


  -- hop - file navigation
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }

  -- diff view for git
  -- :DiffviewOpen
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- git 
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
  use 'tpope/vim-fugitive'

  use 'ThePrimeagen/git-worktree.nvim'

  use {
    "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  use "lukas-reineke/indent-blankline.nvim"

  --
  -- which key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- nice tabs
  -- use 'nvim-tree/nvim-web-devicons'
  -- use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}


end)
