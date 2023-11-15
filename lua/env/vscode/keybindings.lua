local set = vim.keymap.set
local del = vim.keymap.del
local vscode = require("vscode-neovim")

-- if whichkey extension is used
local whichkey = {
  show = function()
    vscode.call("whichkey.show")
  end
}

local comment = {
  selected = function()
    vscode.call("editor.action.commentLine", { range = { vim.fn.line("v"), vim.fn.line(".") } })
  end
}

local file = {
  new = function()
    -- vscode.call("workbench.explorer.fileView.focus")
    -- vscode.call("explorer.newFile")
    vscode.call("workbench.action.fileView.focus")
    vscode.call("explorer.newFile")
  end,

  save = function()
    -- vscode.call("workbench.action.files.save")
    vscode.call("workbench.action.files.save")
  end,

  saveAll = function()
    -- vscode.call("workbench.action.files.saveAll")
    vscode.call("workbench.action.files.saveAll")
  end,

  format = function()
    -- vscode.call("editor.action.formatDocument")
    vscode.call("editor.action.formatDocument")
  end,

  showInExplorer = function()
    -- vscode.call("workbench.files.action.showActiveFileInExplorer")
    vscode.call("workbench.files.action.showActiveFileInExplorer")
  end,

  rename = function()
    -- vscode.call("workbench.files.action.showActiveFileInExplorer")
    -- vscode.call("renameFile")
    vscode.call("workbench.files.action.showActiveFileInExplorer")
    vscode.call("renameFile")
  end
}

local error = {
  list = function()
    -- vscode.call("workbench.actions.view.problems")
    vscode.call("workbench.actions.view.problems")
  end,
  next = function()
    -- vscode.call("editor.action.marker.next")
    vscode.call("editor.action.marker.next")
  end,
  previous = function()
    -- vscode.call("editor.action.marker.prev")
    vscode.call("editor.action.marker.prev")
  end,
}

local editor = {
  closeActive = function()
    -- vscode.call("workbench.action.closeActiveEditor")
    vscode.call("workbench.action.closeActiveEditor")
  end,
  closeOther = function()
    -- vscode.call("workbench.action.closeOtherEditors")
    vscode.call("workbench.action.closeOtherEditors")
  end,
  organizeImport = function()
    -- vscode.call("editor.action.organizeImports")
    vscode.call("editor.action.organizeImports")
  end,
  addSelection = function()
    vscode.call('editor.action.addSelectionToNextFindMatch', { range = { vim.fn.line("v"), vim.fn.line(".") } })
  end,
  removeSelection = function()
    vscode.call('editor.action.removeSelectionFromNextFindMatch')
  end
}

local workbench = {
  showCommands = function()
    -- vscode.call("workbench.action.showCommands")
    vscode.call("workbench.action.showCommands")
  end,
  previousEditor = function()
    -- vscode.call("workbench.action.previousEditor")
    vscode.call("workbench.action.previousEditor")
  end,
  nextEditor = function()
    -- vscode.call("workbench.action.nextEditor")
    vscode.call("workbench.action.nextEditor")
  end,
  focusEditor = function()
    -- vscode.call("workbench.action.focusActiveEditorGroup")
    vscode.call("workbench.action.focusActiveEditorGroup")
  end,
  moveSideBarRight = function()
    -- vscode.call("workbench.action.moveSideBarRight")
    vscode.call("workbench.action.moveSideBarRight")
  end,
  moveSideBarLeft = function()
    -- vscode.call("workbench.action.moveSideBarLeft")
    vscode.call("workbench.action.moveSideBarLeft")
  end,
}

local toggle = {
  toggleActivityBar = function()
    -- vscode.call("workbench.action.toggleActivityBarVisibility")
    vscode.call("workbench.action.toggleActivityBarVisibility")
  end,
  toggleSideBarVisibility = function()
    -- vscode.call("workbench.action.toggleSidebarVisibility")
    vscode.call("workbench.action.toggleSidebarVisibility")
  end,
  toggleZenMode = function()
    -- vscode.call("workbench.action.toggleZenMode")
    vscode.call("workbench.action.toggleZenMode")
  end,
  theme = function()
    -- vscode.call("workbench.action.selectTheme")
    vscode.call("workbench.action.selectTheme")
  end,
}

local symbol = {
  rename = function()
    -- vscode.call("editor.action.rename")
    vscode.call("editor.action.rename")
  end,
}

-- if bookmark extension is used
local bookmark = {
  toggle = function()
    -- vscode.call("bookmarks.toggle")
    vscode.call("bookmarks.toggle")
  end,
  list = function()
    -- vscode.call("bookmarks.list")
    vscode.call("bookmarks.list")
  end,
  previous = function()
    -- vscode.call("bookmarks.jumpToPrevious")
    vscode.call("bookmarks.jumpToPrevious")
  end,
  next = function()
    -- vscode.call("bookmarks.jumpToNext")
    vscode.call("bookmarks.jumpToNext")
  end,
}

local search = {
  reference = function()
    vscode.call("editor.action.referenceSearch.trigger")
  end,
  referenceInSideBar = function()
    vscode.call("references-view.find")
  end,
  project = function()
    vscode.call("editor.action.addSelectionToNextFindMatch")
    vscode.call("workbench.action.findInFiles")
  end,
  text = function()
    vscode.call("workbench.action.findInFiles")
  end,
}

local project = {
  findFile = function()
    vscode.call("workbench.action.quickOpen")
  end,
  switch = function()
    vscode.call("workbench.action.openRecent")
  end,
  tree = function()
    vscode.call("workbench.view.explorer")
  end,
}

local git = {
  init = function()
    vscode.call("git.init")
  end,
  status = function()
    vscode.call("workbench.view.scm")
  end,
  switch = function()
    vscode.call("git.checkout")
  end,
  deleteBranch = function()
    vscode.call("git.deleteBranch")
  end,
  push = function()
    vscode.call("git.push")
  end,
  pull = function()
    vscode.call("git.pull")
  end,
  fetch = function()
    vscode.call("git.fetch")
  end,
  commit = function()
    vscode.call("git.commit")
  end,
  publish = function()
    vscode.call("git.publish")
  end,

  -- if gitlens installed
  graph = function()
    vscode.call("gitlens.showGraphPage")
  end,
}

local fold = {
  toggle = function()
    vscode.call("editor.toggleFold")
  end,

  all = function()
    vscode.call("editor.foldAll")
  end,
  openAll = function()
    vscode.call("editor.unfoldAll")
  end,

  close = function()
    vscode.call("editor.fold")
  end,
  open = function()
    vscode.call("editor.unfold")
  end,
  openRecursive = function()
    vscode.call("editor.unfoldRecursively")
  end,

  blockComment = function()
    vscode.call("editor.foldAllBlockComments")
  end,

  allMarkerRegion = function()
    vscode.call("editor.foldAllMarkerRegions")
  end,
  openAllMarkerRegion = function()
    vscode.call("editor.unfoldAllMarkerRegions")
  end,
}

local refactor = {
  showMenu = function()
    vscode.call("editor.action.refactor")
  end,
}

local terminal = {
  newExternal = function()
    vscode.call("workbench.action.terminal.new")
  end,
}

local multiCursor = {
  addSelection = function()
    return 'mciw*<Cmd>nohl<CR>'
  end,
}

-- https://vi.stackexchange.com/a/31887
local nv_keymap = function(lhs, rhs)
  vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
  vim.api.nvim_set_keymap('v', lhs, rhs, { noremap = true, silent = true })
end

local nx_keymap = function(lhs, rhs)
  vim.api.nvim_set_keymap('n', lhs, rhs, { silent = true })
  vim.api.nvim_set_keymap('v', lhs, rhs, { silent = true })
end

--#region keymap
vim.g.mapleader = " "

nv_keymap('s', '}')
nv_keymap('S', '{')

nv_keymap('<leader>h', '^')
nv_keymap('<leader>l', '$')
nv_keymap('<leader>a', '%')

nx_keymap('j', 'gj')
nx_keymap('k', 'gk')

-- whichkey
-- TODO: add whichkey support for all keymaps
set({ 'n', 'v' }, "<leader>", whichkey.show)

set({ 'n', 'v' }, "gcc", comment.selected)

set({ 'n' }, "<leader>i", editor.organizeImport)

-- no highlight
set({ 'n' }, "<leader>n", "<cmd>noh<cr>")

set({ 'n', 'v' }, "<leader> ", workbench.showCommands)

set({ 'n', 'v' }, "H", workbench.previousEditor)
set({ 'n', 'v' }, "L", workbench.nextEditor)
set({ 'n' }, "<leader>ve", workbench.focusEditor)
set({ 'n' }, "<leader>vl", workbench.moveSideBarLeft)
set({ 'n' }, "<leader>vr", workbench.moveSideBarRight)

-- terminal
-- disable <C-/> for terminal open and bind it to the correct vscode terminal command
del('n', '<C-/>')
set({ 'n' }, "<C-/>", terminal.newExternal)

-- multi cursor

-- error
set({ 'n' }, "<leader>el", error.list)
set({ 'n' }, "<leader>en", error.next)
set({ 'n' }, "<leader>ep", error.previous)

-- git
set({ 'n' }, "<leader>gb", git.switch)
set({ 'n' }, "<leader>gi", git.init)
set({ 'n' }, "<leader>gd", git.deleteBranch)
set({ 'n' }, "<leader>gf", git.fetch)
set({ 'n' }, "<leader>gs", git.status)
set({ 'n' }, "<leader>gp", git.pull)
set({ 'n' }, "<leader>gg", git.graph)

-- project
set({ 'n' }, "<leader>pf", project.findFile)
set({ 'n' }, "<leader>pp", project.switch)
set({ 'n' }, "<leader>pt", project.tree)

-- file
set({ 'n', 'v' }, "<space>w", file.save)
set({ 'n', 'v' }, "<space>wa", file.saveAll)
set({ 'n', 'v' }, "<space>fs", file.save)
set({ 'n', 'v' }, "<space>fS", file.saveAll)
set({ 'n' }, "<space>ff", file.format)
set({ 'n' }, "<space>fn", file.new)
set({ 'n' }, "<space>ft", file.showInExplorer)
set({ 'n' }, "<space>fr", file.rename)

-- buffer/editor
set({ 'n', 'v' }, "<space>c", editor.closeActive)
set({ 'n', 'v' }, "<space>bc", editor.closeActive)
set({ 'n', 'v' }, "<space>k", editor.closeOther)
set({ 'n', 'v' }, "<space>bk", editor.closeOther)
set({ 'n', 'v' }, '[a', editor.addSelection)
set({ 'n', 'v' }, ']a', editor.removeSelection)

-- toggle
set({ 'n', 'v' }, "<leader>ta", toggle.toggleActivityBar)
set({ 'n', 'v' }, "<leader>tz", toggle.toggleZenMode)
set({ 'n', 'v' }, "<leader>ts", toggle.toggleSideBarVisibility)
set({ 'n', 'v' }, "<leader>tt", toggle.theme)

-- refactor
set({ 'v' }, "<leader>r", refactor.showMenu)
set({ 'n' }, "<leader>rr", symbol.rename)
vim.api.nvim_set_keymap('n', '<leader>rd', 'V%d', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>rv', 'V%', { silent = true })

-- bookmark
set({ 'n' }, "<leader>m", bookmark.toggle)
set({ 'n' }, "<leader>mt", bookmark.toggle)
set({ 'n' }, "<leader>ml", bookmark.list)
set({ 'n' }, "<leader>mn", bookmark.next)
set({ 'n' }, "<leader>mp", bookmark.previous)

set({ 'n' }, "<leader>sr", search.reference)
set({ 'n' }, "<leader>sR", search.referenceInSideBar)
set({ 'n' }, "<leader>sp", search.project)
set({ 'n' }, "<leader>st", search.text)

--folding
set({ 'n' }, "<leader>zr", fold.openAll)
set({ 'n' }, "<leader>zO", fold.openRecursive)
set({ 'n' }, "<leader>zo", fold.open)
set({ 'n' }, "<leader>zm", fold.all)
set({ 'n' }, "<leader>zb", fold.blockComment)
set({ 'n' }, "<leader>zc", fold.close)
set({ 'n' }, "<leader>zg", fold.allMarkerRegion)
set({ 'n' }, "<leader>zG", fold.openAllMarkerRegion)
set({ 'n' }, "<leader>za", fold.toggle)

set({ 'n' }, "zr", fold.openAll)
set({ 'n' }, "zO", fold.openRecursive)
set({ 'n' }, "zo", fold.open)
set({ 'n' }, "zm", fold.all)
set({ 'n' }, "zb", fold.blockComment)
set({ 'n' }, "zc", fold.close)
set({ 'n' }, "zg", fold.allMarkerRegion)
set({ 'n' }, "zG", fold.openAllMarkerRegion)
set({ 'n' }, "za", fold.toggle)
--#endregion keymap
