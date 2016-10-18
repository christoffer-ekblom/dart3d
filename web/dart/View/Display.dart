import 'dart:html';

class Display {
  Window _screen;
  int _width;
  int _height;

  Window get Screen => _screen;
  int get Width => _width;
  int get Height => _height;

  Display() {
    _screen = window;
    updateWindowSize();
  }

  void updateWindowSize() {
    _width = _screen.innerWidth;
    _height = _screen.innerHeight;
  }
}
