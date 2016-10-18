import 'dart:html';
import '../View/Renderer.dart';
import '../View/ContentManager.dart';

abstract class Game {
  ContentManager _contentManager;

  Game() {
    double startTime = 0.0;
    Element body = document.body;
    Renderer renderer = new Renderer();
    _contentManager = new ContentManager();

    _contentManager.load(body, renderer.GetRenderer.domElement);

    initialize();
    loadContent(_contentManager);

    this.run(startTime);
  }

  void run(double time) {
    update(time);
    draw(time);
    window.requestAnimationFrame((t) => this.run(t));
  }
}
