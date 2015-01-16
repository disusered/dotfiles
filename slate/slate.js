// TODO: slate - Meta+h resize Aqua
// TODO: slate - Meta+h resize X
// TODO: slate - Meta+l resize X

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

function xwindow() {
  var object = {};

  var output = S.shell("/bin/bash -c 'export DISPLAY=:0;" +
    xdotool + ' getactivewindow getwindowgeometry --shell' +
    "'", true);

  output = output.split(/[,\n]/);

  output.forEach(function(value) {
    var key,
        keyVal;

    keyVal = value.split(/=/);
    key = keyVal[0];
    value = keyVal[1];

    object[key] = value; 
  });

  return object;
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
  } else {
    fractionWidth = width;
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

function sresize(direction) {
  var win = slate.window();
  var topLeft = win.topLeft();
  var operator = (direction === 'increase') ? '+' : '-';
  var opposite = (operator === '+' ? '-' : '+');

  var resize = slate.operation('resize', {
    'width' : operator + '10%',
    'height' : '+0'
  });
  var nudge = slate.operation('nudge', {
    'x' : opposite + '10%',
    'y' : '+0'
  })
  var sequence = slate.operation("sequence", {
    "operations" : [ [nudge, resize] ]
  });
  return sequence;
}

function anchor(win, side) {
  var push = slate.operation('push', {
    'direction': side,
    'style':     'bar-resize:screenSizeX*0.5'
  });   

  if (typeof win == 'undefined') {
    xsize(side); 
  } else {
    win.doOperation(push);
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

// Fullscreen
S.bind('k' + hyper,  function(win) { fullscreen(win); });

// Throw
S.bind('j' + hyper,  function(win) { changescreen(win); });

// Anchor to sides
S.bind('l' + hyper, function(win) { anchor(win, 'right'); });
S.bind('h' + hyper, function(win) { anchor(win, 'left'); });

// Scale
slate.bind(']' + hyper, sresize('increase'));
slate.bind('[' + hyper, sresize('decrease'));
