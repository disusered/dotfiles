-- trigger existing hyper key shortcuts
hyperUp = function() k.triggered = true end
hyperDown = function(key)
  return function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, key) end
end

k:bind({}, "p", hyperUp, hyperDown("p"));
k:bind({}, "1", hyperUp, hyperDown("1"));
k:bind({}, "c", hyperUp, hyperDown("c"));

-- shift+delete pipe |
hs.hotkey.bind({"shift"}, "delete", nil, function()
  hs.eventtap.keyStroke({"shift"}, "\\")
end)
