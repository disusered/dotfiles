// TODO: slate - Meta+j throw
// TODO: slate - Meta+l anchor right x11
// TODO: slate - Meta+l anchor left x11
// TODO: slate - Resize window...

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

  if (count === 1) {
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
    xdotool + ' getactivewindow windowmove --relative -- ' +
    x + ' ' + (y - 44) + "'");
}

function xsize() {
  var display = screen();
  var width;
  var height;

  if (arguments.length > 0) {
  } else {
    width = display.width;
    height = display.height;
  }
  S.shell("/bin/bash -c 'export DISPLAY=:0;" +
    xdotool + ' getactivewindow windowmove --sync 0 0 windowsize ' +
      display.width + ' ' + display.height + "'");
}

function resize(win, side) {
  var pushSide = slate.operation('push', {
    'direction' : side,
    'style' : 'bar-resize:screenSizeX/2'
  });   

  if (typeof win == 'undefined') {
    xsize(2); 
  } else {
    win.doOperation(pushSide);
  }
}

function fullscreen(win) {
  var fs = slate.operation('move', {
    'x' : 'screenOriginX',
    'y' : 'screenOriginY',
    'width' : 'screenSizeX',
    'height' : 'screenSizeY'
  });

  if (typeof win == 'undefined') {
    xsize(); 
  } else {
    win.doOperation(fs);
  }
}

S.bind('k' + hyper,  function(win) { fullscreen(win); });
S.bind('l' + hyper,  function(win) { resize(win, 'right'); });
S.bind('h' + hyper,  function(win) { resize(win, 'left'); });
