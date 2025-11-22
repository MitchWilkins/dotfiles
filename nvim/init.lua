-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local handle = io.popen("defaults read -g AppleInterfaceStyle 2>/dev/null")
if handle then
  local result = handle:read("*a")
  handle:close()

  if result:match("Dark") then
    vim.cmd("colorscheme rose-pine-moon") -- or any dark theme
  else
    vim.cmd("colorscheme rose-pine-dawn") -- or any light theme
  end
end
