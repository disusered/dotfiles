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
k:bind({}, "delete", hyperUp, function()
  hs.eventtap.keyStroke({}, "forwarddelete")
end);

-- shift+delete pipe |
hs.hotkey.bind({"shift"}, "delete", nil, function()
  hs.eventtap.keyStroke({"shift"}, "\\")
end)
