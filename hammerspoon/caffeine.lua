require "icon"

local caffeine = hs.menubar.new()
local awake = createMenubarIcon("awake.png")
local asleep = createMenubarIcon("asleep.png")

function setCaffeineDisplay(state)
  if state then
    caffeine:setIcon(awake)
  else
    caffeine:setIcon(asleep)
  end
end

function caffeineClicked()
  setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
  caffeine:setClickCallback(caffeineClicked)
  setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end
