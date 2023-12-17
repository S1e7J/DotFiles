local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	"navarasu/onedark.nvim",
	"nvim-lua/plenary.nvim",
	"ThePrimeagen/harpoon",
	"nvim-telescope/telescope.nvim",
	"ggandor/leap.nvim",
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip',
  dependencies = {"rafamadriz/friendly-snippets" }},
	"nvim-tree/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",
	"nvim-treesitter/nvim-treesitter",
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  "christoomey/vim-tmux-navigator",
  'edKotinsky/Arduino.nvim',
  {"folke/zen-mode.nvim",
  opts = {
    backdrop = 0.95,

    width = 85,
    heigth = 5,
  }
},
  {"AckslD/nvim-neoclip.lua",
  config = function()
    require('neoclip').setup()
  end,},
  'jiangmiao/auto-pairs',
})

