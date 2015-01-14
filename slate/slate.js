// TODO: slate - Meta+j throw
// TODO: slate - Meta+k fullscreen
// TODO: slate - Meta+l resize width anchored to right
// TODO: slate - Meta+h resize width anchored to left

var hyper   = ':ctrl;shift;alt;cmd';
var xdotool = '$HOME/.macports/bin/xdotool';

function screen() {
  var info = slate.screen();
  var count = slate.screenCount();

  var res = {
    internal: {
      x: 1280,
      y: 800
    },
    external: {
      x: 1920,
      y: 1080
    }
  };

  var active;

  if (count = 1) {
    active = res.internal;
  } else {
    // TODO: find out what screen we're in
  }

  return {
    id: info.id(),
    height: active.y,
    width: active.x
  };
}

function xmove(x, y) {
  S.shell("/bin/bash -c 'export DISPLAY=:0;" +
    xdotool + " getactivewindow windowmove --relative -- " +
    x + " " + (y - 44) + "'");
}

function xsize() {
  var display = screen();
  S.shell("/bin/bash -c 'export DISPLAY=:0;" +
    xdotool + " getactivewindow windowmove --sync 0 0 windowsize " +
      display.width + " " + display.height + "'");
}

function nudge_x11_workaround(win, x, y) {
  x *= 25;
  y *= 25;

  if (typeof win == "undefined") {
    xmove(x, y);
  } else {
    if (x === 0) x = "+0";
    else if (x > 0) x = "+" + x + "%";
    else x = x + "%";
    if (y == 0) y = "+0";
    else if (y > 0) y = "+" + y + "%";
    else y = y + "%";
    win.doOperation(S.operation("nudge", { "x":x, "y":y }));
  }
}

function fullscreen(win) {
  var fs = slate.operation('move', {
    'x' : 'screenOriginX',
    'y' : 'screenOriginY',
    'width' : 'screenSizeX',
    'height' : 'screenSizeY'
  });

  if (typeof win == "undefined") {
    
  } else {
    win.doOperation(fs);
  }
}

S.bind('k' + hyper,  function(win) { fullscreen(win); });

S.bind('left:cmd;alt',  function(win) { nudge_x11_workaround(win, -1, 0); });
S.bind('right:cmd;alt', function(win) { nudge_x11_workaround(win,  1, 0); });
S.bind('up:cmd;alt',    function(win) { nudge_x11_workaround(win, 0, -1); });
S.bind('down:cmd;alt',  function(win) { nudge_x11_workaround(win, 0,  1); });
