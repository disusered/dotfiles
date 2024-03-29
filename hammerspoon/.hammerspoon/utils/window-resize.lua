local function resize(focusedWindow, m)
  local win = focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  -- reset size on key switches
  if nextKey ~= prevKey then
    myWindows[win:id()] = nil
  end
  prevKey = nextKey

  local x = 0
  if m[1] > 1 then
    x = m[1] - 1
    m[1] = 1
  end

  local y = 0
  if m[2] > 1 then
    y = m[2] - 1
    m[2] = 1
  end

  f.x = (max.x + max.w * x) * m[1]
  f.y = (max.y + max.h * y) * m[2]
  f.w = max.w * m[3]
  f.h = max.h * m[4]
  win:setFrame(f)
end

return resize
