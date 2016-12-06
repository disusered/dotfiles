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


-- hyper+delete
k:bind({}, "delete", hyperUp, function()
  hs.eventtap.keyStroke({}, "forwarddelete")
end);

-- shift+delete pipe |
hs.hotkey.bind({"shift"}, "delete", nil, function()
  hs.eventtap.keyStroke({"shift"}, "\\")
end)
