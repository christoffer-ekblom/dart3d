import 'dart:html';

class Display {
  int _width;
  int _height;

  int get Width => _width;
  int get Height => _height;

  Display() {
    updateWindowSize();
  }

  void updateWindowSize() {
    _width = window.innerWidth;
    _height = window.innerHeight;
  }
}
