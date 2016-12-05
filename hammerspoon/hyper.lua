-- hyper global variable
k = hs.hotkey.modal.new({}, "F17")

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
