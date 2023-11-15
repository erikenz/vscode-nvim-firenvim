-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")


local function printTable(t)
  local printTable_cache = {}

  local function sub_printTable(t, indent)
    if (printTable_cache[tostring(t)]) then
      print(indent .. "*" .. tostring(t))
    else
      printTable_cache[tostring(t)] = true
      if (type(t) == "table") then
        for pos, val in pairs(t) do
          if (type(val) == "table") then
            print(indent .. "[" .. pos .. "] => " .. tostring(t) .. " {")
            sub_printTable(val, indent .. string.rep(" ", string.len(pos) + 8))
            print(indent .. string.rep(" ", string.len(pos) + 6) .. "}")
          elseif (type(val) == "string") then
            print(indent .. "[" .. pos .. '] => "' .. val .. '"')
          else
            print(indent .. "[" .. pos .. "] => " .. tostring(val))
          end
        end
      else
        print(indent .. tostring(t))
      end
    end
  end

  if (type(t) == "table") then
    print(tostring(t) .. " {")
    sub_printTable(t, "  ")
    print("}")
  else
    sub_printTable(t, "  ")
  end
end
if vim.g.vscode then
  -- VSCode only settings
  print("Loaded VSCode settings")
  require("env.vscode")

  local plugins = require('lazy').plugins()
  print('plugins:', printTable(plugins))
elseif vim.g.started_by_firenvim == true then
  -- Firenvim only settings
  print("Loaded Firenvim settings")
  vim.o.laststatus = 0
  require("env.firenvim")
else
  -- Neovim only settings
  vim.o.laststatus = 2
  require("env.neovim")
end
