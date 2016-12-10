local resize = require "utils/window-resize"

local function stagger(focusedWindow, m1, m2)
  local win = focusedWindow()

  -- reset size on key switches
  if nextKey ~= prevKey then
    myWindows[win:id()] = nil
  end
  prevKey = nextKey

  -- assign window size
  if myWindows[win:id()] == nil then
    myWindows[win:id()] = "third"
  elseif myWindows[win:id()] == "third" then
    myWindows[win:id()] = "half"
  elseif myWindows[win:id()] == "half" then
    myWindows[win:id()] = "third"
  end

  if myWindows[win:id()] == "half" then
    m1 = m2
  end

  resize(focusedWindow, m1)
end

return stagger
