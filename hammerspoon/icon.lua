function createMenubarIcon(uri)
  return hs.image.imageFromPath("~/.hammerspoon/assets/" .. uri):setSize({w=22,h=20});
end
