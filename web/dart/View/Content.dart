class Content {
  List<Content> contentList;

  void load(parent, child) {
    parent.nodes.add(child);
  }
}
