local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  vim.api.nvim_command('packadd packer.nvim')
end

return require('packer').startup({
  function(use)
    use 'wbthomason/packer.nvim'

    use { 'bluz71/vim-nightfly-guicolors', config = "require('colorscheme-config')" }

    use("szw/vim-maximizer") -- maximizes and restores current window

    -- essential plugins
    -- TODO: research these two packages
    use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
    use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

    use {
      'nvim-treesitter/nvim-treesitter',
      run = ":TSUpdate",
      event = "BufWinEnter",
      config = "require('treesitter-config')"
    }

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      event = "BufWinEnter",
      config = "require('lualine-config')"
    }

    use {
      'akinsho/bufferline.nvim',
      tag = "v2.*",
      requires = 'kyazdani42/nvim-web-devicons',
      event = "BufWinEnter",
      config = "require('bufferline-config')"
    }

    use 'kyazdani42/nvim-web-devicons'

    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons',
      },
      tag = 'nightly',
      config = "require('nvim-tree-config')"
    }

    use {
      'windwp/nvim-ts-autotag',
      event = 'InsertEnter',
      after = 'nvim-treesitter'
    }

    use {
      'p00f/nvim-ts-rainbow',
      after = 'nvim-treesitter'
    }

    use {
      "windwp/nvim-autopairs",
      config = "require('autopairs-config')",
      after = "nvim-cmp"
    }

    use {
      'folke/which-key.nvim',
      event = 'BufWinEnter',
      config = "require('whichkey-config')"
    }

    use {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } },
      cmd = "Telescope",
      config = "require('telescope-config')"
    }

    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- managing & installing lsp servers, linters & formatters
    use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
    use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

    -- configuring LSP servers
    use { 'neovim/nvim-lspconfig' }

    -- configuring lsp servers
    use { 'hrsh7th/nvim-cmp' } -- The completion plugin
    use { 'hrsh7th/cmp-buffer' } -- Buffer completion
    use { 'hrsh7th/cmp-nvim-lua' } -- Lua completion
    use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
    use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
    use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
    use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
    use { 'hrsh7th/cmp-path' } -- Path completion
    use { 'hrsh7th/cmp-cmdline' } -- Command completion
    use { 'hrsh7th/vim-vsnip' } -- Snipet completion
    use { 'hrsh7th/cmp-vsnip' }

    -- For formatting and linting
    use {
      'jose-elias-alvarez/null-ls.nvim',
      config = "require('null-ls-config')"
    }

    use {
      'norcalli/nvim-colorizer.lua',
      event = 'BufRead',
      config = "require('colorizer-config')"
    }

    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup { current_line_blame = true }
      end
    }

    use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

    use {
      "lukas-reineke/indent-blankline.nvim",
      event = 'BufRead',
      config = "require('blankline-config')"
    }

    use {
      "folke/zen-mode.nvim",
      config = 'require("zen-mode-config")'
    }

    use {
      "akinsho/toggleterm.nvim",
      tag = 'v1.*',
      config = "require('toggleterm-config')"
    }

    use { "terrortylor/nvim-comment", config = "require('comment-config')" }

    use { 'softoika/ngswitcher.vim' }

    use {'kevinhwang91/nvim-bqf', config = "require('bqf-config')"}
  end,

  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
})
