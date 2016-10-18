import 'dart:html';

abstract class Game {
  Game() {
    double startTime = 0.0;
    initialize();
    this.run(startTime);
  }

  void run(double time) {
    update(time);
    draw(time);
    window.requestAnimationFrame((t) => this.run(t));
  }
}
