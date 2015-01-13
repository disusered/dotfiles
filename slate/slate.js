var hyper   = 'ctrl;shift;alt;cmd';
var xdotool = '$HOME/.macports/bin/xdotool';

function xmove(x, y) {
  S.shell("/bin/bash -c 'export DISPLAY=:0;" +
    xdotool + " getactivewindow windowmove --relative -- " +
    x + " " + (y - 44) + "'");
}

function xsize() {
  // resize
  S.shell("/bin/bash -c 'export DISPLAY=:0;" +
    xdotool + " getactivewindow windowmove 0 0 windowsize --usehints 100% 100%'");
}

function nudge_x11_workaround(win, x, y) {
  x *= 25;
  y *= 25;

  if (typeof win == "undefined") {
    xmove(x, y);
  } else {
    if (x == 0) x = "+0";
    else if (x > 0) x = "+" + x + "%";
    else x = x + "%";
    if (y == 0) y = "+0";
    else if (y > 0) y = "+" + y + "%";
    else y = y + "%";
    win.doOperation(S.operation("nudge", { "x":x, "y":y }));
  }
};

// S.bind("left:cmd;alt",  function(win) { nudge_x11_workaround(win, -1, 0); });
// S.bind("right:cmd;alt", function(win) { nudge_x11_workaround(win,  1, 0); });
// S.bind("up:cmd;alt",    function(win) { nudge_x11_workaround(win, 0, -1); });
// S.bind("down:cmd;alt",  function(win) { nudge_x11_workaround(win, 0,  1); });
