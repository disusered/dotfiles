local stagger = require "utils/window-stagger"

-- hyper+delete
hs.hotkey.bind({"cmd","alt","shift","ctrl"}, "delete", nil,
  function() hs.eventtap.keyStroke({}, "forwarddelete") end,
  function()
    local event = require("hs.eventtap").event
    event.newKeyEvent({}, "forwarddelete", true):post()
    hs.timer.usleep(50000)
    event.newKeyEvent({}, "forwarddelete", false):post()
  end)

-- shift+delete pipe |
hs.hotkey.bind({"shift"}, "delete", nil, function() hs.eventtap.keyStroke({"shift"}, "\\") end,
  function()
    local event = require("hs.eventtap").event
    event.newKeyEvent({"shift"}, "\\", true):post()
    event.newKeyEvent({"shift"}, "\\", false):post()
  end)

-- show desktop
hs.hotkey.bind({"cmd","alt","shift","ctrl"}, "j", nil, function()
  hs.eventtap.keyStroke({"shift"}, "f13")
end)

-- show mission control
hs.hotkey.bind({"cmd","alt","shift","ctrl"}, "k", nil, function()
  hs.eventtap.keyStroke({"cmd"}, "f13")
end)

-- full [1, 1/2]
hs.hotkey.bind({"cmd","alt","shift","ctrl"}, "k", nil, function()
  nextKey = "k"
  stagger(hs.window.focusedWindow,
    {1, 1, 1, 1},
    {1, 1, 1, (1/2)})
end)

-- bottom [1/2, 2/3]
hs.hotkey.bind({"cmd","alt","shift","ctrl"}, "j", nil, function()
  nextKey = "j"
  stagger(hs.window.focusedWindow,
    {1, (1+1/2), 1, (1/2)},
    {1, (1+1/3), 1, (2/3)})
end)

-- left [2/3, 1/2]
hs.hotkey.bind({"cmd","alt","shift","ctrl"}, "h", nil, function()
  nextKey = "h"
  stagger(hs.window.focusedWindow,
    {1, 1, (2/3), 1},
    {1, 1, (1/2), 1})
end)

-- right [2/3, 1/2]
hs.hotkey.bind({"cmd","alt","shift","ctrl"}, "l", nil, function()
  nextKey = "l"
  stagger(hs.window.focusedWindow,
    {(1+1/3), 1, (2/3), 1},
    {(1+1/2), 1, (1/2), 1})
end)
