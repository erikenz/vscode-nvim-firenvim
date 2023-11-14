local M = {}

M.vscode = (vim.fn.exists('g:vscode') == 1)
M.firenvim = (vim.fn.exists('g:started_by_firenvim') == 1)

return M
