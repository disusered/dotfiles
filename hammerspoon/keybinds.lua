-- trigger existing hyper key shortcuts
hyperUp = function() k.triggered = true end
hyperDown = function(key)
  return function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, key) end
end

k:bind({}, "p", hyperUp, hyperDown("p"));
k:bind({}, "1", hyperUp, hyperDown("1"));
k:bind({}, "c", hyperUp, hyperDown("c"));
k:bind({}, "x", hyperUp, hyperDown("x"));
k:bind({}, "d", hyperUp, hyperDown("d"));
k:bind({}, "z", hyperUp, hyperDown("z"));
k:bind({}, "g", hyperUp, hyperDown("g"));

-- media keys
mediaKeys = {}
mediaKeys["f1"]  = "BRIGHTNESS_DOWN"
mediaKeys["f2"]  = "BRIGHTNESS_UP"
mediaKeys["f5"]  = "ILLUMINATION_DOWN"
mediaKeys["f6"]  = "ILLUMINATION_UP"
mediaKeys["f7"]  = "PREVIOUS"
mediaKeys["f8"]  = "PLAY"
mediaKeys["f9"]  = "NEXT"
mediaKeys["f10"] = "MUTE"
mediaKeys["f11"] = "SOUND_DOWN"
mediaKeys["f12"] = "SOUND_UP"

for key, action in pairs(mediaKeys) do
  local event = require("hs.eventtap").event
  k:bind({}, key, function()
    k.triggered = true
    event.newSystemKeyEvent(action, true):post()
  end, function()
    event.newSystemKeyEvent(action, false):post()
  end, function()
    event.newSystemKeyEvent(action, true):post()
    hs.timer.usleep(50000)
    event.newSystemKeyEvent(action, false):post()
  end)
end

-- hyper+delete
k:bind({}, "delete", hyperUp,
  function() hs.eventtap.keyStroke({}, "forwarddelete") end,
  function()
    local event = require("hs.eventtap").event
    event.newKeyEvent({}, "forwarddelete", true):post()
    hs.timer.usleep(50000)
    event.newKeyEvent({}, "forwarddelete", false):post()
  end)

-- shift+delete pipe |
hs.hotkey.bind({"shift"}, "delete", nil,
  function() hs.eventtap.keyStroke({"shift"}, "\\") end,
  function()
    local event = require("hs.eventtap").event
    event.newKeyEvent({"shift"}, "\\", true):post()
    event.newKeyEvent({"shift"}, "\\", false):post()
  end)

-- show desktop
k:bind({}, "j", hyperUp, function()
  hs.eventtap.keyStroke({"shift"}, "f13")
end);

-- show mission control
k:bind({"shift"}, "k", hyperUp, function()
  hs.eventtap.keyStroke({"cmd"}, "f13")
end);

-- fullscreen
k:bind({}, "k", hyperUp, function()
  nextKey = "k"
  resize(hs.window.focusedWindow, {1, 1, 1, 1}, function(win) myWindows[win:id()] = nil end);
end)

-- left
k:bind({}, "h", hyperUp, function()
  nextKey = "h"
  stagger(hs.window.focusedWindow, {1, 1, (2/3), 1}, {1, 1, (1/2), 1});
end)

-- right
k:bind({}, "l", hyperUp, function()
  nextKey = "l"
  stagger(hs.window.focusedWindow, {(1+1/3), 1, (2/3), 1}, {(1+1/2), 1, (1/2), 1});
end)
