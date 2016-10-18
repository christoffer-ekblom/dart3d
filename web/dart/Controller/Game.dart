import 'dart:html';

abstract class Game {
  Game() {
    initialize();
    this.run(0.0);
  }

  void run(double time) {
    update();
    draw();
    window.requestAnimationFrame((t) => this.run(t));
  }
}
