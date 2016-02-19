// Copyright (c) 2016, Zdeněk Mlčoch. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:js';
import 'package:gamee/gamee.dart';

CanvasElement canvas;
CanvasRenderingContext2D ctx;

void main() {
  canvas = querySelector("canvas");
  ctx = canvas.context2D;
  Gamee gamee = new Gamee(context[r"$gameeNative"]);

  gamee.onRestart.add((){
    print("restarted");
  });

  gamee.onPausedChange.add((){
    print("paused ${gamee.paused}");
  });

  drawSomething();
}

void drawSomething(){
  ctx.fillRect(10,10,10,10);
}