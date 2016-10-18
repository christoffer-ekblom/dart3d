import 'dart:html';
import 'package:three/three.dart';

abstract class Game {
  Game() {
    initialize();
    this.run(0.0);
  }

  function run(double time) {
    update();
    draw();
    window.requestAnimationFrame((t) => this.run(t));
  }
}
