import 'dart:html';
import '../View/Renderer.dart';
import '../View/Content.dart';

abstract class Game {
  Renderer _renderer;
  Content _contentManager;

  Content get ContentManager => _contentManager;

  Game() {
    double startTime = 0.0;

    _renderer = new Renderer();
    _contentManager = new Content();

    ContentManager.load(document.body, _renderer.GetRenderer.domElement);

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
