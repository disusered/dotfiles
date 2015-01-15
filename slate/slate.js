// TODO: slate - Meta+j throw X
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
    active = res.external;
  }

  return {
    id: info.id(),
    height: active.y,
    width: active.x
  };
}

function xsize(side, fraction) {
  var display = screen();

  var height  = display.height;
  var width   = display.width;

  var fractionWidth;

  var initialHeight = 0;
  var initialWidth = 0;

  var ratio = (fraction) ? fraction : 2;

  if (side !== 'full') {
    fractionWidth = width / ratio;
  }

  if (side && side === 'right') {
    initialWidth = fractionWidth;
  }

  S.shell("/bin/bash -c 'export DISPLAY=:0;" +
    xdotool + ' getactivewindow windowsize --sync ' +
    fractionWidth + ' ' + height + ' windowmove --sync -- ' +
    initialWidth + ' ' + initialHeight +
    "'");
}

function changescreen(win) {
  var throwOp = slate.operation('throw', {
    'screen': 'next'
  });

  if (typeof win == 'undefined') {
    // xthrow(); 
  } else {
    win.doOperation(throwOp);
  }
}

function resize(win, side) {
  var pushSide = slate.operation('push', {
    'direction': side,
    'style':     'bar-resize:screenSizeX/2'
  });   

  if (typeof win == 'undefined') {
    xsize(side); 
  } else {
    win.doOperation(pushSide);
  }
}

function fullscreen(win) {
  var fs = slate.operation('move', {
    'x':      'screenOriginX',
    'y':      'screenOriginY',
    'width':  'screenSizeX',
    'height': 'screenSizeY'
  });

  if (typeof win == 'undefined') {
    xsize('full'); 
  } else {
    win.doOperation(fs);
  }
}

S.bind('k' + hyper,  function(win) { fullscreen(win); });
S.bind('j' + hyper,  function(win) { changescreen(win); });
S.bind('l' + hyper,  function(win) { resize(win, 'right'); });
S.bind('h' + hyper,  function(win) { resize(win, 'left'); });
