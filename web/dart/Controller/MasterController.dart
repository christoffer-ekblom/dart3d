import 'Game.dart';
import '../View/Renderer.dart';

class MasterController extends Game {
  Renderer _renderer;

  void initialize() {
    _renderer = new Renderer();
  }

  void loadContent() {}

  void update(double elapsedTime) {}

  void draw(double elapsedTime) {}
}
