import 'package:three/three.dart';
import 'package:three/extras/renderers/canvas_renderer.dart';
import 'Display.dart';

class Renderer {
  CanvasRenderer _renderer;
  Display _display;

  Display get GetDisplay => _display;

  Renderer() {
    _display = new Display();
    _renderer = new CanvasRenderer();
    _renderer.setSize(_display.Width, _display.Height);
  }
}
