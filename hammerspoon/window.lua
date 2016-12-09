hs.window.animationDuration = 0

nextKey = nil
prevKey = nil
myWindows = {}

function resize(focusedWindow, m, cb)
  local win = focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  local add = 0
  local mult = 0
  if m[1] > 1 then
    mult = m[1] - 1
    add = max.w
    m[1] = 1
  end

  if cb ~= nil then
    cb(win)
  end

  f.x = (max.x + (add * mult)) * m[1]
  f.y = max.y * m[2]
  f.w = max.w * m[3]
  f.h = max.h * m[4]
  win:setFrame(f)
end

function stagger(focusedWindow, m1, m2)
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
