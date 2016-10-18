class ContentManager {
  List<ContentManager> contentList;

  void load(parent, child) {
    parent.nodes.add(child);
  }
}
