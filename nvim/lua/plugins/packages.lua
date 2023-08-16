require("nvim-web-devicons").get_icons()
require("lfs")
mocha = require("catppuccin.palettes").get_palette "mocha"

function dot_git_exists()
  local path = "./.git"
  if (lfs.attributes(path, "mode") == "directory") then
    return true
  end
  return false
end

if dot_git_exists() then
  branch = 'branch'
else 
  branch = ''
end

