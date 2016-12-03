-- hyper global variable
k = hs.hotkey.modal.new({}, "F17")

-- trigger existing hyper key shortcuts
hyperUp = function() k.triggered = true end
hyperDown = function(key)
  return function() hs.eventtap.keyStroke({"cmd","alt","shift","ctrl"}, key) end
end

k:bind({}, "p", hyperUp, hyperDown("p"));
k:bind({}, "1", hyperUp, hyperDown("1"));
k:bind({}, "c", hyperUp, hyperDown("c"));

-- enter hyper-mode when F18 is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- leave hyper-mode when F18 is pressed, send ESCAPE if no other keys are pressed
releasedF18 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- bind hyper
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)
