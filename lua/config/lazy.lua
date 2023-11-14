local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- Coding
    { import = "lazyvim.plugin.extras.coding.copilot" },
    { import = "lazyvim.plugin.extras.coding.nvim-cmp" },
    { import = "lazyvim.plugin.extras.coding.copilot-cmp" },
    { import = "lazyvim.plugin.extras.coding.lualine" },
    { import = "lazyvim.plugin.extras.coding.yanky" },
    -- Editor
    { import = "lazyvim.plugin.extras.editor.aerial" },
    { import = "lazyvim.plugin.extras.editor.telescope" },
    { import = "lazyvim.plugin.extras.editor.lualine" },
    { import = "lazyvim.plugin.extras.editor.flit" },
    { import = "lazyvim.plugin.extras.editor.leap" },
    { import = "lazyvim.plugin.extras.editor.mini.surround" },
    { import = "lazyvim.plugin.extras.editor.vim-repeat" },
    -- Formatting
    { import = "lazyvim.plugin.extras.formatting.prettier" },
    { import = "lazyvim.plugin.extras.formatting.mason" },
    { import = "lazyvim.plugin.extras.formatting.none-ls" },
    { import = "lazyvim.plugin.extras.formatting.conform" },
    -- Lang
    { import = "lazyvim.plugin.extras.lang.json" },
    { import = "lazyvim.plugin.extras.lang.typescript" },
    { import = "lazyvim.plugin.extras.lang.markdown" },
    { import = "lazyvim.plugin.extras.lang.tailwind" },
    -- Linting
    { import = "lazyvim.plugin.extras.linting.eslint" },
    -- LSP
    { import = "lazyvim.plugin.extras.lsp.none-ls" },
    -- UI
    { import = "lazyvim.plugin.extras.ui.alpha" },
    -- Project
    { import = "lazyvim.plugin.extras.util.project" },
    -- VSCode
    { import = "lazyvim.plugin.extras.vscode" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
