return {
  {
    'vscode-neovim/vscode-multi-cursor.nvim',
    cond = not not vim.g.vscode,
    event = 'VeryLazy',
  }
}
