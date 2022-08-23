require('base')
require('highlights')
require('maps')

local has = function(x)
  return vim.fn.has(x) == 1
end

-- By default, Vim doesn't sync yanked text with the system clipboard, and vice versa
-- this is the sync code below
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
-- import macos.lua file
  require('macos')
end

if is_win then
  require('windows')
end

