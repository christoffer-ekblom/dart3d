import 'dart:html';
import 'package:three/extras/renderers/canvas_renderer.dart';
import 'Display.dart';

class Renderer {
  CanvasRenderer _renderer;
  Display _display;

  Display get GetDisplay => _display;
  CanvasRenderer get GetRenderer => _renderer;

  Renderer() {
    _display = new Display();
    _renderer = new CanvasRenderer();
    _renderer.setSize(_display.Width, _display.Height);
    window.onResize.listen(_onWindowResize);
  }

  _onWindowResize(e) {
    _updateWindowSize();
  }

  _updateWindowSize() {
    _display.updateWindowSize();
    _renderer.setSize(_display.Width, _display.Height);
  }
}
