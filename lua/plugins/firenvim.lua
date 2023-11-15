local firenvim = require('utils.core').firenvim

return {
  {
    'glacambre/firenvim',
    cond = not not firenvim,
    -- Lazy load firenvim
    -- Explanation: https://github.com/folke/lazy.nvim/discussions/463#discussioncomment-4819297
    lazy = not firenvim,
    module = false,
    build = function()
      vim.fn["firenvim#install"](0)
    end,
    config = function()
      require('plugins.configs.firenvim')
    end,
  }
}
