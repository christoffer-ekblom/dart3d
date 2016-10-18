import 'dart:html';
import '../View/Renderer.dart';
import '../View/Content.dart';

abstract class Game {
  Content _contentManager;

  Content get ContentManager => _contentManager;

  Game() {
    double startTime = 0.0;
    Element body = document.body;
    Renderer renderer = new Renderer();
    _contentManager = new Content();

    ContentManager.load(body, renderer.GetRenderer.domElement);

    initialize();
    loadContent();

    this.run(startTime);
  }

  void run(double time) {
    update(time);
    draw(time);
    window.requestAnimationFrame((t) => this.run(t));
  }
}
