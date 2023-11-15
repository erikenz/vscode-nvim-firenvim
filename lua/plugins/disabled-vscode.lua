return {
  -- coding
  {
    "L3MON4D3/LuaSnip",
    cond = not vim.g.vscode,
  },
  {
    "rafamadriz/friendly-snippets",
    cond = not vim.g.vscode
  },
  {
    "hrsh7th/nvim-cmp",
    cond = not vim.g.vscode,
  },
  {
    "echasnovski/mini.pairs",
    cond = not vim.g.vscode
  },
  {
    "echasnovski/mini.surround",
    cond = not vim.g.vscode
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    cond = not vim.g.vscode
  },
  {
    "echasnovski/mini.comment",
    cond = not vim.g.vscode
  },
  {
    "echasnovski/mini.ai",
    cond = not vim.g.vscode
  },
  -- editor
  {
    "nvim-neo-tree/neo-tree.nvim",
    cond = not vim.g.vscode
  },
  {
    "nvim-pack/nvim-spectre",
    cond = not vim.g.vscode,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    cond = not vim.g.vscode,
  },
  {
    "folke/flash.nvim",
    cond = not vim.g.vscode,
  },
  {
    "folke/which-key.nvim",
    cond = not vim.g.vscode,
  },
  {
    "folke/which-key.nvim",
    cond = not vim.g.vscode,
  },
  {
    "RRethy/vim-illuminate",
    cond = not vim.g.vscode,
  },
  {
    "echasnovski/mini.bufremove",
    cond = not vim.g.vscode,
  },
  {
    "folke/trouble.nvim",
    cond = not vim.g.vscode,
  },
  {
    "folke/todo-comments.nvim",
    cond = not vim.g.vscode,
  },
  {
    "nvim-telescope/telescope.nvim",
    cond = not vim.g.vscode,
  },
  -- formatting
  {
    "stevearc/conform.nvim",
    cond = not vim.g.vscode,
  },
  -- linting
  {
    "mfussenegger/nvim-lint",
    cond = not vim.g.vscode,
  },
  -- lsp
  {
    "neovim/nvim-lspconfig",
    cond = not vim.g.vscode,
  },
  {
    "folke/neoconf.nvim",
    cond = not vim.g.vscode,
  },
  {
    "folke/neodev.nvim",
    cond = not vim.g.vscode,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    cond = not vim.g.vscode,
  },
  {
    "williamboman/mason.nvim",
    cond = not vim.g.vscode,
  },
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    cond = not vim.g.vscode,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    cond = not vim.g.vscode,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    cond = not vim.g.vscode,
  },
  {
    "windwp/nvim-ts-autotag",
    cond = not vim.g.vscode,
  },
  -- ui
  {
    "rcarriga/nvim-notify",
    cond = not vim.g.vscode,
  },
  {
    "stevearc/dressing.nvim",
    cond = not vim.g.vscode,
  },
  {
    "akinsho/bufferline.nvim",
    cond = not vim.g.vscode,
  },
  {
    "nvim-lualine/lualine.nvim",
    cond = not vim.g.vscode,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    cond = not vim.g.vscode,
  },
  {
    "echasnovski/mini.indentscope",
    cond = not vim.g.vscode,
  },
  {
    "folke/noice.nvim",
    cond = not vim.g.vscode,
  },
  {
    "nvim-tree/nvim-web-devicons",
    cond = not vim.g.vscode,
  },
  {
    "MunifTanjim/nui.nvim",
    cond = not vim.g.vscode,
  },
  {
    "nvimdev/dashboard-nvim",
    cond = not vim.g.vscode,
  },
  -- util
  {
    "dstein64/vim-startuptime",
    cond = not vim.g.vscode,
  },
  {
    "folke/persistence.nvim",
    cond = not vim.g.vscode,
  },
  {
    "nvim-lua/plenary.nvim",
    cond = not vim.g.vscode,
  },
  -- idk
  {
    "lewis6991/gitsigns.nvim",
    cond = not vim.g.vscode,
  }
}
