local createMenubarIcon = require "utils/create-menubar-icon"

local caffeine = hs.menubar.new()
local awake = createMenubarIcon("awake.png")
local asleep = createMenubarIcon("asleep.png")

local function setCaffeineDisplay(state)
  if state then
    caffeine:setIcon(awake)
  else
    caffeine:setIcon(asleep)
  end
end

local function caffeineClicked()
  setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
  caffeine:setClickCallback(caffeineClicked)
  setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end
