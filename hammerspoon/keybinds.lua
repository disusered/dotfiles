-- shift+delete pipe |
hs.hotkey.bind({"shift"}, "delete", nil, function()
  hs.eventtap.keyStroke({"shift"}, "\\")
end)
