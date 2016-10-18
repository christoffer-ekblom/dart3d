import 'dart:html';

class Display {
  int _width;
  int _height;

  int get Width => _width;
  int get Height => _height;

  Display() {
    _updateWindowSize();
    window.onResize.listen(_onWindowResize);
  }

  _onWindowResize(e) {
    _updateWindowSize();
  }

  _updateWindowSize() {
    _width = window.innerWidth;
    _height = window.innerHeight;
  }
}
