// TODO: slate - Refactor
// TODO: slate - Make resize commands work on multiple screens
// TODO: slate - [ resize X
// TODO: slate - ] resize X

slate.configAll({
  defaultToCurrentScreen: true,
  checkDefaultsOnLoad: true,
  nudgePercentOf: 'screenSize',
  resizePercentOf: 'screenSize',
  windowHintsIgnoreHiddenWindows: false,
  windowHintsShowIcons: true,
  windowHintsSpread: true
});

var hyper   = ':ctrl;shift;alt;cmd';
var xdotool = '/usr/local/bin/xdotool';

function screen() {
  var info = slate.screen();
  var count = slate.screenCount();

  var res = {
    internal: {
      x: 1280,
      y: 800 - 45
    },
    external: {
      x: 1920,
      y: 1080 - 36
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

function query() {
  var win     = slate.window();
  var topLeft = win.topLeft();
  var size    = win.rect();

  var display = screen();
  var height  = display.height;
  var width   = display.width;

  return {
    screen: {
      height: height,
      width: width
    },
    window: {
      x: topLeft.x,
      y: topLeft.y,
      height: size.height,
      width: size.width
    }
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

  var finalWidth;
  var finalHeight;

  var initialHeight = 0;
  var initialWidth = 0;

  var ratio = (fraction) ? fraction : 2;

  if (side !== 'full') {
    finalWidth = width / ratio;
  } else {
    finalWidth = width;
  }

  finalHeight = height;

  if (side && side === 'right') {
    initialWidth = finalWidth;
  }

  S.shell("/bin/bash -c 'export DISPLAY=:0;" +
    xdotool + ' getactivewindow windowsize --sync ' +
    finalWidth + ' ' + finalHeight + ' windowmove --sync -- ' +
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

function rightedge(win) {
  var info = query();

  var anchor;
  var operator;

  if (info.window.x === 0) {
    anchor = 'top-left';
    operator = '+';
  } else {
    anchor = 'top-right';
    operator = '-';
  }


  var resize = slate.operation('resize', {
    'width' : operator + '10%',
    'anchor': anchor
  });

  win.doOperation(resize);
}

function leftedge(win) {
  var info   = query();

  var x = info.window.x;
  var y = info.window.y;

  var height = info.window.height;
  var width  = info.window.width;

  var ratio = info.screen.width / 10;

  var anchor;
  var operator;

  if (x === 0) {
    anchor = 'top-left';
    operator = '-';
  } else {
    anchor = 'top-right';
    operator = '+';
  }

  var resize = slate.operation('resize', {
    'width' : operator + '10%',
    'anchor': anchor
  });

  var move = slate.operation('move', {
    'x': x - ratio,
    'y': y,
    'width': width + ratio,
    'height': height
  });

  var push = slate.operation('push', {
    'direction': 'right'
  });   

  var sequence = slate.operation("sequence", {
    "operations" : [ [move, push] ]
  });

  operation = (x === 0) ? resize : sequence;

  win.doOperation(operation);
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
slate.bind(']' + hyper, function(win) { rightedge(win); });
slate.bind('[' + hyper, function(win) { leftedge(win); });
