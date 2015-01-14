var hyper   = 'ctrl;shift;alt;cmd';
var xdotool = '$HOME/.macports/bin/xdotool';

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

function screen() {
  var display = slate.screen();
  var rect   = screen.vrect();

  return {
    id: screen.id(),
    topLeftX: rect.x,
    topLeftY: rect.y,
    width: rect.width,
    height: rect.height
  };
}

function xmove(x, y) {
  S.shell("/bin/bash -c 'export DISPLAY=:0;" +
    xdotool + " getactivewindow windowmove --relative -- " +
    x + " " + (y - 44) + "'");
}

function xsize() {
  var display = screen();
  // resize
  S.shell("/bin/bash -c 'export DISPLAY=:0;" +
    xdotool + " getactivewindow windowmove 0 0 windowsize --usehints " +
      display.width + "% " + display.height + "%'");

  slate.log(display);
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

S.bind('left:cmd;alt',  function(win) { nudge_x11_workaround(win, -1, 0); });
S.bind('right:cmd;alt', function(win) { nudge_x11_workaround(win,  1, 0); });
S.bind('up:cmd;alt',    function(win) { nudge_x11_workaround(win, 0, -1); });
S.bind('down:cmd;alt',  function(win) { nudge_x11_workaround(win, 0,  1); });
